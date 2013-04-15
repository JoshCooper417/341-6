open Ast
open Astlib
(* These flags are set by the driver to indicate which optimizations
 * should be run.  The flag for opt_asm must live in occ.ml. *)
let opt_ast_flag = ref false 
let opt_il_flag = ref false


(* Choose one of the following functions to implement.  You
 * optimization pass should strive to improve the performance 
 * of the generated code. *)

type ctxt = (string * Range.t Ast.const) list

let rec make_context_from_vdecls (vdecls:Range.t vdecl list)(context:ctxt):((Range.t vdecl list)*ctxt) =
  begin match vdecls with
    | h::t -> begin match h.v_init with
	       | Iexp exp -> (* print_endline("Pre-optimized: "^(string_of_exp exp)); *)
		 (* print_endline("and the context is"); *)
		 (* print_context context; *)
		 let new_exp = optimize_exp exp context in
(* print_endline("Post-optimized: "^(string_of_exp new_exp)); *)
			     let new_vdecl =  {v_ty = h.v_ty; v_id = h.v_id;v_init = (Iexp new_exp);} in
		             let new_context_elt =
			       begin match new_exp with
		             | Const const -> 
			       let new_elt = ((snd h.v_id),const) in
					      [new_elt]
			     | _ -> []
	                     end in
			     let (vdecls_t,context_t) = make_context_from_vdecls t (context@new_context_elt) in
			      (new_vdecl::vdecls_t,context_t)
	       | Iarray _ -> let (vdecls_t,context_t) = make_context_from_vdecls t context in
			     (h::vdecls_t,context_t)
	       end
    | []->([],context)
  end

and optimize_exp (exp: Range.t exp)(context:ctxt) : Range.t exp =
  (* print_string("WE ARE HERE: "^(string_of_exp exp)); *)
  begin match exp with
    | Const const -> (* print_endline("const"); *) exp
    | This _ -> (* print_endline("this"); *) exp
    | LhsOrCall lhs_or_call ->(* print_endline("loc" );*)
				       let (l,c_opt) = optimize_lhs_or_call lhs_or_call context in
				       begin match c_opt with
					 |Some c-> (* print_endline(" We did it!"); *) c
					 |None ->(* print_endline(" We didn't do it!"); *)LhsOrCall l
				       end
    | New (typ, exp1, id, exp2) -> (* print_endline("new"); *) let new_e1 = optimize_exp exp1 context in
				   let new_e2 = optimize_exp exp2 context in
				   New (typ, new_e1, id, new_e2)
    | Ctor (cid, elist)-> (* print_endline("ctor"); *) let opt_fun = fun(e) -> optimize_exp e context in 
			  let new_elist = List.map opt_fun elist in
			  Ctor (cid, new_elist)
    | Binop (bop, e1, e2)->
      (* print_endline("binop"); *)
      let new_e1 = optimize_exp e1 context in
      (* print_endline("E1 is: "^string_of_exp new_e1); *)
      let new_e2 = optimize_exp e2 context in
      (* print_endline("E2 is: "^string_of_exp new_e2); *)
      begin match new_e1 with
			      |Const c -> begin match c with
				           | Cint(_, i1) -> begin match new_e2 with
					               |Const (Cint(_,i2)) -> 
							 let cmpresult = Int32.compare i1 i2 in
							 begin match bop with
							     | Plus _-> Const(Cint (Range.norange, (Int32.add i1 i2)))
							     | Times  _-> Const(Cint (Range.norange, (Int32.mul i1 i2)))
							     | Minus  _-> Const(Cint (Range.norange, (Int32.sub i1 i2)))
							     | Eq  _-> if (cmpresult = 0) then (Const (Cbool(Range.norange, (true))))
							       else (Const (Cbool(Range.norange, (false))))
							     | Neq  _-> if (cmpresult <> 0) then (Const (Cbool(Range.norange, (true)))) 
							       else (Const (Cbool(Range.norange, (false))))
							     | Lt  _-> if (cmpresult < 0) then (Const (Cbool(Range.norange, (true))))
							       else (Const (Cbool(Range.norange, (false))))
							     | Lte _-> if (cmpresult <= 0) then	(Const (Cbool(Range.norange, (true))))
							       else (Const (Cbool(Range.norange, (false))))
							     | Gt  _->  if (cmpresult > 0) then (Const (Cbool(Range.norange, (true)))) 
							       else (Const (Cbool(Range.norange, (false))))
							     | Gte  _-> if (cmpresult >= 0) then (Const (Cbool(Range.norange, (true)))) 
							       else (Const (Cbool(Range.norange, (false))))
							     | IOr  _-> Const(Cint(Range.norange, (Int32.logor i1 i2)))
							     | Shl  _-> Const(Cint (Range.norange, (Int32.shift_left i1 (Int32.to_int i2))))
							     | Shr  _->  Const(Cint (Range.norange, (Int32.shift_right_logical i1 (Int32.to_int i2))))
							     | Sar  _-> Const(Cint (Range.norange, (Int32.shift_right i1 (Int32.to_int i2))))
							 end
						       |_-> Binop (bop, e1, e2)
						     end
					   | Cbool(_,b1) -> begin match new_e2 with
					               |Const (Cbool(_,b2)) -> 
							 begin match bop with
							     | And _ -> if b1 && b2 then (Const (Cbool(Range.norange, (true))))
							       else (Const (Cbool(Range.norange, (false))))
							     | Or _ -> if b1 || b2 then (Const (Cbool(Range.norange, (true))))
							       else (Const (Cbool(Range.norange, (false))))
							  end
						       |_-> Binop (bop, e1, e2)
						     end
					   | Cstring(_, s) ->Binop (bop, e1, e2)
			                  end
			      | _-> Binop (bop, e1, e2)
			     end 
			     
    | Unop (uop, exp)-> (* print_endline("unop"); *) let new_exp =  optimize_exp exp context in
			 begin match new_exp with
			      |Const c -> begin match c with
				            | Cint(_, i) -> begin match uop with
						              |Neg _->Const(Cint(Range.norange, (Int32.neg i)))
							      |Lognot _->Const(Cint(Range.norange, (Int32.lognot i)))
							      |_->failwith "int unop must be neg or lognot"
					                     end
					    | Cbool(_,b)->begin match uop with
						              |Not _-> (Const (Cbool(Range.norange, (not b))))
							      |_->failwith "bool unop must be not"
					                   end
					    | Cstring(_, s) -> Unop(uop, new_exp)
					   end
			      | _ -> Unop (uop, new_exp)
			 end
			
end

and optimize_lhs_or_call (l:Range.t lhs_or_call) (context:ctxt) : Range.t lhs_or_call * Range.t exp option =
  begin match l with
    | Call call -> (Call (optimize_call call context),None)
    | Lhs lhs -> begin match lhs with
	          | Var v -> 
		    let opt =
			       let lookup = try Some (List.assoc (snd v) context)
			      with Not_found -> (* print_endline("Not found!"); *) None in
		     begin match lookup with
		       |Some c -> begin match c with
		                  | Cint(_, i) ->(l,Some (Const(Cint(Range.norange, i))))
				  | Cbool(_,b)->(l, Some(Const(Cbool(Range.norange, b))))
				  | Cstring(_, s) ->(l, Some(Const(Cstring(Range.norange, s))))
				  | Cnull _ ->(l,Some(Const(Cnull(Range.norange))))
				 end
		       |None -> (l,None)
		     end in
				opt
		  | Path path -> begin match path with
		                     | ThisId _-> (l,None)
				     | PathId (lhs_or_call,id) ->
				       let (recurse,_) = optimize_lhs_or_call lhs_or_call context in
				      (Lhs (Path (PathId (recurse,id))),None)
		  end
		   | Index (lhs_or_call,exp)->
		     let (recurse,_) = optimize_lhs_or_call lhs_or_call context in
		     let new_exp = optimize_exp exp context in
		     (Lhs (Index(recurse,new_exp)),None)
		  end
 
  end 


and optimize_call (call:Range.t call)(context:ctxt) :Range.t call = 
  let map_fun = fun(e) -> optimize_exp e context in
  begin match call with
    |Func(id, elist)-> let new_elist = List.map map_fun elist in Func(id, new_elist)
    |SuperMethod(id,elist) ->let new_elist = List.map map_fun elist in SuperMethod(id, new_elist)
    |PathMethod(path,elist)-> let new_elist = List.map map_fun elist in 
			      let new_path_lhs =
				let (l,c_opt) = optimize_lhs_or_call ((Lhs(Path(path)))) context in
				(* begin match c_opt with *)
				(*   |Some c->c *)
				(*   |None -> l *)
				(* end in *)
				l in
			      let new_path =  begin match new_path_lhs with
				                | Lhs(Path p) -> p 
                                                |_-> failwith "expected a path"
			                      end in
			      PathMethod(new_path, new_elist)
  end 

and get_context_poss (id)(context):ctxt=
  try let var_entry_opt = Some(List.assoc (snd id) context) in
      List.remove_assoc (snd id) context
  with Not_found -> context

and work_stmt (stmt: Range.t stmt)(context:ctxt) : Range.t stmt*ctxt =
  begin match stmt with
	      | Assign (lhs,exp) ->  let new_context =  
				       begin match lhs with
		                         |Var id -> get_context_poss id context
					 |_ -> context
	                              end in
				     let new_lhs_or_call =
				       let (l,c_opt) = optimize_lhs_or_call (Lhs lhs) context in
				       l in
				       (* begin match c_opt with *)
				       (* 	 |Some c->c *)
				       (* 	 |None -> l *)
				       (* end in *)
				    let new_exp = optimize_exp exp context in
				    let new_lhs =  begin match new_lhs_or_call with
				                | Lhs l -> l 
                                                |_-> failwith "expected a path"
			                      end in
				    ((Assign(new_lhs, new_exp)), new_context)						
	      | Scall (call) -> ((Scall(optimize_call call context)), context)
	      | Fail (exp) ->   let new_exp = optimize_exp exp context in 
				((Fail(new_exp)), context)
	      | If (exp,stmt,stmt_opt) -> let new_exp = optimize_exp exp context in
		                          let new_if_stmt = fst(work_stmt stmt context) in
					  let new_else_stmt_opt = begin match stmt_opt with
					                          | None -> None
								  | Some so -> Some (fst(work_stmt so context))
                                                                  end in
					  (If(new_exp, new_if_stmt, new_else_stmt_opt), context)
	      | IfNull (r,id,exp,stmt,stmt_opt) -> let new_exp = optimize_exp exp context in
						   let new_stmt = fst(work_stmt stmt context) in
						   let new_stmt_opt = begin match stmt_opt with
					                          | None -> None
								  | Some so -> Some  (fst(work_stmt so context))
                                                                  end in
					           (* (IfNull(r, id, new_exp, new_stmt, new_stmt_opt), context) *)
						   (*WE NEED TO FIX THIS*)
						  (IfNull (r,id,exp,stmt,stmt_opt),context)
	      | Cast (cid,id,exp,stmt,stmt_opt)-> let new_exp = optimize_exp exp context in
						  let new_stmt = fst(work_stmt stmt context) in
						  let new_stmt_opt = begin match stmt_opt with
					                          | None -> None
								  | Some so -> Some (fst(work_stmt so context))
                                                                  end in
					           (* (Cast(cid, id, new_exp, new_stmt, new_stmt_opt), context) *)
						  (*WE NEED TO FIX THIS*)
						     (Cast (cid,id,exp,stmt,stmt_opt),context)
	      | While (exp,stmt)-> let new_exp = optimize_exp exp context in
				   let new_stmt = fst(work_stmt stmt context) in
				   (While(new_exp, new_stmt), context)
	      | For (vdecls,opt_exp,stmt_opt,stmt)-> let new_exp_opt =  begin match opt_exp with
					                          | None -> None
								  | Some eo -> Some (optimize_exp eo context)
                                                                  end in
						     let new_stmt_opt = begin match stmt_opt with
					                          | None -> None
								  | Some so -> Some (fst(work_stmt so context))
                                                                  end in
						     let new_stmt = fst(work_stmt stmt context) in
						     
						     (For (vdecls, new_exp_opt, new_stmt_opt, new_stmt), context)
	      | Block block -> ((Block(fst (optimize_block block))), context) (* block *)
	      end
and work_stmts (stmts: Range.t stmts)(context:ctxt) : Range.t stmts * ctxt =
  begin match stmts with
    | h::t-> let (new_stmt, new_context) = (work_stmt h context) in 
	    ((new_stmt)::(fst (work_stmts t new_context)),new_context)
    | []->([],context)
  end

and print_context(context:ctxt):unit=
  begin match context with
    |h::t->print_endline(fst(h));print_context t
    |[]->()
  end

and optimize_block (block:Range.t Ast.block) : Range.t Ast.block * ctxt = 
  let (vdecls,stmts) = block in
  let (new_vdecls,context1) = make_context_from_vdecls vdecls [] in
  (* print_endline("THE CONTEXT IS: \n\n"); *)
  (* print_context context1; *)
  let (new_stmts,context2) = work_stmts stmts context1 in
  ((new_vdecls,new_stmts),context2)


let work_prog_elt (gdecl:Range.t Ast.gdecl)  : (Range.t Ast.gdecl) =
  begin match gdecl with
    | Ast.Gvdecl gvdecl -> gdecl
    | Ast.Gfdecl (typ_opt, id, args, block, exp_opt) -> 
      let (new_block,context) = optimize_block block in
      let new_exp_opt = 
	begin match exp_opt with
	  | Some e -> Some (optimize_exp e [])
	  | None -> None
	end in
       Ast.Gfdecl (typ_opt, id, args, new_block, new_exp_opt)
    | Ast.Gefdecl gefdecl -> gdecl
      (* Don't optimize external function *)
    | Ast.Gcdecl (cid,cid_opt,fields,ctor,fdecls) -> gdecl (*WE NEED TO FIX THIS*)
  end

let rec work_prog  (prog:Range.t Ast.prog): (Range.t Ast.prog) =
  begin match prog with
    |h::t->(work_prog_elt h)::work_prog t
    |[]-> []
  end

let rec print_program (prog:Range.t Ast.prog) : unit =
  begin match prog with
    |h::t-> begin match h with 
 	     | Ast.Gvdecl gvdecl -> print_endline("GVDECL")
    	     | Ast.Gfdecl (typ_opt, id, args, block, exp_opt) ->
	       print_endline("Gfdecl: Id: "^(snd id)^
				"\nBlock: "^(string_of_block block))
	     | Ast.Gefdecl _ ->()
	     | Ast.Gcdecl gcdecl -> print_endline("Gcdecl")
    end; print_program t
    |[]->()
  end

let opt_ast (prog:Range.t Ast.prog) : (Range.t Ast.prog) = 
  (* let context : (Range.t Ast.id * Range.t Ast.const) list = [] in *)
  (* work_prog prog *)
  (* print_string("\n\n\n\n\nPROGRAM: \n"^(Astlib.string_of_prog prog)^"\nEND PROGRAM\n\n"); *)
  (* print_endline("\n\n\n\nPrinting the program:\n\n\n\n"); *)
  (* print_program prog; *)
  (* print_endline("\n\n\n\nDone printing the program\n\n"); *)
  prog

let opt_il (prog:Ll.prog) : (Ll.prog) = 
  (* currently just the identity transformation *)
  Lllib.write_prog_to_file "not_optimized" prog;
  prog

let opt_asm (prog:Cunit.cunit) : (Cunit.cunit) = 
  (* currently just the identity transformation *)
  prog

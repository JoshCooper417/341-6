open Ast
open Astlib
(* These flags are set by the driver to indicate which optimizations
 * should be run.  The flag for opt_asm must live in occ.ml. *)
let opt_ast_flag = ref false 
let opt_il_flag = ref false


(* Choose one of the following functions to implement.  You
 * optimization pass should strive to improve the performance 
 * of the generated code. *)

type ctxt = (Range.t Ast.id * Range.t Ast.const) list

let rec make_context_from_vdecls (vdecls:Range.t vdecl list)(context:ctxt):ctxt =
  begin match vdecls with
    | h::t -> begin match h.v_init with
	       | Iexp exp ->begin match exp with
		             | Const const -> let new_elt = (h.v_id,const) in
					      make_context_from_vdecls t (new_elt::context)
			     | _ -> make_context_from_vdecls t context
	                    end
	       | Iarray _ -> make_context_from_vdecls t context
	       end
    | []->context
  end


let rec optimize_exp (exp: Range.t exp)(context:ctxt) : Range.t exp =
  begin match exp with
    | Const const -> exp
    | This _ -> exp
    | LhsOrCall  lhs_or_call -> failwith ""(* left-hand sides or calls *)
    | New (typ, exp1, id, exp2) -> failwith ""(* new array creation *)
    | Ctor (cid, elist)-> failwith ""
    | Binop (bop, e1, e2)-> failwith ""(* binary arithmetic *)
    | Unop (uop, exp)-> failwith "" (* unary arithmetic *)
    |_ -> failwith ""
end

and optimize_lhs_or_call (l:Range.t lhs_or_call) (context:ctxt) : Range.t lhs_or_call =
  begin match l with
    | Call call -> Call (optimize_call call context)
    | Lhs lhs -> begin match lhs with
	          | Var _ -> l
		  | Path path -> begin match path with
		                     | ThisId _-> l
				     | PathId (lhs_or_call,id) ->
				      Lhs (Path (PathId ((optimize_lhs_or_call lhs_or_call context),id)))
				      end
		  end
 
  end 


and optimize_call (call:Range.t call)(context:ctxt) :Range.t call = 
  let map_fun = fun(e) -> optimize_exp e context in
  begin match call with
    |Func(id, elist)-> let new_elist = List.map map_fun elist in Func(id, new_elist)
    |SuperMethod(id,elist) ->let new_elist = List.map map_fun elist in SuperMethod(id, new_elist)
    |PathMethod(path,elist)-> let new_elist = List.map map_fun elist in 
			      let new_path_lhs = optimize_lhs_or_call ((Lhs(Path(path)))) context in
			      let new_path =  begin match new_path_lhs with
				                | Lhs(Path p) -> p 
                                                |_-> failwith "expected a path"
			                      end in
			      PathMethod(new_path, new_elist)
  end 

and work_stmt (stmt: Range.t stmt)(context:ctxt) : Range.t stmt*ctxt =
  begin match stmt with
	      | Assign (lhs,exp) ->  let new_context =  begin match lhs with
		                         |Var id -> try  
						      let var_entry_opt = Some(List.assoc id context) in
						      List.remove_assoc id context
					       	   
				                    with Not_found -> context
					  |_-> context
	                              end in
		                    let new_lhs_or_call = optimize_lhs_or_call (Lhs lhs) context in 
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
					           (IfNull(r, id, new_exp, new_stmt, new_stmt_opt), context)
	      | Cast (cid,id,exp,stmt,stmt_opt)-> let new_exp = optimize_exp exp context in
						  let new_stmt = fst(work_stmt stmt context) in
						  let new_stmt_opt = begin match stmt_opt with
					                          | None -> None
								  | Some so -> Some (fst(work_stmt so context))
                                                                  end in
					           (Cast(cid, id, new_exp, new_stmt, new_stmt_opt), context)
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
	      | Block block -> ((Block(optimize_block block)), context) (* block *)
	      end
and work_stmts (stmts: Range.t stmts)(context:ctxt) : Range.t stmts =
  begin match stmts with
    | h::t-> let (new_stmt, new_context) = (work_stmt h context) in 
	     (new_stmt)::(work_stmts t new_context) 
    | []->[]
    end

and optimize_block (block:Range.t Ast.block) : Range.t Ast.block = 
  let (vdecls,stmts) = block in
  let context = make_context_from_vdecls vdecls [] in
  
  failwith""


let work_prog_elt (gdecl:Range.t Ast.gdecl)  : (Range.t Ast.gdecl) =
  begin match gdecl with
    | Ast.Gvdecl gvdecl -> gdecl
    | Ast.Gfdecl (typ_opt, id, args, block, exp_opt) -> failwith ""
    | Ast.Gefdecl gefdecl -> gdecl
      (* Don't optimize external function *)
    | Ast.Gcdecl gcdecl -> failwith ""
  end

let rec work_prog  (prog:Range.t Ast.prog): (Range.t Ast.prog) =
  begin match prog with
    |h::t->(work_prog_elt h)::work_prog t
    |[]-> failwith ""
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
(*   work_prog prog context *)
  (* print_string("\n\n\n\n\nPROGRAM: \n"^(Astlib.string_of_prog prog)^"\nEND PROGRAM\n\n"); *)
  print_endline("\n\n\n\nPrinting the program:\n\n\n\n");
  print_program prog;
  print_endline("\n\n\n\nDone printing the program\n\n");
  prog

let opt_il (prog:Ll.prog) : (Ll.prog) = 
  (* currently just the identity transformation *)
  prog

let opt_asm (prog:Cunit.cunit) : (Cunit.cunit) = 
  (* currently just the identity transformation *)
  prog

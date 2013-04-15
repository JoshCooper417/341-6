%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare void @print_bool(i1)
declare void @print_int(i32)
declare void @print_string(i8*)
declare i32 @length_of_string(i8*)
declare i8* @string_cat(i8*, i8*)
declare i8* @string_of_int(i32)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
@_const_str408.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str408 = alias bitcast([ 2 x i8 ]* @_const_str408.str. to i8*)@_const_str407.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str407 = alias bitcast([ 7 x i8 ]* @_const_str407.str. to i8*)@_A_vtable406 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable405, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable405 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh651:
  ret void
}


define i32 @program (i32 %argc2285, { i32, [ 0 x i8* ] }* %argv2283){
__fresh650:
  %argc_slot2286 = alloca i32
  store i32 %argc2285, i32* %argc_slot2286
  %argv_slot2284 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2283, { i32, [ 0 x i8* ] }** %argv_slot2284
  %mem_ptr2287 = call i32* @oat_malloc ( i32 12 )
  %obj2288 = bitcast i32* %mem_ptr2287 to %A* 
  %new_obj2289 = call %A* @_A_ctor ( %A* %obj2288, i32 11 )
  %ret2290 = call i32 @try_ifnull ( %A* %new_obj2289 )
  ret i32 %ret2290
}


define i32 @try_ifnull (%A* %a2273){
__fresh647:
  %a_slot2274 = alloca %A*
  store %A* %a2273, %A** %a_slot2274
  %vdecl_slot2275 = alloca i32
  store i32 0, i32* %vdecl_slot2275
  %lhs_or_call2276 = load %A** %a_slot2274
  %ifnull_slot2277 = alloca %A*
  store %A* %lhs_or_call2276, %A** %ifnull_slot2277
  %ifnull_guard2278 = icmp ne %A* %lhs_or_call2276, null
  br i1 %ifnull_guard2278, label %__then646, label %__else645

__fresh648:
  br label %__then646

__then646:
  %lhs_or_call2279 = load %A** %ifnull_slot2277
  %path2280 = getelementptr %A* %lhs_or_call2279, i32 0, i32 2
  %lhs_or_call2281 = load i32* %path2280
  store i32 %lhs_or_call2281, i32* %vdecl_slot2275
  br label %__merge644

__fresh649:
  br label %__else645

__else645:
  store i32 12, i32* %vdecl_slot2275
  br label %__merge644

__merge644:
  %lhs_or_call2282 = load i32* %vdecl_slot2275
  ret i32 %lhs_or_call2282
}


define %A* @_A_ctor (%A* %_this1, i32 %x2265){
__fresh643:
  %x_slot2266 = alloca i32
  store i32 %x2265, i32* %x_slot2266
  %cast_op2267 = bitcast %A* %_this1 to %Object* 
  %dummy2268 = call %Object* @_Object_ctor ( %Object* %cast_op2267 )
  %path2269 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str408, i8** %path2269
  %vt_slot2270 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable406, %_A_vtable** %vt_slot2270
  %path2271 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2272 = load i32* %x_slot2266
  store i32 %lhs_or_call2272, i32* %path2271
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh642:
  %path2263 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2264 = load i8** %path2263
  ret i8* %lhs_or_call2264
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh641:
  %path2261 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str407, i8** %path2261
  %vt_slot2262 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable405, %_Object_vtable** %vt_slot2262
  ret %Object* %_this1
}



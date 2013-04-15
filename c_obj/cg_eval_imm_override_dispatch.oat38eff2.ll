%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a419 = global %A* zeroinitializer, align 4		; initialized by @a419.init420
@_const_str418.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str418 = alias bitcast([ 2 x i8 ]* @_const_str418.str. to i8*)@_const_str417.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str417 = alias bitcast([ 2 x i8 ]* @_const_str417.str. to i8*)@_const_str416.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str416 = alias bitcast([ 7 x i8 ]* @_const_str416.str. to i8*)@_B_vtable415 = private constant %_B_vtable {%_A_vtable* @_A_vtable414, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable414 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable413, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable413 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh671:
  call void @a419.init420(  )
  ret void
}


define i32 @program (i32 %argc2345, { i32, [ 0 x i8* ] }* %argv2343){
__fresh670:
  %argc_slot2346 = alloca i32
  store i32 %argc2345, i32* %argc_slot2346
  %argv_slot2344 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2343, { i32, [ 0 x i8* ] }** %argv_slot2344
  %lhs_or_call2347 = load %A** @a419
  %vtmp2349 = getelementptr %A* %lhs_or_call2347, i32 0, i32 0
  %vtable2348 = load %_A_vtable** %vtmp2349
  %fptmp2350 = getelementptr %_A_vtable* %vtable2348, i32 0, i32 2
  %method2351 = load i32 (%A*, i32)** %fptmp2350
  %ret2352 = call i32 %method2351 ( %A* %lhs_or_call2347, i32 3 )
  ret i32 %ret2352
}


define void @a419.init420 (){
__fresh669:
  %mem_ptr2339 = call i32* @oat_malloc ( i32 8 )
  %obj2340 = bitcast i32* %mem_ptr2339 to %B* 
  %new_obj2341 = call %B* @_B_ctor ( %B* %obj2340 )
  %cast_op2342 = bitcast %B* %new_obj2341 to %A* 
  store %A* %cast_op2342, %A** @a419
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2335){
__fresh668:
  %x_slot2336 = alloca i32
  store i32 %x2335, i32* %x_slot2336
  %lhs_or_call2337 = load i32* %x_slot2336
  %bop2338 = add i32 %lhs_or_call2337, 2
  ret i32 %bop2338
}


define %B* @_B_ctor (%B* %_this1){
__fresh667:
  %cast_op2331 = bitcast %B* %_this1 to %A* 
  %dummy2332 = call %A* @_A_ctor ( %A* %cast_op2331 )
  %path2333 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str418, i8** %path2333
  %vt_slot2334 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable415, %_B_vtable** %vt_slot2334
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2327){
__fresh666:
  %x_slot2328 = alloca i32
  store i32 %x2327, i32* %x_slot2328
  %lhs_or_call2329 = load i32* %x_slot2328
  %bop2330 = add i32 %lhs_or_call2329, 1
  ret i32 %bop2330
}


define %A* @_A_ctor (%A* %_this1){
__fresh665:
  %cast_op2323 = bitcast %A* %_this1 to %Object* 
  %dummy2324 = call %Object* @_Object_ctor ( %Object* %cast_op2323 )
  %path2325 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str417, i8** %path2325
  %vt_slot2326 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable414, %_A_vtable** %vt_slot2326
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh664:
  %path2321 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2322 = load i8** %path2321
  ret i8* %lhs_or_call2322
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh663:
  %path2319 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str416, i8** %path2319
  %vt_slot2320 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable413, %_Object_vtable** %vt_slot2320
  ret %Object* %_this1
}



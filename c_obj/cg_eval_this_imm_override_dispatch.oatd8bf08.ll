%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%B*)* }
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
@_const_str456.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str456 = alias bitcast([ 2 x i8 ]* @_const_str456.str. to i8*)@_const_str455.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str455 = alias bitcast([ 2 x i8 ]* @_const_str455.str. to i8*)@_const_str454.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str454 = alias bitcast([ 7 x i8 ]* @_const_str454.str. to i8*)@_B_vtable453 = private constant %_B_vtable {%_A_vtable* @_A_vtable452, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%B*)* @_B_call}, align 4
@_A_vtable452 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable451, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable451 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh714:
  ret void
}


define i32 @program (i32 %argc2514, { i32, [ 0 x i8* ] }* %argv2512){
__fresh713:
  %argc_slot2515 = alloca i32
  store i32 %argc2514, i32* %argc_slot2515
  %argv_slot2513 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2512, { i32, [ 0 x i8* ] }** %argv_slot2513
  %mem_ptr2516 = call i32* @oat_malloc ( i32 8 )
  %obj2517 = bitcast i32* %mem_ptr2516 to %B* 
  %new_obj2518 = call %B* @_B_ctor ( %B* %obj2517 )
  %vdecl_slot2519 = alloca %B*
  store %B* %new_obj2518, %B** %vdecl_slot2519
  %lhs_or_call2520 = load %B** %vdecl_slot2519
  %vtmp2522 = getelementptr %B* %lhs_or_call2520, i32 0, i32 0
  %vtable2521 = load %_B_vtable** %vtmp2522
  %fptmp2523 = getelementptr %_B_vtable* %vtable2521, i32 0, i32 3
  %method2524 = load i32 (%B*)** %fptmp2523
  %ret2525 = call i32 %method2524 ( %B* %lhs_or_call2520 )
  ret i32 %ret2525
}


define i32 @_B_call (%B* %_this1){
__fresh712:
  %vtmp2508 = getelementptr %B* %_this1, i32 0, i32 0
  %vtable2507 = load %_B_vtable** %vtmp2508
  %fptmp2509 = getelementptr %_B_vtable* %vtable2507, i32 0, i32 2
  %method2510 = load i32 (%B*, i32)** %fptmp2509
  %ret2511 = call i32 %method2510 ( %B* %_this1, i32 3 )
  ret i32 %ret2511
}


define i32 @_B_over (%B* %_this1, i32 %x2503){
__fresh711:
  %x_slot2504 = alloca i32
  store i32 %x2503, i32* %x_slot2504
  %lhs_or_call2505 = load i32* %x_slot2504
  %bop2506 = add i32 %lhs_or_call2505, 2
  ret i32 %bop2506
}


define %B* @_B_ctor (%B* %_this1){
__fresh710:
  %cast_op2499 = bitcast %B* %_this1 to %A* 
  %dummy2500 = call %A* @_A_ctor ( %A* %cast_op2499 )
  %path2501 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str456, i8** %path2501
  %vt_slot2502 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable453, %_B_vtable** %vt_slot2502
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2495){
__fresh709:
  %x_slot2496 = alloca i32
  store i32 %x2495, i32* %x_slot2496
  %lhs_or_call2497 = load i32* %x_slot2496
  %bop2498 = add i32 %lhs_or_call2497, 1
  ret i32 %bop2498
}


define %A* @_A_ctor (%A* %_this1){
__fresh708:
  %cast_op2491 = bitcast %A* %_this1 to %Object* 
  %dummy2492 = call %Object* @_Object_ctor ( %Object* %cast_op2491 )
  %path2493 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str455, i8** %path2493
  %vt_slot2494 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable452, %_A_vtable** %vt_slot2494
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh707:
  %path2489 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2490 = load i8** %path2489
  ret i8* %lhs_or_call2490
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh706:
  %path2487 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str454, i8** %path2487
  %vt_slot2488 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable451, %_Object_vtable** %vt_slot2488
  ret %Object* %_this1
}



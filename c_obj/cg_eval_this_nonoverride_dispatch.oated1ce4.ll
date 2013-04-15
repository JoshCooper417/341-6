%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%C*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%A*, i32)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)*, i32 (%A*, i32)*, i32 (%A*)* }
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
@a473 = global %A* zeroinitializer, align 4		; initialized by @a473.init474
@_const_str472.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str472 = alias bitcast([ 2 x i8 ]* @_const_str472.str. to i8*)@_const_str471.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str471 = alias bitcast([ 2 x i8 ]* @_const_str471.str. to i8*)@_const_str470.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str470 = alias bitcast([ 2 x i8 ]* @_const_str470.str. to i8*)@_const_str469.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str469 = alias bitcast([ 7 x i8 ]* @_const_str469.str. to i8*)@_C_vtable468 = private constant %_C_vtable {%_B_vtable* @_B_vtable467, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%C*)* @_C_call, i32 (%C*, i32)* @_C_notover}, align 4
@_B_vtable467 = private constant %_B_vtable {%_A_vtable* @_A_vtable466, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%A*, i32)* @_A_foo, i32 (%B*)* @_B_call}, align 4
@_A_vtable466 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable465, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over, i32 (%A*, i32)* @_A_foo, i32 (%A*)* @_A_call}, align 4
@_Object_vtable465 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh740:
  call void @a473.init474(  )
  ret void
}


define i32 @program (i32 %argc2618, { i32, [ 0 x i8* ] }* %argv2616){
__fresh739:
  %argc_slot2619 = alloca i32
  store i32 %argc2618, i32* %argc_slot2619
  %argv_slot2617 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2616, { i32, [ 0 x i8* ] }** %argv_slot2617
  %lhs_or_call2620 = load %A** @a473
  %vtmp2622 = getelementptr %A* %lhs_or_call2620, i32 0, i32 0
  %vtable2621 = load %_A_vtable** %vtmp2622
  %fptmp2623 = getelementptr %_A_vtable* %vtable2621, i32 0, i32 4
  %method2624 = load i32 (%A*)** %fptmp2623
  %ret2625 = call i32 %method2624 ( %A* %lhs_or_call2620 )
  ret i32 %ret2625
}


define void @a473.init474 (){
__fresh738:
  %mem_ptr2612 = call i32* @oat_malloc ( i32 8 )
  %obj2613 = bitcast i32* %mem_ptr2612 to %C* 
  %new_obj2614 = call %C* @_C_ctor ( %C* %obj2613 )
  %cast_op2615 = bitcast %C* %new_obj2614 to %A* 
  store %A* %cast_op2615, %A** @a473
  ret void
}


define i32 @_C_call (%C* %_this1){
__fresh737:
  %vtmp2607 = getelementptr %C* %_this1, i32 0, i32 0
  %vtable2606 = load %_C_vtable** %vtmp2607
  %fptmp2608 = getelementptr %_C_vtable* %vtable2606, i32 0, i32 3
  %method2609 = load i32 (%A*, i32)** %fptmp2608
  %cast_op2610 = bitcast %C* %_this1 to %A* 
  %ret2611 = call i32 %method2609 ( %A* %cast_op2610, i32 3 )
  ret i32 %ret2611
}


define i32 @_C_notover (%C* %_this1, i32 %x2602){
__fresh736:
  %x_slot2603 = alloca i32
  store i32 %x2602, i32* %x_slot2603
  %lhs_or_call2604 = load i32* %x_slot2603
  %bop2605 = add i32 %lhs_or_call2604, 1
  ret i32 %bop2605
}


define %C* @_C_ctor (%C* %_this1){
__fresh735:
  %cast_op2598 = bitcast %C* %_this1 to %B* 
  %dummy2599 = call %B* @_B_ctor ( %B* %cast_op2598 )
  %path2600 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str472, i8** %path2600
  %vt_slot2601 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable468, %_C_vtable** %vt_slot2601
  ret %C* %_this1
}


define i32 @_B_call (%B* %_this1){
__fresh734:
  ret i32 0
}


define i32 @_B_over (%B* %_this1, i32 %x2594){
__fresh733:
  %x_slot2595 = alloca i32
  store i32 %x2594, i32* %x_slot2595
  %lhs_or_call2596 = load i32* %x_slot2595
  %bop2597 = add i32 %lhs_or_call2596, 2
  ret i32 %bop2597
}


define %B* @_B_ctor (%B* %_this1){
__fresh732:
  %cast_op2590 = bitcast %B* %_this1 to %A* 
  %dummy2591 = call %A* @_A_ctor ( %A* %cast_op2590 )
  %path2592 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str471, i8** %path2592
  %vt_slot2593 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable467, %_B_vtable** %vt_slot2593
  ret %B* %_this1
}


define i32 @_A_call (%A* %_this1){
__fresh731:
  ret i32 0
}


define i32 @_A_foo (%A* %_this1, i32 %x2586){
__fresh730:
  %x_slot2587 = alloca i32
  store i32 %x2586, i32* %x_slot2587
  %lhs_or_call2588 = load i32* %x_slot2587
  %bop2589 = add i32 %lhs_or_call2588, 8
  ret i32 %bop2589
}


define i32 @_A_over (%A* %_this1, i32 %x2582){
__fresh729:
  %x_slot2583 = alloca i32
  store i32 %x2582, i32* %x_slot2583
  %lhs_or_call2584 = load i32* %x_slot2583
  %bop2585 = add i32 %lhs_or_call2584, 1
  ret i32 %bop2585
}


define %A* @_A_ctor (%A* %_this1){
__fresh728:
  %cast_op2578 = bitcast %A* %_this1 to %Object* 
  %dummy2579 = call %Object* @_Object_ctor ( %Object* %cast_op2578 )
  %path2580 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str470, i8** %path2580
  %vt_slot2581 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable466, %_A_vtable** %vt_slot2581
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh727:
  %path2576 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2577 = load i8** %path2576
  ret i8* %lhs_or_call2577
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh726:
  %path2574 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str469, i8** %path2574
  %vt_slot2575 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable465, %_Object_vtable** %vt_slot2575
  ret %Object* %_this1
}



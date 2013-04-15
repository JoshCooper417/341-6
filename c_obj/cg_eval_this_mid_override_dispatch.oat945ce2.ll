%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%B*, i32)*, i32 (%C*, i32)*, i32 (%C*)* }
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
@_const_str464.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str464 = alias bitcast([ 2 x i8 ]* @_const_str464.str. to i8*)@_const_str463.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str463 = alias bitcast([ 2 x i8 ]* @_const_str463.str. to i8*)@_const_str462.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str462 = alias bitcast([ 2 x i8 ]* @_const_str462.str. to i8*)@_const_str461.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str461 = alias bitcast([ 7 x i8 ]* @_const_str461.str. to i8*)@_C_vtable460 = private constant %_C_vtable {%_B_vtable* @_B_vtable459, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over, i32 (%C*, i32)* @_C_notover, i32 (%C*)* @_C_call}, align 4
@_B_vtable459 = private constant %_B_vtable {%_A_vtable* @_A_vtable458, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable458 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable457, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable457 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh725:
  ret void
}


define i32 @program (i32 %argc2562, { i32, [ 0 x i8* ] }* %argv2560){
__fresh724:
  %argc_slot2563 = alloca i32
  store i32 %argc2562, i32* %argc_slot2563
  %argv_slot2561 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2560, { i32, [ 0 x i8* ] }** %argv_slot2561
  %mem_ptr2564 = call i32* @oat_malloc ( i32 8 )
  %obj2565 = bitcast i32* %mem_ptr2564 to %C* 
  %new_obj2566 = call %C* @_C_ctor ( %C* %obj2565 )
  %vdecl_slot2567 = alloca %C*
  store %C* %new_obj2566, %C** %vdecl_slot2567
  %lhs_or_call2568 = load %C** %vdecl_slot2567
  %vtmp2570 = getelementptr %C* %lhs_or_call2568, i32 0, i32 0
  %vtable2569 = load %_C_vtable** %vtmp2570
  %fptmp2571 = getelementptr %_C_vtable* %vtable2569, i32 0, i32 4
  %method2572 = load i32 (%C*)** %fptmp2571
  %ret2573 = call i32 %method2572 ( %C* %lhs_or_call2568 )
  ret i32 %ret2573
}


define i32 @_C_call (%C* %_this1){
__fresh723:
  %vtmp2555 = getelementptr %C* %_this1, i32 0, i32 0
  %vtable2554 = load %_C_vtable** %vtmp2555
  %fptmp2556 = getelementptr %_C_vtable* %vtable2554, i32 0, i32 2
  %method2557 = load i32 (%B*, i32)** %fptmp2556
  %cast_op2558 = bitcast %C* %_this1 to %B* 
  %ret2559 = call i32 %method2557 ( %B* %cast_op2558, i32 3 )
  ret i32 %ret2559
}


define i32 @_C_notover (%C* %_this1, i32 %x2550){
__fresh722:
  %x_slot2551 = alloca i32
  store i32 %x2550, i32* %x_slot2551
  %lhs_or_call2552 = load i32* %x_slot2551
  %bop2553 = add i32 %lhs_or_call2552, 1
  ret i32 %bop2553
}


define %C* @_C_ctor (%C* %_this1){
__fresh721:
  %cast_op2546 = bitcast %C* %_this1 to %B* 
  %dummy2547 = call %B* @_B_ctor ( %B* %cast_op2546 )
  %path2548 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str464, i8** %path2548
  %vt_slot2549 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable460, %_C_vtable** %vt_slot2549
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2542){
__fresh720:
  %x_slot2543 = alloca i32
  store i32 %x2542, i32* %x_slot2543
  %lhs_or_call2544 = load i32* %x_slot2543
  %bop2545 = add i32 %lhs_or_call2544, 2
  ret i32 %bop2545
}


define %B* @_B_ctor (%B* %_this1){
__fresh719:
  %cast_op2538 = bitcast %B* %_this1 to %A* 
  %dummy2539 = call %A* @_A_ctor ( %A* %cast_op2538 )
  %path2540 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str463, i8** %path2540
  %vt_slot2541 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable459, %_B_vtable** %vt_slot2541
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2534){
__fresh718:
  %x_slot2535 = alloca i32
  store i32 %x2534, i32* %x_slot2535
  %lhs_or_call2536 = load i32* %x_slot2535
  %bop2537 = add i32 %lhs_or_call2536, 1
  ret i32 %bop2537
}


define %A* @_A_ctor (%A* %_this1){
__fresh717:
  %cast_op2530 = bitcast %A* %_this1 to %Object* 
  %dummy2531 = call %Object* @_Object_ctor ( %Object* %cast_op2530 )
  %path2532 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str462, i8** %path2532
  %vt_slot2533 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable458, %_A_vtable** %vt_slot2533
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh716:
  %path2528 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2529 = load i8** %path2528
  ret i8* %lhs_or_call2529
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh715:
  %path2526 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str461, i8** %path2526
  %vt_slot2527 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable457, %_Object_vtable** %vt_slot2527
  ret %Object* %_this1
}



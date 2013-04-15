%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o483 = global %Owl* zeroinitializer, align 4		; initialized by @o483.init484
@_const_str482.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str482 = alias bitcast([ 6 x i8 ]* @_const_str482.str. to i8*)@_const_str481.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str481 = alias bitcast([ 4 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str480 = alias bitcast([ 5 x i8 ]* @_const_str480.str. to i8*)@_const_str479.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str479 = alias bitcast([ 3 x i8 ]* @_const_str479.str. to i8*)@_const_str478.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str478 = alias bitcast([ 7 x i8 ]* @_const_str478.str. to i8*)@_Owl_vtable477 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable476, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable476 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable475, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable475 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh754:
  call void @o483.init484(  )
  ret void
}


define i32 @program (i32 %argc2655, { i32, [ 0 x i8* ] }* %argv2653){
__fresh753:
  %argc_slot2656 = alloca i32
  store i32 %argc2655, i32* %argc_slot2656
  %argv_slot2654 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2653, { i32, [ 0 x i8* ] }** %argv_slot2654
  %lhs_or_call2657 = load %Owl** @o483
  %cast_op2658 = bitcast %Owl* %lhs_or_call2657 to %Wl* 
  %ret2659 = call i8* @getNoise ( %Wl* %cast_op2658 )
  call void @print_string( i8* %ret2659 )
  %lhs_or_call2660 = load %Owl** @o483
  %vtmp2662 = getelementptr %Owl* %lhs_or_call2660, i32 0, i32 0
  %vtable2661 = load %_Owl_vtable** %vtmp2662
  %fptmp2663 = getelementptr %_Owl_vtable* %vtable2661, i32 0, i32 5
  %method2664 = load i32 (%Owl*)** %fptmp2663
  %ret2665 = call i32 %method2664 ( %Owl* %lhs_or_call2660 )
  %lhs_or_call2666 = load %Owl** @o483
  %vtmp2668 = getelementptr %Owl* %lhs_or_call2666, i32 0, i32 0
  %vtable2667 = load %_Owl_vtable** %vtmp2668
  %fptmp2669 = getelementptr %_Owl_vtable* %vtable2667, i32 0, i32 3
  %method2670 = load i32 (%Wl*)** %fptmp2669
  %cast_op2671 = bitcast %Owl* %lhs_or_call2666 to %Wl* 
  %ret2672 = call i32 %method2670 ( %Wl* %cast_op2671 )
  %bop2673 = add i32 %ret2665, %ret2672
  %lhs_or_call2674 = load %Owl** @o483
  %vtmp2676 = getelementptr %Owl* %lhs_or_call2674, i32 0, i32 0
  %vtable2675 = load %_Owl_vtable** %vtmp2676
  %fptmp2677 = getelementptr %_Owl_vtable* %vtable2675, i32 0, i32 4
  %method2678 = load i32 (%Owl*)** %fptmp2677
  %ret2679 = call i32 %method2678 ( %Owl* %lhs_or_call2674 )
  %bop2680 = add i32 %bop2673, %ret2679
  ret i32 %bop2680
}


define void @o483.init484 (){
__fresh752:
  %mem_ptr2650 = call i32* @oat_malloc ( i32 8 )
  %obj2651 = bitcast i32* %mem_ptr2650 to %Owl* 
  %new_obj2652 = call %Owl* @_Owl_ctor ( %Owl* %obj2651 )
  store %Owl* %new_obj2652, %Owl** @o483
  ret void
}


define i8* @getNoise (%Wl* %thing2642){
__fresh751:
  %thing_slot2643 = alloca %Wl*
  store %Wl* %thing2642, %Wl** %thing_slot2643
  %lhs_or_call2644 = load %Wl** %thing_slot2643
  %vtmp2646 = getelementptr %Wl* %lhs_or_call2644, i32 0, i32 0
  %vtable2645 = load %_Wl_vtable** %vtmp2646
  %fptmp2647 = getelementptr %_Wl_vtable* %vtable2645, i32 0, i32 2
  %method2648 = load i8* (%Wl*)** %fptmp2647
  %ret2649 = call i8* %method2648 ( %Wl* %lhs_or_call2644 )
  ret i8* %ret2649
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh750:
  %cast_op2639 = bitcast %Owl* %_this1 to %Wl* 
  %ret2640 = call i32 @_Wl_secondoverride ( %Wl* %cast_op2639 )
  %bop2641 = add i32 %ret2640, 1
  ret i32 %bop2641
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh749:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh748:
  ret i8* @_const_str482
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh747:
  %cast_op2635 = bitcast %Owl* %_this1 to %Wl* 
  %dummy2636 = call %Wl* @_Wl_ctor ( %Wl* %cast_op2635 )
  %path2637 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %path2637
  %vt_slot2638 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable477, %_Owl_vtable** %vt_slot2638
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh746:
  %unop2634 = sub i32 0, 2
  ret i32 %unop2634
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh745:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh744:
  ret i8* @_const_str480
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh743:
  %cast_op2630 = bitcast %Wl* %_this1 to %Object* 
  %dummy2631 = call %Object* @_Object_ctor ( %Object* %cast_op2630 )
  %path2632 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str479, i8** %path2632
  %vt_slot2633 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable476, %_Wl_vtable** %vt_slot2633
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh742:
  %path2628 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2629 = load i8** %path2628
  ret i8* %lhs_or_call2629
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh741:
  %path2626 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str478, i8** %path2626
  %vt_slot2627 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable475, %_Object_vtable** %vt_slot2627
  ret %Object* %_this1
}



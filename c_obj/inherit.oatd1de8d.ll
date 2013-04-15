%C = type { %_C_vtable*, i8*, i32, i32, i32, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)*, void (%C*, i32, i32)* }
%B = type { %_B_vtable*, i8*, i32, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@x509 = global i32 0, align 4
@a507 = global %A* zeroinitializer, align 4		; initialized by @a507.init508
@_const_str506.str. = private unnamed_addr constant [ 6 x i8 ] c "C: w=\00", align 4
@_const_str506 = alias bitcast([ 6 x i8 ]* @_const_str506.str. to i8*)@_const_str505.str. = private unnamed_addr constant [ 6 x i8 ] c "C: z=\00", align 4
@_const_str505 = alias bitcast([ 6 x i8 ]* @_const_str505.str. to i8*)@_const_str504.str. = private unnamed_addr constant [ 6 x i8 ] c "C: y=\00", align 4
@_const_str504 = alias bitcast([ 6 x i8 ]* @_const_str504.str. to i8*)@_const_str503.str. = private unnamed_addr constant [ 6 x i8 ] c "C: x=\00", align 4
@_const_str503 = alias bitcast([ 6 x i8 ]* @_const_str503.str. to i8*)@_const_str502.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: b=\00", align 4
@_const_str502 = alias bitcast([ 10 x i8 ]* @_const_str502.str. to i8*)@_const_str501.str. = private unnamed_addr constant [ 10 x i8 ] c "C.foo: a=\00", align 4
@_const_str501 = alias bitcast([ 10 x i8 ]* @_const_str501.str. to i8*)@_const_str500.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str500 = alias bitcast([ 2 x i8 ]* @_const_str500.str. to i8*)@_const_str499.str. = private unnamed_addr constant [ 6 x i8 ] c "B: z=\00", align 4
@_const_str499 = alias bitcast([ 6 x i8 ]* @_const_str499.str. to i8*)@_const_str498.str. = private unnamed_addr constant [ 6 x i8 ] c "B: y=\00", align 4
@_const_str498 = alias bitcast([ 6 x i8 ]* @_const_str498.str. to i8*)@_const_str497.str. = private unnamed_addr constant [ 6 x i8 ] c "B: x=\00", align 4
@_const_str497 = alias bitcast([ 6 x i8 ]* @_const_str497.str. to i8*)@_const_str496.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str496 = alias bitcast([ 2 x i8 ]* @_const_str496.str. to i8*)@_const_str495.str. = private unnamed_addr constant [ 6 x i8 ] c "A: x=\00", align 4
@_const_str495 = alias bitcast([ 6 x i8 ]* @_const_str495.str. to i8*)@_const_str494.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str494 = alias bitcast([ 2 x i8 ]* @_const_str494.str. to i8*)@_const_str493.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str493 = alias bitcast([ 7 x i8 ]* @_const_str493.str. to i8*)@_C_vtable492 = private constant %_C_vtable {%_B_vtable* @_B_vtable491, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print, void (%C*, i32, i32)* @_C_foo}, align 4
@_B_vtable491 = private constant %_B_vtable {%_A_vtable* @_A_vtable490, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_print}, align 4
@_A_vtable490 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable489, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable489 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh772:
  call void @a507.init508(  )
  ret void
}


define i32 @program (i32 %argc2803, { i32, [ 0 x i8* ] }* %argv2801){
__fresh771:
  %argc_slot2804 = alloca i32
  store i32 %argc2803, i32* %argc_slot2804
  %argv_slot2802 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2801, { i32, [ 0 x i8* ] }** %argv_slot2802
  %lhs_or_call2805 = load i32* @x509
  %bop2806 = add i32 %lhs_or_call2805, 3
  %lhs_or_call2807 = load i32* @x509
  %bop2808 = add i32 %lhs_or_call2807, 2
  %lhs_or_call2809 = load i32* @x509
  %bop2810 = add i32 %lhs_or_call2809, 1
  %mem_ptr2811 = call i32* @oat_malloc ( i32 20 )
  %obj2812 = bitcast i32* %mem_ptr2811 to %B* 
  %new_obj2813 = call %B* @_B_ctor ( %B* %obj2812, i32 %bop2810, i32 %bop2808, i32 %bop2806 )
  %vdecl_slot2814 = alloca %B*
  store %B* %new_obj2813, %B** %vdecl_slot2814
  %mem_ptr2815 = call i32* @oat_malloc ( i32 24 )
  %obj2816 = bitcast i32* %mem_ptr2815 to %C* 
  %new_obj2817 = call %C* @_C_ctor ( %C* %obj2816, i32 1, i32 2, i32 3, i32 4 )
  %vdecl_slot2818 = alloca %C*
  store %C* %new_obj2817, %C** %vdecl_slot2818
  %lhs_or_call2819 = load %A** @a507
  %vtmp2821 = getelementptr %A* %lhs_or_call2819, i32 0, i32 0
  %vtable2820 = load %_A_vtable** %vtmp2821
  %fptmp2822 = getelementptr %_A_vtable* %vtable2820, i32 0, i32 2
  %method2823 = load void (%A*)** %fptmp2822
  call void %method2823( %A* %lhs_or_call2819 )
  %lhs_or_call2824 = load %B** %vdecl_slot2814
  %vtmp2826 = getelementptr %B* %lhs_or_call2824, i32 0, i32 0
  %vtable2825 = load %_B_vtable** %vtmp2826
  %fptmp2827 = getelementptr %_B_vtable* %vtable2825, i32 0, i32 2
  %method2828 = load void (%B*)** %fptmp2827
  call void %method2828( %B* %lhs_or_call2824 )
  %lhs_or_call2829 = load %C** %vdecl_slot2818
  %vtmp2831 = getelementptr %C* %lhs_or_call2829, i32 0, i32 0
  %vtable2830 = load %_C_vtable** %vtmp2831
  %fptmp2832 = getelementptr %_C_vtable* %vtable2830, i32 0, i32 2
  %method2833 = load void (%C*)** %fptmp2832
  call void %method2833( %C* %lhs_or_call2829 )
  %lhs_or_call2838 = load %C** %vdecl_slot2818
  %vtmp2840 = getelementptr %C* %lhs_or_call2838, i32 0, i32 0
  %vtable2839 = load %_C_vtable** %vtmp2840
  %fptmp2841 = getelementptr %_C_vtable* %vtable2839, i32 0, i32 3
  %method2842 = load void (%C*, i32, i32)** %fptmp2841
  %lhs_or_call2834 = load i32* @x509
  %bop2835 = add i32 %lhs_or_call2834, 2
  %lhs_or_call2836 = load i32* @x509
  %bop2837 = add i32 %lhs_or_call2836, 1
  call void %method2842( %C* %lhs_or_call2838, i32 %bop2837, i32 %bop2835 )
  ret i32 0
}


define void @a507.init508 (){
__fresh770:
  %mem_ptr2798 = call i32* @oat_malloc ( i32 12 )
  %obj2799 = bitcast i32* %mem_ptr2798 to %A* 
  %new_obj2800 = call %A* @_A_ctor ( %A* %obj2799, i32 3 )
  store %A* %new_obj2800, %A** @a507
  ret void
}


define void @_C_print (%C* %_this1){
__fresh769:
  %path2782 = getelementptr %C* %_this1, i32 0, i32 2
  %lhs_or_call2783 = load i32* %path2782
  %ret2784 = call i8* @string_of_int ( i32 %lhs_or_call2783 )
  %ret2785 = call i8* @string_cat ( i8* @_const_str503, i8* %ret2784 )
  call void @print_string( i8* %ret2785 )
  %path2786 = getelementptr %C* %_this1, i32 0, i32 3
  %lhs_or_call2787 = load i32* %path2786
  %ret2788 = call i8* @string_of_int ( i32 %lhs_or_call2787 )
  %ret2789 = call i8* @string_cat ( i8* @_const_str504, i8* %ret2788 )
  call void @print_string( i8* %ret2789 )
  %path2790 = getelementptr %C* %_this1, i32 0, i32 4
  %lhs_or_call2791 = load i32* %path2790
  %ret2792 = call i8* @string_of_int ( i32 %lhs_or_call2791 )
  %ret2793 = call i8* @string_cat ( i8* @_const_str505, i8* %ret2792 )
  call void @print_string( i8* %ret2793 )
  %path2794 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2795 = load i32* %path2794
  %ret2796 = call i8* @string_of_int ( i32 %lhs_or_call2795 )
  %ret2797 = call i8* @string_cat ( i8* @_const_str506, i8* %ret2796 )
  call void @print_string( i8* %ret2797 )
  ret void
}


define void @_C_foo (%C* %_this1, i32 %a2774, i32 %b2772){
__fresh768:
  %a_slot2775 = alloca i32
  store i32 %a2774, i32* %a_slot2775
  %b_slot2773 = alloca i32
  store i32 %b2772, i32* %b_slot2773
  %lhs_or_call2776 = load i32* %a_slot2775
  %ret2777 = call i8* @string_of_int ( i32 %lhs_or_call2776 )
  %ret2778 = call i8* @string_cat ( i8* @_const_str501, i8* %ret2777 )
  call void @print_string( i8* %ret2778 )
  %lhs_or_call2779 = load i32* %b_slot2773
  %ret2780 = call i8* @string_of_int ( i32 %lhs_or_call2779 )
  %ret2781 = call i8* @string_cat ( i8* @_const_str502, i8* %ret2780 )
  call void @print_string( i8* %ret2781 )
  ret void
}


define %C* @_C_ctor (%C* %_this1, i32 %x2761, i32 %y2759, i32 %z2757, i32 %w2755){
__fresh767:
  %x_slot2762 = alloca i32
  store i32 %x2761, i32* %x_slot2762
  %y_slot2760 = alloca i32
  store i32 %y2759, i32* %y_slot2760
  %z_slot2758 = alloca i32
  store i32 %z2757, i32* %z_slot2758
  %w_slot2756 = alloca i32
  store i32 %w2755, i32* %w_slot2756
  %lhs_or_call2763 = load i32* %z_slot2758
  %lhs_or_call2764 = load i32* %y_slot2760
  %lhs_or_call2765 = load i32* %x_slot2762
  %cast_op2766 = bitcast %C* %_this1 to %B* 
  %dummy2767 = call %B* @_B_ctor ( %B* %cast_op2766, i32 %lhs_or_call2765, i32 %lhs_or_call2764, i32 %lhs_or_call2763 )
  %path2768 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str500, i8** %path2768
  %vt_slot2769 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable492, %_C_vtable** %vt_slot2769
  %path2770 = getelementptr %C* %_this1, i32 0, i32 5
  %lhs_or_call2771 = load i32* %w_slot2756
  store i32 %lhs_or_call2771, i32* %path2770
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh766:
  %path2743 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call2744 = load i32* %path2743
  %ret2745 = call i8* @string_of_int ( i32 %lhs_or_call2744 )
  %ret2746 = call i8* @string_cat ( i8* @_const_str497, i8* %ret2745 )
  call void @print_string( i8* %ret2746 )
  %path2747 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2748 = load i32* %path2747
  %ret2749 = call i8* @string_of_int ( i32 %lhs_or_call2748 )
  %ret2750 = call i8* @string_cat ( i8* @_const_str498, i8* %ret2749 )
  call void @print_string( i8* %ret2750 )
  %path2751 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2752 = load i32* %path2751
  %ret2753 = call i8* @string_of_int ( i32 %lhs_or_call2752 )
  %ret2754 = call i8* @string_cat ( i8* @_const_str499, i8* %ret2753 )
  call void @print_string( i8* %ret2754 )
  ret void
}


define %B* @_B_ctor (%B* %_this1, i32 %x2732, i32 %y2730, i32 %z2728){
__fresh765:
  %x_slot2733 = alloca i32
  store i32 %x2732, i32* %x_slot2733
  %y_slot2731 = alloca i32
  store i32 %y2730, i32* %y_slot2731
  %z_slot2729 = alloca i32
  store i32 %z2728, i32* %z_slot2729
  %lhs_or_call2734 = load i32* %x_slot2733
  %cast_op2735 = bitcast %B* %_this1 to %A* 
  %dummy2736 = call %A* @_A_ctor ( %A* %cast_op2735, i32 %lhs_or_call2734 )
  %path2737 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str496, i8** %path2737
  %vt_slot2738 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable491, %_B_vtable** %vt_slot2738
  %path2739 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call2740 = load i32* %y_slot2731
  store i32 %lhs_or_call2740, i32* %path2739
  %path2741 = getelementptr %B* %_this1, i32 0, i32 4
  %lhs_or_call2742 = load i32* %z_slot2729
  store i32 %lhs_or_call2742, i32* %path2741
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh764:
  %path2724 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2725 = load i32* %path2724
  %ret2726 = call i8* @string_of_int ( i32 %lhs_or_call2725 )
  %ret2727 = call i8* @string_cat ( i8* @_const_str495, i8* %ret2726 )
  call void @print_string( i8* %ret2727 )
  ret void
}


define %A* @_A_ctor (%A* %_this1, i32 %x2716){
__fresh763:
  %x_slot2717 = alloca i32
  store i32 %x2716, i32* %x_slot2717
  %cast_op2718 = bitcast %A* %_this1 to %Object* 
  %dummy2719 = call %Object* @_Object_ctor ( %Object* %cast_op2718 )
  %path2720 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str494, i8** %path2720
  %vt_slot2721 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable490, %_A_vtable** %vt_slot2721
  %path2722 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2723 = load i32* %x_slot2717
  store i32 %lhs_or_call2723, i32* %path2722
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh762:
  %path2714 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2715 = load i8** %path2714
  ret i8* %lhs_or_call2715
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh761:
  %path2712 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str493, i8** %path2712
  %vt_slot2713 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable489, %_Object_vtable** %vt_slot2713
  ret %Object* %_this1
}



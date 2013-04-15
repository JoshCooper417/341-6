%Charmander = type { %_Charmander_vtable*, i8*, i32, i8*, i32 }
%_Charmander_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Charmander*, %Pikachu*)*, void (%Charmander*)* }
%Pikachu = type { %_Pikachu_vtable*, i8*, i32, i8*, i32 }
%_Pikachu_vtable = type { %_Pokemon_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)*, void (%Pikachu*, %Charmander*)*, void (%Pikachu*)* }
%Pokemon = type { %_Pokemon_vtable*, i8*, i32, i8* }
%_Pokemon_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Pokemon*, i32)* }
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
@_const_str679.str. = private unnamed_addr constant [ 2 x i8 ] c "6\00", align 4
@_const_str679 = alias bitcast([ 2 x i8 ]* @_const_str679.str. to i8*)@c677 = global %Charmander* zeroinitializer, align 4		; initialized by @c677.init678
@p675 = global %Pikachu* zeroinitializer, align 4		; initialized by @p675.init676
@_const_str674.str. = private unnamed_addr constant [ 2 x i8 ] c "5\00", align 4
@_const_str674 = alias bitcast([ 2 x i8 ]* @_const_str674.str. to i8*)@_const_str673.str. = private unnamed_addr constant [ 2 x i8 ] c "4\00", align 4
@_const_str673 = alias bitcast([ 2 x i8 ]* @_const_str673.str. to i8*)@_const_str672.str. = private unnamed_addr constant [ 11 x i8 ] c "Charmander\00", align 4
@_const_str672 = alias bitcast([ 11 x i8 ]* @_const_str672.str. to i8*)@_const_str671.str. = private unnamed_addr constant [ 2 x i8 ] c "3\00", align 4
@_const_str671 = alias bitcast([ 2 x i8 ]* @_const_str671.str. to i8*)@_const_str670.str. = private unnamed_addr constant [ 2 x i8 ] c "2\00", align 4
@_const_str670 = alias bitcast([ 2 x i8 ]* @_const_str670.str. to i8*)@_const_str669.str. = private unnamed_addr constant [ 8 x i8 ] c "Pikachu\00", align 4
@_const_str669 = alias bitcast([ 8 x i8 ]* @_const_str669.str. to i8*)@_const_str668.str. = private unnamed_addr constant [ 2 x i8 ] c "9\00", align 4
@_const_str668 = alias bitcast([ 2 x i8 ]* @_const_str668.str. to i8*)@_const_str667.str. = private unnamed_addr constant [ 8 x i8 ] c "Pokemon\00", align 4
@_const_str667 = alias bitcast([ 8 x i8 ]* @_const_str667.str. to i8*)@_const_str666.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str666 = alias bitcast([ 7 x i8 ]* @_const_str666.str. to i8*)@_Charmander_vtable665 = private constant %_Charmander_vtable {%_Pokemon_vtable* @_Pokemon_vtable663, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Charmander*, %Pikachu*)* @_Charmander_attack, void (%Charmander*)* @_Charmander_noise}, align 4
@_Pikachu_vtable664 = private constant %_Pikachu_vtable {%_Pokemon_vtable* @_Pokemon_vtable663, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit, void (%Pikachu*, %Charmander*)* @_Pikachu_attack, void (%Pikachu*)* @_Pikachu_noise}, align 4
@_Pokemon_vtable663 = private constant %_Pokemon_vtable {%_Object_vtable* @_Object_vtable662, i8* (%Object*)* @_Object_get_name, void (%Pokemon*, i32)* @_Pokemon_gethit}, align 4
@_Object_vtable662 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1874:
  call void @p675.init676(  )
  call void @c677.init678(  )
  ret void
}


define i32 @program (i32 %argc5800, { i32, [ 0 x i8* ] }* %argv5798){
__fresh1873:
  %argc_slot5801 = alloca i32
  store i32 %argc5800, i32* %argc_slot5801
  %argv_slot5799 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5798, { i32, [ 0 x i8* ] }** %argv_slot5799
  %lhs_or_call5803 = load %Charmander** @c677
  %vtmp5805 = getelementptr %Charmander* %lhs_or_call5803, i32 0, i32 0
  %vtable5804 = load %_Charmander_vtable** %vtmp5805
  %fptmp5806 = getelementptr %_Charmander_vtable* %vtable5804, i32 0, i32 3
  %method5807 = load void (%Charmander*, %Pikachu*)** %fptmp5806
  %lhs_or_call5802 = load %Pikachu** @p675
  call void %method5807( %Charmander* %lhs_or_call5803, %Pikachu* %lhs_or_call5802 )
  %lhs_or_call5809 = load %Pikachu** @p675
  %vtmp5811 = getelementptr %Pikachu* %lhs_or_call5809, i32 0, i32 0
  %vtable5810 = load %_Pikachu_vtable** %vtmp5811
  %fptmp5812 = getelementptr %_Pikachu_vtable* %vtable5810, i32 0, i32 3
  %method5813 = load void (%Pikachu*, %Charmander*)** %fptmp5812
  %lhs_or_call5808 = load %Charmander** @c677
  call void %method5813( %Pikachu* %lhs_or_call5809, %Charmander* %lhs_or_call5808 )
  %lhs_or_call5815 = load %Charmander** @c677
  %vtmp5817 = getelementptr %Charmander* %lhs_or_call5815, i32 0, i32 0
  %vtable5816 = load %_Charmander_vtable** %vtmp5817
  %fptmp5818 = getelementptr %_Charmander_vtable* %vtable5816, i32 0, i32 3
  %method5819 = load void (%Charmander*, %Pikachu*)** %fptmp5818
  %lhs_or_call5814 = load %Pikachu** @p675
  call void %method5819( %Charmander* %lhs_or_call5815, %Pikachu* %lhs_or_call5814 )
  %lhs_or_call5821 = load %Pikachu** @p675
  %vtmp5823 = getelementptr %Pikachu* %lhs_or_call5821, i32 0, i32 0
  %vtable5822 = load %_Pikachu_vtable** %vtmp5823
  %fptmp5824 = getelementptr %_Pikachu_vtable* %vtable5822, i32 0, i32 3
  %method5825 = load void (%Pikachu*, %Charmander*)** %fptmp5824
  %lhs_or_call5820 = load %Charmander** @c677
  call void %method5825( %Pikachu* %lhs_or_call5821, %Charmander* %lhs_or_call5820 )
  %lhs_or_call5827 = load %Charmander** @c677
  %vtmp5829 = getelementptr %Charmander* %lhs_or_call5827, i32 0, i32 0
  %vtable5828 = load %_Charmander_vtable** %vtmp5829
  %fptmp5830 = getelementptr %_Charmander_vtable* %vtable5828, i32 0, i32 3
  %method5831 = load void (%Charmander*, %Pikachu*)** %fptmp5830
  %lhs_or_call5826 = load %Pikachu** @p675
  call void %method5831( %Charmander* %lhs_or_call5827, %Pikachu* %lhs_or_call5826 )
  %lhs_or_call5833 = load %Pikachu** @p675
  %vtmp5835 = getelementptr %Pikachu* %lhs_or_call5833, i32 0, i32 0
  %vtable5834 = load %_Pikachu_vtable** %vtmp5835
  %fptmp5836 = getelementptr %_Pikachu_vtable* %vtable5834, i32 0, i32 3
  %method5837 = load void (%Pikachu*, %Charmander*)** %fptmp5836
  %lhs_or_call5832 = load %Charmander** @c677
  call void %method5837( %Pikachu* %lhs_or_call5833, %Charmander* %lhs_or_call5832 )
  %lhs_or_call5839 = load %Charmander** @c677
  %vtmp5841 = getelementptr %Charmander* %lhs_or_call5839, i32 0, i32 0
  %vtable5840 = load %_Charmander_vtable** %vtmp5841
  %fptmp5842 = getelementptr %_Charmander_vtable* %vtable5840, i32 0, i32 3
  %method5843 = load void (%Charmander*, %Pikachu*)** %fptmp5842
  %lhs_or_call5838 = load %Pikachu** @p675
  call void %method5843( %Charmander* %lhs_or_call5839, %Pikachu* %lhs_or_call5838 )
  %lhs_or_call5845 = load %Pikachu** @p675
  %vtmp5847 = getelementptr %Pikachu* %lhs_or_call5845, i32 0, i32 0
  %vtable5846 = load %_Pikachu_vtable** %vtmp5847
  %fptmp5848 = getelementptr %_Pikachu_vtable* %vtable5846, i32 0, i32 3
  %method5849 = load void (%Pikachu*, %Charmander*)** %fptmp5848
  %lhs_or_call5844 = load %Charmander** @c677
  call void %method5849( %Pikachu* %lhs_or_call5845, %Charmander* %lhs_or_call5844 )
  %lhs_or_call5851 = load %Charmander** @c677
  %vtmp5853 = getelementptr %Charmander* %lhs_or_call5851, i32 0, i32 0
  %vtable5852 = load %_Charmander_vtable** %vtmp5853
  %fptmp5854 = getelementptr %_Charmander_vtable* %vtable5852, i32 0, i32 3
  %method5855 = load void (%Charmander*, %Pikachu*)** %fptmp5854
  %lhs_or_call5850 = load %Pikachu** @p675
  call void %method5855( %Charmander* %lhs_or_call5851, %Pikachu* %lhs_or_call5850 )
  call void @print_string( i8* @_const_str679 )
  ret i32 0
}


define void @c677.init678 (){
__fresh1872:
  %mem_ptr5795 = call i32* @oat_malloc ( i32 20 )
  %obj5796 = bitcast i32* %mem_ptr5795 to %Charmander* 
  %new_obj5797 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj5796 )
  store %Charmander* %new_obj5797, %Charmander** @c677
  ret void
}


define void @p675.init676 (){
__fresh1871:
  %mem_ptr5792 = call i32* @oat_malloc ( i32 20 )
  %obj5793 = bitcast i32* %mem_ptr5792 to %Pikachu* 
  %new_obj5794 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj5793 )
  store %Pikachu* %new_obj5794, %Pikachu** @p675
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh1870:
  %path5790 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call5791 = load i8** %path5790
  call void @print_string( i8* %lhs_or_call5791 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi5778){
__fresh1869:
  %pi_slot5779 = alloca %Pikachu*
  store %Pikachu* %pi5778, %Pikachu** %pi_slot5779
  call void @print_string( i8* @_const_str674 )
  %path5780 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call5781 = load i8** %path5780
  call void @print_string( i8* %lhs_or_call5781 )
  %lhs_or_call5784 = load %Pikachu** %pi_slot5779
  %vtmp5786 = getelementptr %Pikachu* %lhs_or_call5784, i32 0, i32 0
  %vtable5785 = load %_Pikachu_vtable** %vtmp5786
  %fptmp5787 = getelementptr %_Pikachu_vtable* %vtable5785, i32 0, i32 2
  %method5788 = load void (%Pokemon*, i32)** %fptmp5787
  %path5782 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call5783 = load i32* %path5782
  %cast_op5789 = bitcast %Pikachu* %lhs_or_call5784 to %Pokemon* 
  call void %method5788( %Pokemon* %cast_op5789, i32 %lhs_or_call5783 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh1868:
  %cast_op5772 = bitcast %Charmander* %_this1 to %Pokemon* 
  %dummy5773 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %cast_op5772 )
  %path5774 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str672, i8** %path5774
  %path5775 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str673, i8** %path5775
  %vt_slot5776 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable665, %_Charmander_vtable** %vt_slot5776
  %path5777 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %path5777
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh1867:
  %path5770 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call5771 = load i8** %path5770
  call void @print_string( i8* %lhs_or_call5771 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch5758){
__fresh1866:
  %ch_slot5759 = alloca %Charmander*
  store %Charmander* %ch5758, %Charmander** %ch_slot5759
  call void @print_string( i8* @_const_str671 )
  %path5760 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call5761 = load i8** %path5760
  call void @print_string( i8* %lhs_or_call5761 )
  %lhs_or_call5764 = load %Charmander** %ch_slot5759
  %vtmp5766 = getelementptr %Charmander* %lhs_or_call5764, i32 0, i32 0
  %vtable5765 = load %_Charmander_vtable** %vtmp5766
  %fptmp5767 = getelementptr %_Charmander_vtable* %vtable5765, i32 0, i32 2
  %method5768 = load void (%Pokemon*, i32)** %fptmp5767
  %path5762 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call5763 = load i32* %path5762
  %cast_op5769 = bitcast %Charmander* %lhs_or_call5764 to %Pokemon* 
  call void %method5768( %Pokemon* %cast_op5769, i32 %lhs_or_call5763 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh1865:
  %cast_op5752 = bitcast %Pikachu* %_this1 to %Pokemon* 
  %dummy5753 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %cast_op5752 )
  %path5754 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str669, i8** %path5754
  %vt_slot5755 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable664, %_Pikachu_vtable** %vt_slot5755
  %path5756 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %path5756
  %path5757 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str670, i8** %path5757
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s5743){
__fresh1864:
  %s_slot5744 = alloca i32
  store i32 %s5743, i32* %s_slot5744
  %path5745 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %path5746 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call5747 = load i32* %path5746
  %lhs_or_call5748 = load i32* %s_slot5744
  %bop5749 = sub i32 %lhs_or_call5747, %lhs_or_call5748
  store i32 %bop5749, i32* %path5745
  %path5750 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call5751 = load i8** %path5750
  call void @print_string( i8* %lhs_or_call5751 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh1863:
  %cast_op5737 = bitcast %Pokemon* %_this1 to %Object* 
  %dummy5738 = call %Object* @_Object_ctor ( %Object* %cast_op5737 )
  %path5739 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str667, i8** %path5739
  %path5740 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str668, i8** %path5740
  %vt_slot5741 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable663, %_Pokemon_vtable** %vt_slot5741
  %path5742 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %path5742
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1862:
  %path5735 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5736 = load i8** %path5735
  ret i8* %lhs_or_call5736
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1861:
  %path5733 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str666, i8** %path5733
  %vt_slot5734 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable662, %_Object_vtable** %vt_slot5734
  ret %Object* %_this1
}



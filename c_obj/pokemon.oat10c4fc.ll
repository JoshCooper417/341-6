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


define i32 @program (i32 %argc5809, { i32, [ 0 x i8* ] }* %argv5807){
__fresh1873:
  %argc_slot5810 = alloca i32
  store i32 %argc5809, i32* %argc_slot5810
  %argv_slot5808 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5807, { i32, [ 0 x i8* ] }** %argv_slot5808
  %lhs_or_call5812 = load %Charmander** @c677
  %vtmp5814 = getelementptr %Charmander* %lhs_or_call5812, i32 0, i32 0
  %vtable5813 = load %_Charmander_vtable** %vtmp5814
  %fptmp5815 = getelementptr %_Charmander_vtable* %vtable5813, i32 0, i32 3
  %method5816 = load void (%Charmander*, %Pikachu*)** %fptmp5815
  %lhs_or_call5811 = load %Pikachu** @p675
  call void %method5816( %Charmander* %lhs_or_call5812, %Pikachu* %lhs_or_call5811 )
  %lhs_or_call5818 = load %Pikachu** @p675
  %vtmp5820 = getelementptr %Pikachu* %lhs_or_call5818, i32 0, i32 0
  %vtable5819 = load %_Pikachu_vtable** %vtmp5820
  %fptmp5821 = getelementptr %_Pikachu_vtable* %vtable5819, i32 0, i32 3
  %method5822 = load void (%Pikachu*, %Charmander*)** %fptmp5821
  %lhs_or_call5817 = load %Charmander** @c677
  call void %method5822( %Pikachu* %lhs_or_call5818, %Charmander* %lhs_or_call5817 )
  %lhs_or_call5824 = load %Charmander** @c677
  %vtmp5826 = getelementptr %Charmander* %lhs_or_call5824, i32 0, i32 0
  %vtable5825 = load %_Charmander_vtable** %vtmp5826
  %fptmp5827 = getelementptr %_Charmander_vtable* %vtable5825, i32 0, i32 3
  %method5828 = load void (%Charmander*, %Pikachu*)** %fptmp5827
  %lhs_or_call5823 = load %Pikachu** @p675
  call void %method5828( %Charmander* %lhs_or_call5824, %Pikachu* %lhs_or_call5823 )
  %lhs_or_call5830 = load %Pikachu** @p675
  %vtmp5832 = getelementptr %Pikachu* %lhs_or_call5830, i32 0, i32 0
  %vtable5831 = load %_Pikachu_vtable** %vtmp5832
  %fptmp5833 = getelementptr %_Pikachu_vtable* %vtable5831, i32 0, i32 3
  %method5834 = load void (%Pikachu*, %Charmander*)** %fptmp5833
  %lhs_or_call5829 = load %Charmander** @c677
  call void %method5834( %Pikachu* %lhs_or_call5830, %Charmander* %lhs_or_call5829 )
  %lhs_or_call5836 = load %Charmander** @c677
  %vtmp5838 = getelementptr %Charmander* %lhs_or_call5836, i32 0, i32 0
  %vtable5837 = load %_Charmander_vtable** %vtmp5838
  %fptmp5839 = getelementptr %_Charmander_vtable* %vtable5837, i32 0, i32 3
  %method5840 = load void (%Charmander*, %Pikachu*)** %fptmp5839
  %lhs_or_call5835 = load %Pikachu** @p675
  call void %method5840( %Charmander* %lhs_or_call5836, %Pikachu* %lhs_or_call5835 )
  %lhs_or_call5842 = load %Pikachu** @p675
  %vtmp5844 = getelementptr %Pikachu* %lhs_or_call5842, i32 0, i32 0
  %vtable5843 = load %_Pikachu_vtable** %vtmp5844
  %fptmp5845 = getelementptr %_Pikachu_vtable* %vtable5843, i32 0, i32 3
  %method5846 = load void (%Pikachu*, %Charmander*)** %fptmp5845
  %lhs_or_call5841 = load %Charmander** @c677
  call void %method5846( %Pikachu* %lhs_or_call5842, %Charmander* %lhs_or_call5841 )
  %lhs_or_call5848 = load %Charmander** @c677
  %vtmp5850 = getelementptr %Charmander* %lhs_or_call5848, i32 0, i32 0
  %vtable5849 = load %_Charmander_vtable** %vtmp5850
  %fptmp5851 = getelementptr %_Charmander_vtable* %vtable5849, i32 0, i32 3
  %method5852 = load void (%Charmander*, %Pikachu*)** %fptmp5851
  %lhs_or_call5847 = load %Pikachu** @p675
  call void %method5852( %Charmander* %lhs_or_call5848, %Pikachu* %lhs_or_call5847 )
  %lhs_or_call5854 = load %Pikachu** @p675
  %vtmp5856 = getelementptr %Pikachu* %lhs_or_call5854, i32 0, i32 0
  %vtable5855 = load %_Pikachu_vtable** %vtmp5856
  %fptmp5857 = getelementptr %_Pikachu_vtable* %vtable5855, i32 0, i32 3
  %method5858 = load void (%Pikachu*, %Charmander*)** %fptmp5857
  %lhs_or_call5853 = load %Charmander** @c677
  call void %method5858( %Pikachu* %lhs_or_call5854, %Charmander* %lhs_or_call5853 )
  %lhs_or_call5860 = load %Charmander** @c677
  %vtmp5862 = getelementptr %Charmander* %lhs_or_call5860, i32 0, i32 0
  %vtable5861 = load %_Charmander_vtable** %vtmp5862
  %fptmp5863 = getelementptr %_Charmander_vtable* %vtable5861, i32 0, i32 3
  %method5864 = load void (%Charmander*, %Pikachu*)** %fptmp5863
  %lhs_or_call5859 = load %Pikachu** @p675
  call void %method5864( %Charmander* %lhs_or_call5860, %Pikachu* %lhs_or_call5859 )
  call void @print_string( i8* @_const_str679 )
  ret i32 0
}


define void @c677.init678 (){
__fresh1872:
  %mem_ptr5804 = call i32* @oat_malloc ( i32 20 )
  %obj5805 = bitcast i32* %mem_ptr5804 to %Charmander* 
  %new_obj5806 = call %Charmander* @_Charmander_ctor ( %Charmander* %obj5805 )
  store %Charmander* %new_obj5806, %Charmander** @c677
  ret void
}


define void @p675.init676 (){
__fresh1871:
  %mem_ptr5801 = call i32* @oat_malloc ( i32 20 )
  %obj5802 = bitcast i32* %mem_ptr5801 to %Pikachu* 
  %new_obj5803 = call %Pikachu* @_Pikachu_ctor ( %Pikachu* %obj5802 )
  store %Pikachu* %new_obj5803, %Pikachu** @p675
  ret void
}


define void @_Charmander_noise (%Charmander* %_this1){
__fresh1870:
  %path5799 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call5800 = load i8** %path5799
  call void @print_string( i8* %lhs_or_call5800 )
  ret void
}


define void @_Charmander_attack (%Charmander* %_this1, %Pikachu* %pi5787){
__fresh1869:
  %pi_slot5788 = alloca %Pikachu*
  store %Pikachu* %pi5787, %Pikachu** %pi_slot5788
  call void @print_string( i8* @_const_str674 )
  %path5789 = getelementptr %Charmander* %_this1, i32 0, i32 3
  %lhs_or_call5790 = load i8** %path5789
  call void @print_string( i8* %lhs_or_call5790 )
  %lhs_or_call5793 = load %Pikachu** %pi_slot5788
  %vtmp5795 = getelementptr %Pikachu* %lhs_or_call5793, i32 0, i32 0
  %vtable5794 = load %_Pikachu_vtable** %vtmp5795
  %fptmp5796 = getelementptr %_Pikachu_vtable* %vtable5794, i32 0, i32 2
  %method5797 = load void (%Pokemon*, i32)** %fptmp5796
  %path5791 = getelementptr %Charmander* %_this1, i32 0, i32 4
  %lhs_or_call5792 = load i32* %path5791
  %cast_op5798 = bitcast %Pikachu* %lhs_or_call5793 to %Pokemon* 
  call void %method5797( %Pokemon* %cast_op5798, i32 %lhs_or_call5792 )
  ret void
}


define %Charmander* @_Charmander_ctor (%Charmander* %_this1){
__fresh1868:
  %cast_op5781 = bitcast %Charmander* %_this1 to %Pokemon* 
  %dummy5782 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %cast_op5781 )
  %path5783 = getelementptr %Charmander* %_this1, i32 0, i32 1
  store i8* @_const_str672, i8** %path5783
  %path5784 = getelementptr %Charmander* %_this1, i32 0, i32 3
  store i8* @_const_str673, i8** %path5784
  %vt_slot5785 = getelementptr %Charmander* %_this1, i32 0, i32 0
  store %_Charmander_vtable* @_Charmander_vtable665, %_Charmander_vtable** %vt_slot5785
  %path5786 = getelementptr %Charmander* %_this1, i32 0, i32 4
  store i32 16, i32* %path5786
  ret %Charmander* %_this1
}


define void @_Pikachu_noise (%Pikachu* %_this1){
__fresh1867:
  %path5779 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call5780 = load i8** %path5779
  call void @print_string( i8* %lhs_or_call5780 )
  ret void
}


define void @_Pikachu_attack (%Pikachu* %_this1, %Charmander* %ch5767){
__fresh1866:
  %ch_slot5768 = alloca %Charmander*
  store %Charmander* %ch5767, %Charmander** %ch_slot5768
  call void @print_string( i8* @_const_str671 )
  %path5769 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  %lhs_or_call5770 = load i8** %path5769
  call void @print_string( i8* %lhs_or_call5770 )
  %lhs_or_call5773 = load %Charmander** %ch_slot5768
  %vtmp5775 = getelementptr %Charmander* %lhs_or_call5773, i32 0, i32 0
  %vtable5774 = load %_Charmander_vtable** %vtmp5775
  %fptmp5776 = getelementptr %_Charmander_vtable* %vtable5774, i32 0, i32 2
  %method5777 = load void (%Pokemon*, i32)** %fptmp5776
  %path5771 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  %lhs_or_call5772 = load i32* %path5771
  %cast_op5778 = bitcast %Charmander* %lhs_or_call5773 to %Pokemon* 
  call void %method5777( %Pokemon* %cast_op5778, i32 %lhs_or_call5772 )
  ret void
}


define %Pikachu* @_Pikachu_ctor (%Pikachu* %_this1){
__fresh1865:
  %cast_op5761 = bitcast %Pikachu* %_this1 to %Pokemon* 
  %dummy5762 = call %Pokemon* @_Pokemon_ctor ( %Pokemon* %cast_op5761 )
  %path5763 = getelementptr %Pikachu* %_this1, i32 0, i32 1
  store i8* @_const_str669, i8** %path5763
  %vt_slot5764 = getelementptr %Pikachu* %_this1, i32 0, i32 0
  store %_Pikachu_vtable* @_Pikachu_vtable664, %_Pikachu_vtable** %vt_slot5764
  %path5765 = getelementptr %Pikachu* %_this1, i32 0, i32 4
  store i32 25, i32* %path5765
  %path5766 = getelementptr %Pikachu* %_this1, i32 0, i32 3
  store i8* @_const_str670, i8** %path5766
  ret %Pikachu* %_this1
}


define void @_Pokemon_gethit (%Pokemon* %_this1, i32 %s5752){
__fresh1864:
  %s_slot5753 = alloca i32
  store i32 %s5752, i32* %s_slot5753
  %path5754 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %path5755 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  %lhs_or_call5756 = load i32* %path5755
  %lhs_or_call5757 = load i32* %s_slot5753
  %bop5758 = sub i32 %lhs_or_call5756, %lhs_or_call5757
  store i32 %bop5758, i32* %path5754
  %path5759 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  %lhs_or_call5760 = load i8** %path5759
  call void @print_string( i8* %lhs_or_call5760 )
  ret void
}


define %Pokemon* @_Pokemon_ctor (%Pokemon* %_this1){
__fresh1863:
  %cast_op5746 = bitcast %Pokemon* %_this1 to %Object* 
  %dummy5747 = call %Object* @_Object_ctor ( %Object* %cast_op5746 )
  %path5748 = getelementptr %Pokemon* %_this1, i32 0, i32 1
  store i8* @_const_str667, i8** %path5748
  %path5749 = getelementptr %Pokemon* %_this1, i32 0, i32 3
  store i8* @_const_str668, i8** %path5749
  %vt_slot5750 = getelementptr %Pokemon* %_this1, i32 0, i32 0
  store %_Pokemon_vtable* @_Pokemon_vtable663, %_Pokemon_vtable** %vt_slot5750
  %path5751 = getelementptr %Pokemon* %_this1, i32 0, i32 2
  store i32 100, i32* %path5751
  ret %Pokemon* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1862:
  %path5744 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5745 = load i8** %path5744
  ret i8* %lhs_or_call5745
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1861:
  %path5742 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str666, i8** %path5742
  %vt_slot5743 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable662, %_Object_vtable** %vt_slot5743
  ret %Object* %_this1
}



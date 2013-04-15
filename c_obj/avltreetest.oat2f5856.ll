%AVLTree = type { %_AVLTree_vtable*, i8*, %Number*, %BSTree*, %BSTree*, %BSTree*, i32 }
%_AVLTree_vtable = type { %_BSTree_vtable*, i8* (%Object*)*, void (%AVLTree*, %Number*)*, i32 (%BSTree*, %Number*)*, void (%BSTree*, %Number*)*, void (%AVLTree*, %BSTree*)*, void (%AVLTree*)*, void (%AVLTree*)*, void (%AVLTree*)*, void (%AVLTree*)*, %AVLTree* (%AVLTree*, %BSTree*)*, i32 (%AVLTree*)* }
%BSTree = type { %_BSTree_vtable*, i8*, %Number*, %BSTree*, %BSTree*, %BSTree* }
%_BSTree_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%BSTree*, %Number*)*, i32 (%BSTree*, %Number*)*, void (%BSTree*, %Number*)*, void (%BSTree*, %BSTree*)* }
%Zero = type { %_Zero_vtable*, i8*, i32, i32 }
%_Zero_vtable = type { %_Integer_vtable*, i8* (%Object*)*, i32 (%Integer*, %Number*)*, i8* (%Zero*)*, i32 (%Quotient*)*, i32 (%Quotient*)*, %Quotient* (%Zero*, %Quotient*)*, i32 (%Quotient*)*, i32 (%Quotient*)*, i32 (%Integer*)* }
%Integer = type { %_Integer_vtable*, i8*, i32, i32 }
%_Integer_vtable = type { %_Quotient_vtable*, i8* (%Object*)*, i32 (%Integer*, %Number*)*, i8* (%Integer*)*, i32 (%Quotient*)*, i32 (%Quotient*)*, %Quotient* (%Quotient*, %Quotient*)*, i32 (%Quotient*)*, i32 (%Quotient*)*, i32 (%Integer*)* }
%Quotient = type { %_Quotient_vtable*, i8*, i32, i32 }
%_Quotient_vtable = type { %_Number_vtable*, i8* (%Object*)*, i32 (%Quotient*, %Number*)*, i8* (%Quotient*)*, i32 (%Quotient*)*, i32 (%Quotient*)*, %Quotient* (%Quotient*, %Quotient*)*, i32 (%Quotient*)*, i32 (%Quotient*)* }
%Number = type { %_Number_vtable*, i8* }
%_Number_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%Number*, %Number*)*, i8* (%Number*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare i32 @oat_mod(i32, i32)
declare i32 @oat_div(i32, i32)
declare void @print_bool(i1)
declare void @print_int(i32)
declare void @print_string(i8*)
declare i32 @length_of_string(i8*)
declare i8* @string_cat(i8*, i8*)
declare i8* @string_of_int(i32)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
@_const_str627.str. = private unnamed_addr constant [ 8 x i8 ] c "Not AVL\00", align 4
@_const_str627 = alias bitcast([ 8 x i8 ]* @_const_str627.str. to i8*)@_const_str626.str. = private unnamed_addr constant [ 13 x i8 ] c "Invalid tree\00", align 4
@_const_str626 = alias bitcast([ 13 x i8 ]* @_const_str626.str. to i8*)@_const_str625.str. = private unnamed_addr constant [ 8 x i8 ] c "Not AVL\00", align 4
@_const_str625 = alias bitcast([ 8 x i8 ]* @_const_str625.str. to i8*)@_const_str624.str. = private unnamed_addr constant [ 13 x i8 ] c "Invalid tree\00", align 4
@_const_str624 = alias bitcast([ 13 x i8 ]* @_const_str624.str. to i8*)@_const_str623.str. = private unnamed_addr constant [ 8 x i8 ] c "Not AVL\00", align 4
@_const_str623 = alias bitcast([ 8 x i8 ]* @_const_str623.str. to i8*)@_const_str622.str. = private unnamed_addr constant [ 25 x i8 ] c "Inconsistent tree height\00", align 4
@_const_str622 = alias bitcast([ 25 x i8 ]* @_const_str622.str. to i8*)@_const_str621.str. = private unnamed_addr constant [ 25 x i8 ] c "Inconsistent tree height\00", align 4
@_const_str621 = alias bitcast([ 25 x i8 ]* @_const_str621.str. to i8*)@_const_str620.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str620 = alias bitcast([ 11 x i8 ]* @_const_str620.str. to i8*)@_const_str619.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str619 = alias bitcast([ 11 x i8 ]* @_const_str619.str. to i8*)@_const_str618.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str618 = alias bitcast([ 38 x i8 ]* @_const_str618.str. to i8*)@_const_str617.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str617 = alias bitcast([ 38 x i8 ]* @_const_str617.str. to i8*)@_const_str616.str. = private unnamed_addr constant [ 8 x i8 ] c "AVLTree\00", align 4
@_const_str616 = alias bitcast([ 8 x i8 ]* @_const_str616.str. to i8*)@_const_str615.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str615 = alias bitcast([ 11 x i8 ]* @_const_str615.str. to i8*)@_const_str614.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str614 = alias bitcast([ 11 x i8 ]* @_const_str614.str. to i8*)@_const_str613.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str613 = alias bitcast([ 38 x i8 ]* @_const_str613.str. to i8*)@_const_str612.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str612 = alias bitcast([ 38 x i8 ]* @_const_str612.str. to i8*)@_const_str611.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str611 = alias bitcast([ 38 x i8 ]* @_const_str611.str. to i8*)@_const_str610.str. = private unnamed_addr constant [ 18 x i8 ] c "Element not found\00", align 4
@_const_str610 = alias bitcast([ 18 x i8 ]* @_const_str610.str. to i8*)@_const_str609.str. = private unnamed_addr constant [ 7 x i8 ] c "BSTree\00", align 4
@_const_str609 = alias bitcast([ 7 x i8 ]* @_const_str609.str. to i8*)@_const_str608.str. = private unnamed_addr constant [ 2 x i8 ] c "0\00", align 4
@_const_str608 = alias bitcast([ 2 x i8 ]* @_const_str608.str. to i8*)@_const_str607.str. = private unnamed_addr constant [ 5 x i8 ] c "Zero\00", align 4
@_const_str607 = alias bitcast([ 5 x i8 ]* @_const_str607.str. to i8*)@_const_str606.str. = private unnamed_addr constant [ 8 x i8 ] c "Integer\00", align 4
@_const_str606 = alias bitcast([ 8 x i8 ]* @_const_str606.str. to i8*)@_const_str605.str. = private unnamed_addr constant [ 2 x i8 ] c "/\00", align 4
@_const_str605 = alias bitcast([ 2 x i8 ]* @_const_str605.str. to i8*)@_const_str604.str. = private unnamed_addr constant [ 17 x i8 ] c "Zero denominator\00", align 4
@_const_str604 = alias bitcast([ 17 x i8 ]* @_const_str604.str. to i8*)@_const_str603.str. = private unnamed_addr constant [ 9 x i8 ] c "Quotient\00", align 4
@_const_str603 = alias bitcast([ 9 x i8 ]* @_const_str603.str. to i8*)@_const_str602.str. = private unnamed_addr constant [ 1 x i8 ] c "\00", align 4
@_const_str602 = alias bitcast([ 1 x i8 ]* @_const_str602.str. to i8*)@_const_str601.str. = private unnamed_addr constant [ 18 x i8 ] c "Abstract toString\00", align 4
@_const_str601 = alias bitcast([ 18 x i8 ]* @_const_str601.str. to i8*)@_const_str600.str. = private unnamed_addr constant [ 19 x i8 ] c "Abstract compareTo\00", align 4
@_const_str600 = alias bitcast([ 19 x i8 ]* @_const_str600.str. to i8*)@_const_str599.str. = private unnamed_addr constant [ 7 x i8 ] c "Number\00", align 4
@_const_str599 = alias bitcast([ 7 x i8 ]* @_const_str599.str. to i8*)@_const_str598.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str598 = alias bitcast([ 7 x i8 ]* @_const_str598.str. to i8*)@_AVLTree_vtable597 = private constant %_AVLTree_vtable {%_BSTree_vtable* @_BSTree_vtable596, i8* (%Object*)* @_Object_get_name, void (%AVLTree*, %Number*)* @_AVLTree_insert, i32 (%BSTree*, %Number*)* @_BSTree_find, void (%BSTree*, %Number*)* @_BSTree_remove, void (%AVLTree*, %BSTree*)* @_AVLTree_remove_node, void (%AVLTree*)* @_AVLTree_updateHeight, void (%AVLTree*)* @_AVLTree_checkBalance, void (%AVLTree*)* @_AVLTree_leftRotate, void (%AVLTree*)* @_AVLTree_rightRotate, %AVLTree* (%AVLTree*, %BSTree*)* @_AVLTree_bstToAvl, i32 (%AVLTree*)* @_AVLTree_get_height}, align 4
@_BSTree_vtable596 = private constant %_BSTree_vtable {%_Object_vtable* @_Object_vtable591, i8* (%Object*)* @_Object_get_name, void (%BSTree*, %Number*)* @_BSTree_insert, i32 (%BSTree*, %Number*)* @_BSTree_find, void (%BSTree*, %Number*)* @_BSTree_remove, void (%BSTree*, %BSTree*)* @_BSTree_remove_node}, align 4
@_Zero_vtable595 = private constant %_Zero_vtable {%_Integer_vtable* @_Integer_vtable594, i8* (%Object*)* @_Object_get_name, i32 (%Integer*, %Number*)* @_Integer_compareTo, i8* (%Zero*)* @_Zero_toString, i32 (%Quotient*)* @_Quotient_num, i32 (%Quotient*)* @_Quotient_denom, %Quotient* (%Zero*, %Quotient*)* @_Zero_add, i32 (%Quotient*)* @_Quotient_div, i32 (%Quotient*)* @_Quotient_mod, i32 (%Integer*)* @_Integer_val}, align 4
@_Integer_vtable594 = private constant %_Integer_vtable {%_Quotient_vtable* @_Quotient_vtable593, i8* (%Object*)* @_Object_get_name, i32 (%Integer*, %Number*)* @_Integer_compareTo, i8* (%Integer*)* @_Integer_toString, i32 (%Quotient*)* @_Quotient_num, i32 (%Quotient*)* @_Quotient_denom, %Quotient* (%Quotient*, %Quotient*)* @_Quotient_add, i32 (%Quotient*)* @_Quotient_div, i32 (%Quotient*)* @_Quotient_mod, i32 (%Integer*)* @_Integer_val}, align 4
@_Quotient_vtable593 = private constant %_Quotient_vtable {%_Number_vtable* @_Number_vtable592, i8* (%Object*)* @_Object_get_name, i32 (%Quotient*, %Number*)* @_Quotient_compareTo, i8* (%Quotient*)* @_Quotient_toString, i32 (%Quotient*)* @_Quotient_num, i32 (%Quotient*)* @_Quotient_denom, %Quotient* (%Quotient*, %Quotient*)* @_Quotient_add, i32 (%Quotient*)* @_Quotient_div, i32 (%Quotient*)* @_Quotient_mod}, align 4
@_Number_vtable592 = private constant %_Number_vtable {%_Object_vtable* @_Object_vtable591, i8* (%Object*)* @_Object_get_name, i32 (%Number*, %Number*)* @_Number_compareTo, i8* (%Number*)* @_Number_toString}, align 4
@_Object_vtable591 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1608:
  ret void
}


define i32 @program (i32 %argc4904, { i32, [ 0 x i8* ] }* %argv4902){
__fresh1607:
  %argc_slot4905 = alloca i32
  store i32 %argc4904, i32* %argc_slot4905
  %argv_slot4903 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv4902, { i32, [ 0 x i8* ] }** %argv_slot4903
  %mem_ptr4906 = call i32* @oat_malloc ( i32 28 )
  %obj4907 = bitcast i32* %mem_ptr4906 to %AVLTree* 
  %new_obj4908 = call %AVLTree* @_AVLTree_ctor ( %AVLTree* %obj4907 )
  %vdecl_slot4909 = alloca %AVLTree*
  store %AVLTree* %new_obj4908, %AVLTree** %vdecl_slot4909
  %vdecl_slot4910 = alloca i32
  store i32 0, i32* %vdecl_slot4910
  %lhs_or_call4914 = load %AVLTree** %vdecl_slot4909
  %vtmp4916 = getelementptr %AVLTree* %lhs_or_call4914, i32 0, i32 0
  %vtable4915 = load %_AVLTree_vtable** %vtmp4916
  %fptmp4917 = getelementptr %_AVLTree_vtable* %vtable4915, i32 0, i32 2
  %method4918 = load void (%AVLTree*, %Number*)** %fptmp4917
  %mem_ptr4911 = call i32* @oat_malloc ( i32 16 )
  %obj4912 = bitcast i32* %mem_ptr4911 to %Zero* 
  %new_obj4913 = call %Zero* @_Zero_ctor ( %Zero* %obj4912 )
  %cast_op4919 = bitcast %Zero* %new_obj4913 to %Number* 
  call void %method4918( %AVLTree* %lhs_or_call4914, %Number* %cast_op4919 )
  %lhs_or_call4923 = load %AVLTree** %vdecl_slot4909
  %vtmp4925 = getelementptr %AVLTree* %lhs_or_call4923, i32 0, i32 0
  %vtable4924 = load %_AVLTree_vtable** %vtmp4925
  %fptmp4926 = getelementptr %_AVLTree_vtable* %vtable4924, i32 0, i32 2
  %method4927 = load void (%AVLTree*, %Number*)** %fptmp4926
  %mem_ptr4920 = call i32* @oat_malloc ( i32 16 )
  %obj4921 = bitcast i32* %mem_ptr4920 to %Integer* 
  %new_obj4922 = call %Integer* @_Integer_ctor ( %Integer* %obj4921, i32 1 )
  %cast_op4928 = bitcast %Integer* %new_obj4922 to %Number* 
  call void %method4927( %AVLTree* %lhs_or_call4923, %Number* %cast_op4928 )
  %lhs_or_call4932 = load %AVLTree** %vdecl_slot4909
  %vtmp4934 = getelementptr %AVLTree* %lhs_or_call4932, i32 0, i32 0
  %vtable4933 = load %_AVLTree_vtable** %vtmp4934
  %fptmp4935 = getelementptr %_AVLTree_vtable* %vtable4933, i32 0, i32 2
  %method4936 = load void (%AVLTree*, %Number*)** %fptmp4935
  %mem_ptr4929 = call i32* @oat_malloc ( i32 16 )
  %obj4930 = bitcast i32* %mem_ptr4929 to %Integer* 
  %new_obj4931 = call %Integer* @_Integer_ctor ( %Integer* %obj4930, i32 2 )
  %cast_op4937 = bitcast %Integer* %new_obj4931 to %Number* 
  call void %method4936( %AVLTree* %lhs_or_call4932, %Number* %cast_op4937 )
  %lhs_or_call4941 = load %AVLTree** %vdecl_slot4909
  %vtmp4943 = getelementptr %AVLTree* %lhs_or_call4941, i32 0, i32 0
  %vtable4942 = load %_AVLTree_vtable** %vtmp4943
  %fptmp4944 = getelementptr %_AVLTree_vtable* %vtable4942, i32 0, i32 2
  %method4945 = load void (%AVLTree*, %Number*)** %fptmp4944
  %mem_ptr4938 = call i32* @oat_malloc ( i32 16 )
  %obj4939 = bitcast i32* %mem_ptr4938 to %Quotient* 
  %new_obj4940 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4939, i32 1, i32 2 )
  %cast_op4946 = bitcast %Quotient* %new_obj4940 to %Number* 
  call void %method4945( %AVLTree* %lhs_or_call4941, %Number* %cast_op4946 )
  %lhs_or_call4950 = load %AVLTree** %vdecl_slot4909
  %vtmp4952 = getelementptr %AVLTree* %lhs_or_call4950, i32 0, i32 0
  %vtable4951 = load %_AVLTree_vtable** %vtmp4952
  %fptmp4953 = getelementptr %_AVLTree_vtable* %vtable4951, i32 0, i32 2
  %method4954 = load void (%AVLTree*, %Number*)** %fptmp4953
  %mem_ptr4947 = call i32* @oat_malloc ( i32 16 )
  %obj4948 = bitcast i32* %mem_ptr4947 to %Quotient* 
  %new_obj4949 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4948, i32 1, i32 4 )
  %cast_op4955 = bitcast %Quotient* %new_obj4949 to %Number* 
  call void %method4954( %AVLTree* %lhs_or_call4950, %Number* %cast_op4955 )
  %lhs_or_call4959 = load %AVLTree** %vdecl_slot4909
  %vtmp4961 = getelementptr %AVLTree* %lhs_or_call4959, i32 0, i32 0
  %vtable4960 = load %_AVLTree_vtable** %vtmp4961
  %fptmp4962 = getelementptr %_AVLTree_vtable* %vtable4960, i32 0, i32 2
  %method4963 = load void (%AVLTree*, %Number*)** %fptmp4962
  %mem_ptr4956 = call i32* @oat_malloc ( i32 16 )
  %obj4957 = bitcast i32* %mem_ptr4956 to %Quotient* 
  %new_obj4958 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4957, i32 3, i32 4 )
  %cast_op4964 = bitcast %Quotient* %new_obj4958 to %Number* 
  call void %method4963( %AVLTree* %lhs_or_call4959, %Number* %cast_op4964 )
  %lhs_or_call4968 = load %AVLTree** %vdecl_slot4909
  %vtmp4970 = getelementptr %AVLTree* %lhs_or_call4968, i32 0, i32 0
  %vtable4969 = load %_AVLTree_vtable** %vtmp4970
  %fptmp4971 = getelementptr %_AVLTree_vtable* %vtable4969, i32 0, i32 2
  %method4972 = load void (%AVLTree*, %Number*)** %fptmp4971
  %mem_ptr4965 = call i32* @oat_malloc ( i32 16 )
  %obj4966 = bitcast i32* %mem_ptr4965 to %Quotient* 
  %new_obj4967 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4966, i32 4, i32 5 )
  %cast_op4973 = bitcast %Quotient* %new_obj4967 to %Number* 
  call void %method4972( %AVLTree* %lhs_or_call4968, %Number* %cast_op4973 )
  %lhs_or_call4977 = load %AVLTree** %vdecl_slot4909
  %vtmp4979 = getelementptr %AVLTree* %lhs_or_call4977, i32 0, i32 0
  %vtable4978 = load %_AVLTree_vtable** %vtmp4979
  %fptmp4980 = getelementptr %_AVLTree_vtable* %vtable4978, i32 0, i32 4
  %method4981 = load void (%BSTree*, %Number*)** %fptmp4980
  %mem_ptr4974 = call i32* @oat_malloc ( i32 16 )
  %obj4975 = bitcast i32* %mem_ptr4974 to %Quotient* 
  %new_obj4976 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4975, i32 1, i32 4 )
  %cast_op4982 = bitcast %Quotient* %new_obj4976 to %Number* 
  %cast_op4983 = bitcast %AVLTree* %lhs_or_call4977 to %BSTree* 
  call void %method4981( %BSTree* %cast_op4983, %Number* %cast_op4982 )
  %lhs_or_call4984 = load %AVLTree** %vdecl_slot4909
  %vtmp4986 = getelementptr %AVLTree* %lhs_or_call4984, i32 0, i32 0
  %vtable4985 = load %_AVLTree_vtable** %vtmp4986
  %fptmp4987 = getelementptr %_AVLTree_vtable* %vtable4985, i32 0, i32 11
  %method4988 = load i32 (%AVLTree*)** %fptmp4987
  %ret4989 = call i32 %method4988 ( %AVLTree* %lhs_or_call4984 )
  %vdecl_slot4990 = alloca i32
  store i32 %ret4989, i32* %vdecl_slot4990
  %lhs_or_call4991 = load %AVLTree** %vdecl_slot4909
  %cast_op4992 = bitcast %AVLTree* %lhs_or_call4991 to %BSTree* 
  %ret4993 = call %Quotient* @addAll ( %BSTree* %cast_op4992 )
  %vdecl_slot4994 = alloca %Quotient*
  store %Quotient* %ret4993, %Quotient** %vdecl_slot4994
  %lhs_or_call5000 = load %Quotient** %vdecl_slot4994
  %vtmp5002 = getelementptr %Quotient* %lhs_or_call5000, i32 0, i32 0
  %vtable5001 = load %_Quotient_vtable** %vtmp5002
  %fptmp5003 = getelementptr %_Quotient_vtable* %vtable5001, i32 0, i32 6
  %method5004 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp5003
  %lhs_or_call4995 = load i32* %vdecl_slot4990
  %unop4996 = sub i32 0, %lhs_or_call4995
  %mem_ptr4997 = call i32* @oat_malloc ( i32 16 )
  %obj4998 = bitcast i32* %mem_ptr4997 to %Integer* 
  %new_obj4999 = call %Integer* @_Integer_ctor ( %Integer* %obj4998, i32 %unop4996 )
  %cast_op5005 = bitcast %Integer* %new_obj4999 to %Quotient* 
  %ret5006 = call %Quotient* %method5004 ( %Quotient* %lhs_or_call5000, %Quotient* %cast_op5005 )
  store %Quotient* %ret5006, %Quotient** %vdecl_slot4994
  %lhs_or_call5007 = load %Quotient** %vdecl_slot4994
  %vtmp5009 = getelementptr %Quotient* %lhs_or_call5007, i32 0, i32 0
  %vtable5008 = load %_Quotient_vtable** %vtmp5009
  %fptmp5010 = getelementptr %_Quotient_vtable* %vtable5008, i32 0, i32 4
  %method5011 = load i32 (%Quotient*)** %fptmp5010
  %ret5012 = call i32 %method5011 ( %Quotient* %lhs_or_call5007 )
  %lhs_or_call5013 = load %Quotient** %vdecl_slot4994
  %vtmp5015 = getelementptr %Quotient* %lhs_or_call5013, i32 0, i32 0
  %vtable5014 = load %_Quotient_vtable** %vtmp5015
  %fptmp5016 = getelementptr %_Quotient_vtable* %vtable5014, i32 0, i32 5
  %method5017 = load i32 (%Quotient*)** %fptmp5016
  %ret5018 = call i32 %method5017 ( %Quotient* %lhs_or_call5013 )
  %bop5019 = sub i32 %ret5012, %ret5018
  store i32 %bop5019, i32* %vdecl_slot4910
  %lhs_or_call5020 = load i32* %vdecl_slot4910
  ret i32 %lhs_or_call5020
}


define %Quotient* @addAll (%BSTree* %t4843){
__fresh1596:
  %t_slot4844 = alloca %BSTree*
  store %BSTree* %t4843, %BSTree** %t_slot4844
  %mem_ptr4845 = call i32* @oat_malloc ( i32 16 )
  %obj4846 = bitcast i32* %mem_ptr4845 to %Zero* 
  %new_obj4847 = call %Zero* @_Zero_ctor ( %Zero* %obj4846 )
  %cast_op4848 = bitcast %Zero* %new_obj4847 to %Quotient* 
  %vdecl_slot4849 = alloca %Quotient*
  store %Quotient* %cast_op4848, %Quotient** %vdecl_slot4849
  %lhs_or_call4850 = load %BSTree** %t_slot4844
  %path4851 = getelementptr %BSTree* %lhs_or_call4850, i32 0, i32 3
  %lhs_or_call4852 = load %BSTree** %path4851
  %ifnull_slot4853 = alloca %BSTree*
  store %BSTree* %lhs_or_call4852, %BSTree** %ifnull_slot4853
  %ifnull_guard4854 = icmp ne %BSTree* %lhs_or_call4852, null
  br i1 %ifnull_guard4854, label %__then1583, label %__else1582

__fresh1597:
  br label %__then1583

__then1583:
  %lhs_or_call4857 = load %Quotient** %vdecl_slot4849
  %vtmp4859 = getelementptr %Quotient* %lhs_or_call4857, i32 0, i32 0
  %vtable4858 = load %_Quotient_vtable** %vtmp4859
  %fptmp4860 = getelementptr %_Quotient_vtable* %vtable4858, i32 0, i32 6
  %method4861 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4860
  %lhs_or_call4855 = load %BSTree** %ifnull_slot4853
  %ret4856 = call %Quotient* @addAll ( %BSTree* %lhs_or_call4855 )
  %ret4862 = call %Quotient* %method4861 ( %Quotient* %lhs_or_call4857, %Quotient* %ret4856 )
  store %Quotient* %ret4862, %Quotient** %vdecl_slot4849
  br label %__merge1581

__fresh1598:
  br label %__else1582

__else1582:
  br label %__merge1581

__merge1581:
  %lhs_or_call4863 = load %BSTree** %t_slot4844
  %path4864 = getelementptr %BSTree* %lhs_or_call4863, i32 0, i32 2
  %lhs_or_call4865 = load %Number** %path4864
  %ifnull_slot4866 = alloca %Number*
  store %Number* %lhs_or_call4865, %Number** %ifnull_slot4866
  %ifnull_guard4867 = icmp ne %Number* %lhs_or_call4865, null
  br i1 %ifnull_guard4867, label %__then1592, label %__else1591

__fresh1599:
  br label %__then1592

__then1592:
  %lhs_or_call4868 = load %Number** %ifnull_slot4866
  %cast_op4869 = bitcast %Number* %lhs_or_call4868 to %Quotient* 
  %cast_op4870 = bitcast %Quotient* %cast_op4869 to i8** 
  %cast_op4871 = bitcast %_Quotient_vtable* @_Quotient_vtable593 to i8* 
  %vt_ptr_slot4872 = alloca i8*
  %tmp04874 = load i8** %cast_op4870
  store i8* %tmp04874, i8** %vt_ptr_slot4872
  br label %__loop1589

__loop1589:
  %tmp14875 = load i8** %vt_ptr_slot4872
  %guard14879 = icmp eq i8* %tmp14875, %cast_op4871
  br i1 %guard14879, label %__then1586, label %__fall11588

__fresh1600:
  br label %__fall11588

__fall11588:
  %guard24880 = icmp eq i8* %tmp14875, null
  br i1 %guard24880, label %__else1585, label %__fall21587

__fresh1601:
  br label %__fall21587

__fall21587:
  %tmp24876 = load i8** %vt_ptr_slot4872
  %tmp34877 = bitcast i8* %tmp24876 to i8** 
  %tmp44878 = load i8** %tmp34877
  store i8* %tmp44878, i8** %vt_ptr_slot4872
  br label %__loop1589

__fresh1602:
  br label %__then1586

__then1586:
  %var_slot4873 = alloca %Quotient*
  store %Quotient* %cast_op4869, %Quotient** %var_slot4873
  %lhs_or_call4882 = load %Quotient** %vdecl_slot4849
  %vtmp4884 = getelementptr %Quotient* %lhs_or_call4882, i32 0, i32 0
  %vtable4883 = load %_Quotient_vtable** %vtmp4884
  %fptmp4885 = getelementptr %_Quotient_vtable* %vtable4883, i32 0, i32 6
  %method4886 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4885
  %lhs_or_call4881 = load %Quotient** %var_slot4873
  %ret4887 = call %Quotient* %method4886 ( %Quotient* %lhs_or_call4882, %Quotient* %lhs_or_call4881 )
  store %Quotient* %ret4887, %Quotient** %vdecl_slot4849
  br label %__done1584

__fresh1603:
  br label %__else1585

__else1585:
  br label %__done1584

__done1584:
  br label %__merge1590

__fresh1604:
  br label %__else1591

__else1591:
  br label %__merge1590

__merge1590:
  %lhs_or_call4888 = load %BSTree** %t_slot4844
  %path4889 = getelementptr %BSTree* %lhs_or_call4888, i32 0, i32 4
  %lhs_or_call4890 = load %BSTree** %path4889
  %ifnull_slot4891 = alloca %BSTree*
  store %BSTree* %lhs_or_call4890, %BSTree** %ifnull_slot4891
  %ifnull_guard4892 = icmp ne %BSTree* %lhs_or_call4890, null
  br i1 %ifnull_guard4892, label %__then1595, label %__else1594

__fresh1605:
  br label %__then1595

__then1595:
  %lhs_or_call4895 = load %Quotient** %vdecl_slot4849
  %vtmp4897 = getelementptr %Quotient* %lhs_or_call4895, i32 0, i32 0
  %vtable4896 = load %_Quotient_vtable** %vtmp4897
  %fptmp4898 = getelementptr %_Quotient_vtable* %vtable4896, i32 0, i32 6
  %method4899 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4898
  %lhs_or_call4893 = load %BSTree** %ifnull_slot4891
  %ret4894 = call %Quotient* @addAll ( %BSTree* %lhs_or_call4893 )
  %ret4900 = call %Quotient* %method4899 ( %Quotient* %lhs_or_call4895, %Quotient* %ret4894 )
  store %Quotient* %ret4900, %Quotient** %vdecl_slot4849
  br label %__merge1593

__fresh1606:
  br label %__else1594

__else1594:
  br label %__merge1593

__merge1593:
  %lhs_or_call4901 = load %Quotient** %vdecl_slot4849
  ret %Quotient* %lhs_or_call4901
}


define void @inOrder (%BSTree* %t4818){
__fresh1574:
  %t_slot4819 = alloca %BSTree*
  store %BSTree* %t4818, %BSTree** %t_slot4819
  %lhs_or_call4820 = load %BSTree** %t_slot4819
  %path4821 = getelementptr %BSTree* %lhs_or_call4820, i32 0, i32 3
  %lhs_or_call4822 = load %BSTree** %path4821
  %ifnull_slot4823 = alloca %BSTree*
  store %BSTree* %lhs_or_call4822, %BSTree** %ifnull_slot4823
  %ifnull_guard4824 = icmp ne %BSTree* %lhs_or_call4822, null
  br i1 %ifnull_guard4824, label %__then1567, label %__else1566

__fresh1575:
  br label %__then1567

__then1567:
  %lhs_or_call4825 = load %BSTree** %ifnull_slot4823
  call void @inOrder( %BSTree* %lhs_or_call4825 )
  br label %__merge1565

__fresh1576:
  br label %__else1566

__else1566:
  br label %__merge1565

__merge1565:
  %lhs_or_call4826 = load %BSTree** %t_slot4819
  %path4827 = getelementptr %BSTree* %lhs_or_call4826, i32 0, i32 2
  %lhs_or_call4828 = load %Number** %path4827
  %ifnull_slot4829 = alloca %Number*
  store %Number* %lhs_or_call4828, %Number** %ifnull_slot4829
  %ifnull_guard4830 = icmp ne %Number* %lhs_or_call4828, null
  br i1 %ifnull_guard4830, label %__then1570, label %__else1569

__fresh1577:
  br label %__then1570

__then1570:
  %lhs_or_call4831 = load %Number** %ifnull_slot4829
  %vtmp4833 = getelementptr %Number* %lhs_or_call4831, i32 0, i32 0
  %vtable4832 = load %_Number_vtable** %vtmp4833
  %fptmp4834 = getelementptr %_Number_vtable* %vtable4832, i32 0, i32 3
  %method4835 = load i8* (%Number*)** %fptmp4834
  %ret4836 = call i8* %method4835 ( %Number* %lhs_or_call4831 )
  call void @print_string( i8* %ret4836 )
  br label %__merge1568

__fresh1578:
  br label %__else1569

__else1569:
  br label %__merge1568

__merge1568:
  %lhs_or_call4837 = load %BSTree** %t_slot4819
  %path4838 = getelementptr %BSTree* %lhs_or_call4837, i32 0, i32 4
  %lhs_or_call4839 = load %BSTree** %path4838
  %ifnull_slot4840 = alloca %BSTree*
  store %BSTree* %lhs_or_call4839, %BSTree** %ifnull_slot4840
  %ifnull_guard4841 = icmp ne %BSTree* %lhs_or_call4839, null
  br i1 %ifnull_guard4841, label %__then1573, label %__else1572

__fresh1579:
  br label %__then1573

__then1573:
  %lhs_or_call4842 = load %BSTree** %ifnull_slot4840
  call void @inOrder( %BSTree* %lhs_or_call4842 )
  br label %__merge1571

__fresh1580:
  br label %__else1572

__else1572:
  br label %__merge1571

__merge1571:
  ret void
}


define i32 @max (i32 %x4809, i32 %y4807){
__fresh1562:
  %x_slot4810 = alloca i32
  store i32 %x4809, i32* %x_slot4810
  %y_slot4808 = alloca i32
  store i32 %y4807, i32* %y_slot4808
  %vdecl_slot4811 = alloca i32
  store i32 0, i32* %vdecl_slot4811
  %lhs_or_call4812 = load i32* %x_slot4810
  %lhs_or_call4813 = load i32* %y_slot4808
  %bop4814 = icmp slt i32 %lhs_or_call4812, %lhs_or_call4813
  br i1 %bop4814, label %__then1561, label %__else1560

__fresh1563:
  br label %__then1561

__then1561:
  %lhs_or_call4815 = load i32* %y_slot4808
  store i32 %lhs_or_call4815, i32* %vdecl_slot4811
  br label %__merge1559

__fresh1564:
  br label %__else1560

__else1560:
  %lhs_or_call4816 = load i32* %x_slot4810
  store i32 %lhs_or_call4816, i32* %vdecl_slot4811
  br label %__merge1559

__merge1559:
  %lhs_or_call4817 = load i32* %vdecl_slot4811
  ret i32 %lhs_or_call4817
}


define i32 @_AVLTree_get_height (%AVLTree* %_this1){
__fresh1558:
  %path4805 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %lhs_or_call4806 = load i32* %path4805
  ret i32 %lhs_or_call4806
}


define %AVLTree* @_AVLTree_bstToAvl (%AVLTree* %_this1, %BSTree* %t4782){
__fresh1551:
  %t_slot4783 = alloca %BSTree*
  store %BSTree* %t4782, %BSTree** %t_slot4783
  %cast_op4784 = bitcast i8* null to %AVLTree* 
  %vdecl_slot4785 = alloca %AVLTree*
  store %AVLTree* %cast_op4784, %AVLTree** %vdecl_slot4785
  %lhs_or_call4786 = load %BSTree** %t_slot4783
  %ifnull_slot4787 = alloca %BSTree*
  store %BSTree* %lhs_or_call4786, %BSTree** %ifnull_slot4787
  %ifnull_guard4788 = icmp ne %BSTree* %lhs_or_call4786, null
  br i1 %ifnull_guard4788, label %__then1550, label %__else1549

__fresh1552:
  br label %__then1550

__then1550:
  %lhs_or_call4789 = load %BSTree** %ifnull_slot4787
  %cast_op4790 = bitcast %BSTree* %lhs_or_call4789 to %AVLTree* 
  %cast_op4791 = bitcast %AVLTree* %cast_op4790 to i8** 
  %cast_op4792 = bitcast %_AVLTree_vtable* @_AVLTree_vtable597 to i8* 
  %vt_ptr_slot4793 = alloca i8*
  %tmp04795 = load i8** %cast_op4791
  store i8* %tmp04795, i8** %vt_ptr_slot4793
  br label %__loop1547

__loop1547:
  %tmp14796 = load i8** %vt_ptr_slot4793
  %guard14800 = icmp eq i8* %tmp14796, %cast_op4792
  br i1 %guard14800, label %__then1544, label %__fall11546

__fresh1553:
  br label %__fall11546

__fall11546:
  %guard24801 = icmp eq i8* %tmp14796, null
  br i1 %guard24801, label %__else1543, label %__fall21545

__fresh1554:
  br label %__fall21545

__fall21545:
  %tmp24797 = load i8** %vt_ptr_slot4793
  %tmp34798 = bitcast i8* %tmp24797 to i8** 
  %tmp44799 = load i8** %tmp34798
  store i8* %tmp44799, i8** %vt_ptr_slot4793
  br label %__loop1547

__fresh1555:
  br label %__then1544

__then1544:
  %var_slot4794 = alloca %AVLTree*
  store %AVLTree* %cast_op4790, %AVLTree** %var_slot4794
  %lhs_or_call4802 = load %AVLTree** %var_slot4794
  store %AVLTree* %lhs_or_call4802, %AVLTree** %vdecl_slot4785
  br label %__done1542

__fresh1556:
  br label %__else1543

__else1543:
  call void @print_string( i8* @_const_str627 )
  call void @oat_abort( i32 -1 )
  br label %__done1542

__done1542:
  br label %__merge1548

__fresh1557:
  br label %__else1549

__else1549:
  %cast_op4803 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4803, %AVLTree** %vdecl_slot4785
  br label %__merge1548

__merge1548:
  %lhs_or_call4804 = load %AVLTree** %vdecl_slot4785
  ret %AVLTree* %lhs_or_call4804
}


define void @_AVLTree_rightRotate (%AVLTree* %_this1){
__fresh1533:
  %path4721 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4722 = load %BSTree** %path4721
  %ifnull_slot4723 = alloca %BSTree*
  store %BSTree* %lhs_or_call4722, %BSTree** %ifnull_slot4723
  %ifnull_guard4724 = icmp ne %BSTree* %lhs_or_call4722, null
  br i1 %ifnull_guard4724, label %__then1532, label %__else1531

__fresh1534:
  br label %__then1532

__then1532:
  %path4725 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4726 = load %Number** %path4725
  %vdecl_slot4727 = alloca %Number*
  store %Number* %lhs_or_call4726, %Number** %vdecl_slot4727
  %path4728 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4729 = load %BSTree** %ifnull_slot4723
  %path4730 = getelementptr %BSTree* %lhs_or_call4729, i32 0, i32 2
  %lhs_or_call4731 = load %Number** %path4730
  store %Number* %lhs_or_call4731, %Number** %path4728
  %lhs_or_call4732 = load %BSTree** %ifnull_slot4723
  %path4733 = getelementptr %BSTree* %lhs_or_call4732, i32 0, i32 2
  %lhs_or_call4734 = load %Number** %vdecl_slot4727
  store %Number* %lhs_or_call4734, %Number** %path4733
  %path4735 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4736 = load %BSTree** %ifnull_slot4723
  %path4737 = getelementptr %BSTree* %lhs_or_call4736, i32 0, i32 3
  %lhs_or_call4738 = load %BSTree** %path4737
  store %BSTree* %lhs_or_call4738, %BSTree** %path4735
  %lhs_or_call4739 = load %BSTree** %ifnull_slot4723
  %path4740 = getelementptr %BSTree* %lhs_or_call4739, i32 0, i32 3
  %lhs_or_call4741 = load %BSTree** %ifnull_slot4723
  %path4742 = getelementptr %BSTree* %lhs_or_call4741, i32 0, i32 4
  %lhs_or_call4743 = load %BSTree** %path4742
  store %BSTree* %lhs_or_call4743, %BSTree** %path4740
  %lhs_or_call4744 = load %BSTree** %ifnull_slot4723
  %path4745 = getelementptr %BSTree* %lhs_or_call4744, i32 0, i32 4
  %path4746 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4747 = load %BSTree** %path4746
  store %BSTree* %lhs_or_call4747, %BSTree** %path4745
  %path4748 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4749 = load %BSTree** %ifnull_slot4723
  store %BSTree* %lhs_or_call4749, %BSTree** %path4748
  %path4750 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4751 = load %BSTree** %path4750
  %ifnull_slot4752 = alloca %BSTree*
  store %BSTree* %lhs_or_call4751, %BSTree** %ifnull_slot4752
  %ifnull_guard4753 = icmp ne %BSTree* %lhs_or_call4751, null
  br i1 %ifnull_guard4753, label %__then1523, label %__else1522

__fresh1535:
  br label %__then1523

__then1523:
  %lhs_or_call4754 = load %BSTree** %ifnull_slot4752
  %path4755 = getelementptr %BSTree* %lhs_or_call4754, i32 0, i32 5
  %cast_op4756 = bitcast %AVLTree* %_this1 to %BSTree* 
  store %BSTree* %cast_op4756, %BSTree** %path4755
  br label %__merge1521

__fresh1536:
  br label %__else1522

__else1522:
  br label %__merge1521

__merge1521:
  %lhs_or_call4757 = load %BSTree** %ifnull_slot4723
  %path4758 = getelementptr %BSTree* %lhs_or_call4757, i32 0, i32 4
  %lhs_or_call4759 = load %BSTree** %path4758
  %ifnull_slot4760 = alloca %BSTree*
  store %BSTree* %lhs_or_call4759, %BSTree** %ifnull_slot4760
  %ifnull_guard4761 = icmp ne %BSTree* %lhs_or_call4759, null
  br i1 %ifnull_guard4761, label %__then1526, label %__else1525

__fresh1537:
  br label %__then1526

__then1526:
  %lhs_or_call4762 = load %BSTree** %ifnull_slot4760
  %path4763 = getelementptr %BSTree* %lhs_or_call4762, i32 0, i32 5
  %lhs_or_call4764 = load %BSTree** %ifnull_slot4723
  store %BSTree* %lhs_or_call4764, %BSTree** %path4763
  br label %__merge1524

__fresh1538:
  br label %__else1525

__else1525:
  br label %__merge1524

__merge1524:
  %vtmp4767 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4766 = load %_AVLTree_vtable** %vtmp4767
  %fptmp4768 = getelementptr %_AVLTree_vtable* %vtable4766, i32 0, i32 10
  %method4769 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4768
  %lhs_or_call4765 = load %BSTree** %ifnull_slot4723
  %ret4770 = call %AVLTree* %method4769 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4765 )
  %ifnull_slot4771 = alloca %AVLTree*
  store %AVLTree* %ret4770, %AVLTree** %ifnull_slot4771
  %ifnull_guard4772 = icmp ne %AVLTree* %ret4770, null
  br i1 %ifnull_guard4772, label %__then1529, label %__else1528

__fresh1539:
  br label %__then1529

__then1529:
  %lhs_or_call4773 = load %AVLTree** %ifnull_slot4771
  %vtmp4775 = getelementptr %AVLTree* %lhs_or_call4773, i32 0, i32 0
  %vtable4774 = load %_AVLTree_vtable** %vtmp4775
  %fptmp4776 = getelementptr %_AVLTree_vtable* %vtable4774, i32 0, i32 6
  %method4777 = load void (%AVLTree*)** %fptmp4776
  call void %method4777( %AVLTree* %lhs_or_call4773 )
  br label %__merge1527

__fresh1540:
  br label %__else1528

__else1528:
  call void @print_string( i8* @_const_str625 )
  call void @oat_abort( i32 -1 )
  br label %__merge1527

__merge1527:
  %vtmp4779 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4778 = load %_AVLTree_vtable** %vtmp4779
  %fptmp4780 = getelementptr %_AVLTree_vtable* %vtable4778, i32 0, i32 6
  %method4781 = load void (%AVLTree*)** %fptmp4780
  call void %method4781( %AVLTree* %_this1 )
  br label %__merge1530

__fresh1541:
  br label %__else1531

__else1531:
  call void @print_string( i8* @_const_str626 )
  call void @oat_abort( i32 -1 )
  br label %__merge1530

__merge1530:
  ret void
}


define void @_AVLTree_leftRotate (%AVLTree* %_this1){
__fresh1512:
  %path4660 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4661 = load %BSTree** %path4660
  %ifnull_slot4662 = alloca %BSTree*
  store %BSTree* %lhs_or_call4661, %BSTree** %ifnull_slot4662
  %ifnull_guard4663 = icmp ne %BSTree* %lhs_or_call4661, null
  br i1 %ifnull_guard4663, label %__then1511, label %__else1510

__fresh1513:
  br label %__then1511

__then1511:
  %path4664 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4665 = load %Number** %path4664
  %vdecl_slot4666 = alloca %Number*
  store %Number* %lhs_or_call4665, %Number** %vdecl_slot4666
  %path4667 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4668 = load %BSTree** %ifnull_slot4662
  %path4669 = getelementptr %BSTree* %lhs_or_call4668, i32 0, i32 2
  %lhs_or_call4670 = load %Number** %path4669
  store %Number* %lhs_or_call4670, %Number** %path4667
  %lhs_or_call4671 = load %BSTree** %ifnull_slot4662
  %path4672 = getelementptr %BSTree* %lhs_or_call4671, i32 0, i32 2
  %lhs_or_call4673 = load %Number** %vdecl_slot4666
  store %Number* %lhs_or_call4673, %Number** %path4672
  %path4674 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4675 = load %BSTree** %ifnull_slot4662
  %path4676 = getelementptr %BSTree* %lhs_or_call4675, i32 0, i32 4
  %lhs_or_call4677 = load %BSTree** %path4676
  store %BSTree* %lhs_or_call4677, %BSTree** %path4674
  %lhs_or_call4678 = load %BSTree** %ifnull_slot4662
  %path4679 = getelementptr %BSTree* %lhs_or_call4678, i32 0, i32 4
  %lhs_or_call4680 = load %BSTree** %ifnull_slot4662
  %path4681 = getelementptr %BSTree* %lhs_or_call4680, i32 0, i32 3
  %lhs_or_call4682 = load %BSTree** %path4681
  store %BSTree* %lhs_or_call4682, %BSTree** %path4679
  %lhs_or_call4683 = load %BSTree** %ifnull_slot4662
  %path4684 = getelementptr %BSTree* %lhs_or_call4683, i32 0, i32 3
  %path4685 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4686 = load %BSTree** %path4685
  store %BSTree* %lhs_or_call4686, %BSTree** %path4684
  %path4687 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4688 = load %BSTree** %ifnull_slot4662
  store %BSTree* %lhs_or_call4688, %BSTree** %path4687
  %path4689 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4690 = load %BSTree** %path4689
  %ifnull_slot4691 = alloca %BSTree*
  store %BSTree* %lhs_or_call4690, %BSTree** %ifnull_slot4691
  %ifnull_guard4692 = icmp ne %BSTree* %lhs_or_call4690, null
  br i1 %ifnull_guard4692, label %__then1502, label %__else1501

__fresh1514:
  br label %__then1502

__then1502:
  %lhs_or_call4693 = load %BSTree** %ifnull_slot4691
  %path4694 = getelementptr %BSTree* %lhs_or_call4693, i32 0, i32 5
  %cast_op4695 = bitcast %AVLTree* %_this1 to %BSTree* 
  store %BSTree* %cast_op4695, %BSTree** %path4694
  br label %__merge1500

__fresh1515:
  br label %__else1501

__else1501:
  br label %__merge1500

__merge1500:
  %lhs_or_call4696 = load %BSTree** %ifnull_slot4662
  %path4697 = getelementptr %BSTree* %lhs_or_call4696, i32 0, i32 3
  %lhs_or_call4698 = load %BSTree** %path4697
  %ifnull_slot4699 = alloca %BSTree*
  store %BSTree* %lhs_or_call4698, %BSTree** %ifnull_slot4699
  %ifnull_guard4700 = icmp ne %BSTree* %lhs_or_call4698, null
  br i1 %ifnull_guard4700, label %__then1505, label %__else1504

__fresh1516:
  br label %__then1505

__then1505:
  %lhs_or_call4701 = load %BSTree** %ifnull_slot4699
  %path4702 = getelementptr %BSTree* %lhs_or_call4701, i32 0, i32 5
  %lhs_or_call4703 = load %BSTree** %ifnull_slot4662
  store %BSTree* %lhs_or_call4703, %BSTree** %path4702
  br label %__merge1503

__fresh1517:
  br label %__else1504

__else1504:
  br label %__merge1503

__merge1503:
  %vtmp4706 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4705 = load %_AVLTree_vtable** %vtmp4706
  %fptmp4707 = getelementptr %_AVLTree_vtable* %vtable4705, i32 0, i32 10
  %method4708 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4707
  %lhs_or_call4704 = load %BSTree** %ifnull_slot4662
  %ret4709 = call %AVLTree* %method4708 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4704 )
  %ifnull_slot4710 = alloca %AVLTree*
  store %AVLTree* %ret4709, %AVLTree** %ifnull_slot4710
  %ifnull_guard4711 = icmp ne %AVLTree* %ret4709, null
  br i1 %ifnull_guard4711, label %__then1508, label %__else1507

__fresh1518:
  br label %__then1508

__then1508:
  %lhs_or_call4712 = load %AVLTree** %ifnull_slot4710
  %vtmp4714 = getelementptr %AVLTree* %lhs_or_call4712, i32 0, i32 0
  %vtable4713 = load %_AVLTree_vtable** %vtmp4714
  %fptmp4715 = getelementptr %_AVLTree_vtable* %vtable4713, i32 0, i32 6
  %method4716 = load void (%AVLTree*)** %fptmp4715
  call void %method4716( %AVLTree* %lhs_or_call4712 )
  br label %__merge1506

__fresh1519:
  br label %__else1507

__else1507:
  call void @print_string( i8* @_const_str623 )
  call void @oat_abort( i32 -1 )
  br label %__merge1506

__merge1506:
  %vtmp4718 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4717 = load %_AVLTree_vtable** %vtmp4718
  %fptmp4719 = getelementptr %_AVLTree_vtable* %vtable4717, i32 0, i32 6
  %method4720 = load void (%AVLTree*)** %fptmp4719
  call void %method4720( %AVLTree* %_this1 )
  br label %__merge1509

__fresh1520:
  br label %__else1510

__else1510:
  call void @print_string( i8* @_const_str624 )
  call void @oat_abort( i32 -1 )
  br label %__merge1509

__merge1509:
  ret void
}


define void @_AVLTree_checkBalance (%AVLTree* %_this1){
__fresh1475:
  %vdecl_slot4522 = alloca i32
  store i32 0, i32* %vdecl_slot4522
  %vdecl_slot4523 = alloca i32
  store i32 0, i32* %vdecl_slot4523
  %vtmp4527 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4526 = load %_AVLTree_vtable** %vtmp4527
  %fptmp4528 = getelementptr %_AVLTree_vtable* %vtable4526, i32 0, i32 10
  %method4529 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4528
  %path4524 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4525 = load %BSTree** %path4524
  %ret4530 = call %AVLTree* %method4529 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4525 )
  %ifnull_slot4531 = alloca %AVLTree*
  store %AVLTree* %ret4530, %AVLTree** %ifnull_slot4531
  %ifnull_guard4532 = icmp ne %AVLTree* %ret4530, null
  br i1 %ifnull_guard4532, label %__then1441, label %__else1440

__fresh1476:
  br label %__then1441

__then1441:
  %lhs_or_call4533 = load %AVLTree** %ifnull_slot4531
  %path4534 = getelementptr %AVLTree* %lhs_or_call4533, i32 0, i32 6
  %lhs_or_call4535 = load i32* %path4534
  store i32 %lhs_or_call4535, i32* %vdecl_slot4522
  br label %__merge1439

__fresh1477:
  br label %__else1440

__else1440:
  %unop4536 = sub i32 0, 1
  store i32 %unop4536, i32* %vdecl_slot4522
  br label %__merge1439

__merge1439:
  %vtmp4540 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4539 = load %_AVLTree_vtable** %vtmp4540
  %fptmp4541 = getelementptr %_AVLTree_vtable* %vtable4539, i32 0, i32 10
  %method4542 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4541
  %path4537 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4538 = load %BSTree** %path4537
  %ret4543 = call %AVLTree* %method4542 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4538 )
  %ifnull_slot4544 = alloca %AVLTree*
  store %AVLTree* %ret4543, %AVLTree** %ifnull_slot4544
  %ifnull_guard4545 = icmp ne %AVLTree* %ret4543, null
  br i1 %ifnull_guard4545, label %__then1444, label %__else1443

__fresh1478:
  br label %__then1444

__then1444:
  %lhs_or_call4546 = load %AVLTree** %ifnull_slot4544
  %path4547 = getelementptr %AVLTree* %lhs_or_call4546, i32 0, i32 6
  %lhs_or_call4548 = load i32* %path4547
  store i32 %lhs_or_call4548, i32* %vdecl_slot4523
  br label %__merge1442

__fresh1479:
  br label %__else1443

__else1443:
  %unop4549 = sub i32 0, 1
  store i32 %unop4549, i32* %vdecl_slot4523
  br label %__merge1442

__merge1442:
  %lhs_or_call4550 = load i32* %vdecl_slot4522
  %lhs_or_call4551 = load i32* %vdecl_slot4523
  %bop4552 = sub i32 %lhs_or_call4550, %lhs_or_call4551
  %ret4553 = call i32 @abs ( i32 %bop4552 )
  %bop4554 = icmp sgt i32 %ret4553, 1
  br i1 %bop4554, label %__then1474, label %__else1473

__fresh1480:
  br label %__then1474

__then1474:
  %lhs_or_call4555 = load i32* %vdecl_slot4522
  %lhs_or_call4556 = load i32* %vdecl_slot4523
  %bop4557 = icmp sgt i32 %lhs_or_call4555, %lhs_or_call4556
  br i1 %bop4557, label %__then1471, label %__else1470

__fresh1481:
  br label %__then1471

__then1471:
  %vtmp4561 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4560 = load %_AVLTree_vtable** %vtmp4561
  %fptmp4562 = getelementptr %_AVLTree_vtable* %vtable4560, i32 0, i32 10
  %method4563 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4562
  %path4558 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4559 = load %BSTree** %path4558
  %ret4564 = call %AVLTree* %method4563 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4559 )
  %ifnull_slot4565 = alloca %AVLTree*
  store %AVLTree* %ret4564, %AVLTree** %ifnull_slot4565
  %ifnull_guard4566 = icmp ne %AVLTree* %ret4564, null
  br i1 %ifnull_guard4566, label %__then1456, label %__else1455

__fresh1482:
  br label %__then1456

__then1456:
  %vdecl_slot4567 = alloca i32
  store i32 0, i32* %vdecl_slot4567
  %vdecl_slot4568 = alloca i32
  store i32 0, i32* %vdecl_slot4568
  %vtmp4573 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4572 = load %_AVLTree_vtable** %vtmp4573
  %fptmp4574 = getelementptr %_AVLTree_vtable* %vtable4572, i32 0, i32 10
  %method4575 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4574
  %lhs_or_call4569 = load %AVLTree** %ifnull_slot4565
  %path4570 = getelementptr %AVLTree* %lhs_or_call4569, i32 0, i32 3
  %lhs_or_call4571 = load %BSTree** %path4570
  %ret4576 = call %AVLTree* %method4575 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4571 )
  %ifnull_slot4577 = alloca %AVLTree*
  store %AVLTree* %ret4576, %AVLTree** %ifnull_slot4577
  %ifnull_guard4578 = icmp ne %AVLTree* %ret4576, null
  br i1 %ifnull_guard4578, label %__then1447, label %__else1446

__fresh1483:
  br label %__then1447

__then1447:
  %lhs_or_call4579 = load %AVLTree** %ifnull_slot4577
  %path4580 = getelementptr %AVLTree* %lhs_or_call4579, i32 0, i32 6
  %lhs_or_call4581 = load i32* %path4580
  store i32 %lhs_or_call4581, i32* %vdecl_slot4567
  br label %__merge1445

__fresh1484:
  br label %__else1446

__else1446:
  %unop4582 = sub i32 0, 1
  store i32 %unop4582, i32* %vdecl_slot4567
  br label %__merge1445

__merge1445:
  %vtmp4587 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4586 = load %_AVLTree_vtable** %vtmp4587
  %fptmp4588 = getelementptr %_AVLTree_vtable* %vtable4586, i32 0, i32 10
  %method4589 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4588
  %lhs_or_call4583 = load %AVLTree** %ifnull_slot4565
  %path4584 = getelementptr %AVLTree* %lhs_or_call4583, i32 0, i32 4
  %lhs_or_call4585 = load %BSTree** %path4584
  %ret4590 = call %AVLTree* %method4589 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4585 )
  %ifnull_slot4591 = alloca %AVLTree*
  store %AVLTree* %ret4590, %AVLTree** %ifnull_slot4591
  %ifnull_guard4592 = icmp ne %AVLTree* %ret4590, null
  br i1 %ifnull_guard4592, label %__then1450, label %__else1449

__fresh1485:
  br label %__then1450

__then1450:
  %lhs_or_call4593 = load %AVLTree** %ifnull_slot4591
  %path4594 = getelementptr %AVLTree* %lhs_or_call4593, i32 0, i32 6
  %lhs_or_call4595 = load i32* %path4594
  store i32 %lhs_or_call4595, i32* %vdecl_slot4568
  br label %__merge1448

__fresh1486:
  br label %__else1449

__else1449:
  %unop4596 = sub i32 0, 1
  store i32 %unop4596, i32* %vdecl_slot4568
  br label %__merge1448

__merge1448:
  %lhs_or_call4597 = load i32* %vdecl_slot4567
  %lhs_or_call4598 = load i32* %vdecl_slot4568
  %bop4599 = icmp slt i32 %lhs_or_call4597, %lhs_or_call4598
  br i1 %bop4599, label %__then1453, label %__else1452

__fresh1487:
  br label %__then1453

__then1453:
  %lhs_or_call4600 = load %AVLTree** %ifnull_slot4565
  %vtmp4602 = getelementptr %AVLTree* %lhs_or_call4600, i32 0, i32 0
  %vtable4601 = load %_AVLTree_vtable** %vtmp4602
  %fptmp4603 = getelementptr %_AVLTree_vtable* %vtable4601, i32 0, i32 8
  %method4604 = load void (%AVLTree*)** %fptmp4603
  call void %method4604( %AVLTree* %lhs_or_call4600 )
  br label %__merge1451

__fresh1488:
  br label %__else1452

__else1452:
  br label %__merge1451

__merge1451:
  %vtmp4606 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4605 = load %_AVLTree_vtable** %vtmp4606
  %fptmp4607 = getelementptr %_AVLTree_vtable* %vtable4605, i32 0, i32 9
  %method4608 = load void (%AVLTree*)** %fptmp4607
  call void %method4608( %AVLTree* %_this1 )
  br label %__merge1454

__fresh1489:
  br label %__else1455

__else1455:
  call void @print_string( i8* @_const_str621 )
  call void @oat_abort( i32 -1 )
  br label %__merge1454

__merge1454:
  br label %__merge1469

__fresh1490:
  br label %__else1470

__else1470:
  %vtmp4612 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4611 = load %_AVLTree_vtable** %vtmp4612
  %fptmp4613 = getelementptr %_AVLTree_vtable* %vtable4611, i32 0, i32 10
  %method4614 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4613
  %path4609 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4610 = load %BSTree** %path4609
  %ret4615 = call %AVLTree* %method4614 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4610 )
  %ifnull_slot4616 = alloca %AVLTree*
  store %AVLTree* %ret4615, %AVLTree** %ifnull_slot4616
  %ifnull_guard4617 = icmp ne %AVLTree* %ret4615, null
  br i1 %ifnull_guard4617, label %__then1468, label %__else1467

__fresh1491:
  br label %__then1468

__then1468:
  %vdecl_slot4618 = alloca i32
  store i32 0, i32* %vdecl_slot4618
  %vdecl_slot4619 = alloca i32
  store i32 0, i32* %vdecl_slot4619
  %vtmp4624 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4623 = load %_AVLTree_vtable** %vtmp4624
  %fptmp4625 = getelementptr %_AVLTree_vtable* %vtable4623, i32 0, i32 10
  %method4626 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4625
  %lhs_or_call4620 = load %AVLTree** %ifnull_slot4616
  %path4621 = getelementptr %AVLTree* %lhs_or_call4620, i32 0, i32 3
  %lhs_or_call4622 = load %BSTree** %path4621
  %ret4627 = call %AVLTree* %method4626 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4622 )
  %ifnull_slot4628 = alloca %AVLTree*
  store %AVLTree* %ret4627, %AVLTree** %ifnull_slot4628
  %ifnull_guard4629 = icmp ne %AVLTree* %ret4627, null
  br i1 %ifnull_guard4629, label %__then1459, label %__else1458

__fresh1492:
  br label %__then1459

__then1459:
  %lhs_or_call4630 = load %AVLTree** %ifnull_slot4628
  %path4631 = getelementptr %AVLTree* %lhs_or_call4630, i32 0, i32 6
  %lhs_or_call4632 = load i32* %path4631
  store i32 %lhs_or_call4632, i32* %vdecl_slot4618
  br label %__merge1457

__fresh1493:
  br label %__else1458

__else1458:
  %unop4633 = sub i32 0, 1
  store i32 %unop4633, i32* %vdecl_slot4618
  br label %__merge1457

__merge1457:
  %vtmp4638 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4637 = load %_AVLTree_vtable** %vtmp4638
  %fptmp4639 = getelementptr %_AVLTree_vtable* %vtable4637, i32 0, i32 10
  %method4640 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4639
  %lhs_or_call4634 = load %AVLTree** %ifnull_slot4616
  %path4635 = getelementptr %AVLTree* %lhs_or_call4634, i32 0, i32 4
  %lhs_or_call4636 = load %BSTree** %path4635
  %ret4641 = call %AVLTree* %method4640 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4636 )
  %ifnull_slot4642 = alloca %AVLTree*
  store %AVLTree* %ret4641, %AVLTree** %ifnull_slot4642
  %ifnull_guard4643 = icmp ne %AVLTree* %ret4641, null
  br i1 %ifnull_guard4643, label %__then1462, label %__else1461

__fresh1494:
  br label %__then1462

__then1462:
  %lhs_or_call4644 = load %AVLTree** %ifnull_slot4642
  %path4645 = getelementptr %AVLTree* %lhs_or_call4644, i32 0, i32 6
  %lhs_or_call4646 = load i32* %path4645
  store i32 %lhs_or_call4646, i32* %vdecl_slot4619
  br label %__merge1460

__fresh1495:
  br label %__else1461

__else1461:
  %unop4647 = sub i32 0, 1
  store i32 %unop4647, i32* %vdecl_slot4619
  br label %__merge1460

__merge1460:
  %lhs_or_call4648 = load i32* %vdecl_slot4619
  %lhs_or_call4649 = load i32* %vdecl_slot4618
  %bop4650 = icmp slt i32 %lhs_or_call4648, %lhs_or_call4649
  br i1 %bop4650, label %__then1465, label %__else1464

__fresh1496:
  br label %__then1465

__then1465:
  %lhs_or_call4651 = load %AVLTree** %ifnull_slot4616
  %vtmp4653 = getelementptr %AVLTree* %lhs_or_call4651, i32 0, i32 0
  %vtable4652 = load %_AVLTree_vtable** %vtmp4653
  %fptmp4654 = getelementptr %_AVLTree_vtable* %vtable4652, i32 0, i32 9
  %method4655 = load void (%AVLTree*)** %fptmp4654
  call void %method4655( %AVLTree* %lhs_or_call4651 )
  br label %__merge1463

__fresh1497:
  br label %__else1464

__else1464:
  br label %__merge1463

__merge1463:
  %vtmp4657 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4656 = load %_AVLTree_vtable** %vtmp4657
  %fptmp4658 = getelementptr %_AVLTree_vtable* %vtable4656, i32 0, i32 8
  %method4659 = load void (%AVLTree*)** %fptmp4658
  call void %method4659( %AVLTree* %_this1 )
  br label %__merge1466

__fresh1498:
  br label %__else1467

__else1467:
  call void @print_string( i8* @_const_str622 )
  call void @oat_abort( i32 -1 )
  br label %__merge1466

__merge1466:
  br label %__merge1469

__merge1469:
  br label %__merge1472

__fresh1499:
  br label %__else1473

__else1473:
  br label %__merge1472

__merge1472:
  ret void
}


define void @_AVLTree_updateHeight (%AVLTree* %_this1){
__fresh1434:
  %vdecl_slot4489 = alloca i32
  store i32 0, i32* %vdecl_slot4489
  %vdecl_slot4490 = alloca i32
  store i32 0, i32* %vdecl_slot4490
  %vtmp4494 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4493 = load %_AVLTree_vtable** %vtmp4494
  %fptmp4495 = getelementptr %_AVLTree_vtable* %vtable4493, i32 0, i32 10
  %method4496 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4495
  %path4491 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4492 = load %BSTree** %path4491
  %ret4497 = call %AVLTree* %method4496 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4492 )
  %ifnull_slot4498 = alloca %AVLTree*
  store %AVLTree* %ret4497, %AVLTree** %ifnull_slot4498
  %ifnull_guard4499 = icmp ne %AVLTree* %ret4497, null
  br i1 %ifnull_guard4499, label %__then1430, label %__else1429

__fresh1435:
  br label %__then1430

__then1430:
  %lhs_or_call4500 = load %AVLTree** %ifnull_slot4498
  %path4501 = getelementptr %AVLTree* %lhs_or_call4500, i32 0, i32 6
  %lhs_or_call4502 = load i32* %path4501
  store i32 %lhs_or_call4502, i32* %vdecl_slot4489
  br label %__merge1428

__fresh1436:
  br label %__else1429

__else1429:
  %unop4503 = sub i32 0, 1
  store i32 %unop4503, i32* %vdecl_slot4489
  br label %__merge1428

__merge1428:
  %vtmp4507 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4506 = load %_AVLTree_vtable** %vtmp4507
  %fptmp4508 = getelementptr %_AVLTree_vtable* %vtable4506, i32 0, i32 10
  %method4509 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4508
  %path4504 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4505 = load %BSTree** %path4504
  %ret4510 = call %AVLTree* %method4509 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4505 )
  %ifnull_slot4511 = alloca %AVLTree*
  store %AVLTree* %ret4510, %AVLTree** %ifnull_slot4511
  %ifnull_guard4512 = icmp ne %AVLTree* %ret4510, null
  br i1 %ifnull_guard4512, label %__then1433, label %__else1432

__fresh1437:
  br label %__then1433

__then1433:
  %lhs_or_call4513 = load %AVLTree** %ifnull_slot4511
  %path4514 = getelementptr %AVLTree* %lhs_or_call4513, i32 0, i32 6
  %lhs_or_call4515 = load i32* %path4514
  store i32 %lhs_or_call4515, i32* %vdecl_slot4490
  br label %__merge1431

__fresh1438:
  br label %__else1432

__else1432:
  %unop4516 = sub i32 0, 1
  store i32 %unop4516, i32* %vdecl_slot4490
  br label %__merge1431

__merge1431:
  %path4517 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %lhs_or_call4518 = load i32* %vdecl_slot4490
  %lhs_or_call4519 = load i32* %vdecl_slot4489
  %ret4520 = call i32 @max ( i32 %lhs_or_call4519, i32 %lhs_or_call4518 )
  %bop4521 = add i32 %ret4520, 1
  store i32 %bop4521, i32* %path4517
  ret void
}


define void @_AVLTree_remove_node (%AVLTree* %_this1, %BSTree* %c4219){
__fresh1387:
  %c_slot4220 = alloca %BSTree*
  store %BSTree* %c4219, %BSTree** %c_slot4220
  %lhs_or_call4221 = load %BSTree** %c_slot4220
  %path4222 = getelementptr %BSTree* %lhs_or_call4221, i32 0, i32 3
  %lhs_or_call4223 = load %BSTree** %path4222
  %cast_op4224 = bitcast i8* null to %Object* 
  %cast_op4225 = bitcast %BSTree* %lhs_or_call4223 to %Object* 
  %ret4226 = call i1 @equals ( %Object* %cast_op4225, %Object* %cast_op4224 )
  %lhs_or_call4227 = load %BSTree** %c_slot4220
  %path4228 = getelementptr %BSTree* %lhs_or_call4227, i32 0, i32 4
  %lhs_or_call4229 = load %BSTree** %path4228
  %cast_op4230 = bitcast i8* null to %Object* 
  %cast_op4231 = bitcast %BSTree* %lhs_or_call4229 to %Object* 
  %ret4232 = call i1 @equals ( %Object* %cast_op4231, %Object* %cast_op4230 )
  %bop4233 = and i1 %ret4226, %ret4232
  br i1 %bop4233, label %__then1386, label %__else1385

__fresh1388:
  br label %__then1386

__then1386:
  %vtmp4238 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4237 = load %_AVLTree_vtable** %vtmp4238
  %fptmp4239 = getelementptr %_AVLTree_vtable* %vtable4237, i32 0, i32 10
  %method4240 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4239
  %lhs_or_call4234 = load %BSTree** %c_slot4220
  %path4235 = getelementptr %BSTree* %lhs_or_call4234, i32 0, i32 5
  %lhs_or_call4236 = load %BSTree** %path4235
  %ret4241 = call %AVLTree* %method4240 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4236 )
  %ifnull_slot4242 = alloca %AVLTree*
  store %AVLTree* %ret4241, %AVLTree** %ifnull_slot4242
  %ifnull_guard4243 = icmp ne %AVLTree* %ret4241, null
  br i1 %ifnull_guard4243, label %__then1338, label %__else1337

__fresh1389:
  br label %__then1338

__then1338:
  %lhs_or_call4244 = load %BSTree** %c_slot4220
  %lhs_or_call4245 = load %AVLTree** %ifnull_slot4242
  %path4246 = getelementptr %AVLTree* %lhs_or_call4245, i32 0, i32 3
  %lhs_or_call4247 = load %BSTree** %path4246
  %cast_op4248 = bitcast %BSTree* %lhs_or_call4244 to %Object* 
  %cast_op4249 = bitcast %BSTree* %lhs_or_call4247 to %Object* 
  %ret4250 = call i1 @equals ( %Object* %cast_op4249, %Object* %cast_op4248 )
  br i1 %ret4250, label %__then1329, label %__else1328

__fresh1390:
  br label %__then1329

__then1329:
  %lhs_or_call4251 = load %AVLTree** %ifnull_slot4242
  %path4252 = getelementptr %AVLTree* %lhs_or_call4251, i32 0, i32 3
  %cast_op4253 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op4253, %BSTree** %path4252
  br label %__merge1327

__fresh1391:
  br label %__else1328

__else1328:
  %lhs_or_call4254 = load %AVLTree** %ifnull_slot4242
  %path4255 = getelementptr %AVLTree* %lhs_or_call4254, i32 0, i32 4
  %cast_op4256 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op4256, %BSTree** %path4255
  br label %__merge1327

__merge1327:
  %lhs_or_call4257 = load %AVLTree** %ifnull_slot4242
  %vdecl_slot4258 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4257, %AVLTree** %vdecl_slot4258
  br label %__cond1332

__cond1332:
  %lhs_or_call4259 = load %AVLTree** %vdecl_slot4258
  %cast_op4260 = bitcast i8* null to %Object* 
  %cast_op4261 = bitcast %AVLTree* %lhs_or_call4259 to %Object* 
  %ret4262 = call i1 @equals ( %Object* %cast_op4261, %Object* %cast_op4260 )
  %unop4263 = icmp eq i1 %ret4262, 0
  br i1 %unop4263, label %__body1331, label %__post1330

__fresh1392:
  br label %__body1331

__body1331:
  %lhs_or_call4264 = load %AVLTree** %vdecl_slot4258
  %ifnull_slot4265 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4264, %AVLTree** %ifnull_slot4265
  %ifnull_guard4266 = icmp ne %AVLTree* %lhs_or_call4264, null
  br i1 %ifnull_guard4266, label %__then1335, label %__else1334

__fresh1393:
  br label %__then1335

__then1335:
  %lhs_or_call4267 = load %AVLTree** %ifnull_slot4265
  %vtmp4269 = getelementptr %AVLTree* %lhs_or_call4267, i32 0, i32 0
  %vtable4268 = load %_AVLTree_vtable** %vtmp4269
  %fptmp4270 = getelementptr %_AVLTree_vtable* %vtable4268, i32 0, i32 6
  %method4271 = load void (%AVLTree*)** %fptmp4270
  call void %method4271( %AVLTree* %lhs_or_call4267 )
  %lhs_or_call4272 = load %AVLTree** %ifnull_slot4265
  %vtmp4274 = getelementptr %AVLTree* %lhs_or_call4272, i32 0, i32 0
  %vtable4273 = load %_AVLTree_vtable** %vtmp4274
  %fptmp4275 = getelementptr %_AVLTree_vtable* %vtable4273, i32 0, i32 7
  %method4276 = load void (%AVLTree*)** %fptmp4275
  call void %method4276( %AVLTree* %lhs_or_call4272 )
  %vtmp4281 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4280 = load %_AVLTree_vtable** %vtmp4281
  %fptmp4282 = getelementptr %_AVLTree_vtable* %vtable4280, i32 0, i32 10
  %method4283 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4282
  %lhs_or_call4277 = load %AVLTree** %ifnull_slot4265
  %path4278 = getelementptr %AVLTree* %lhs_or_call4277, i32 0, i32 5
  %lhs_or_call4279 = load %BSTree** %path4278
  %ret4284 = call %AVLTree* %method4283 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4279 )
  store %AVLTree* %ret4284, %AVLTree** %vdecl_slot4258
  br label %__merge1333

__fresh1394:
  br label %__else1334

__else1334:
  br label %__merge1333

__merge1333:
  br label %__cond1332

__fresh1395:
  br label %__post1330

__post1330:
  br label %__merge1336

__fresh1396:
  br label %__else1337

__else1337:
  %path4285 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %cast_op4286 = bitcast i8* null to %Number* 
  store %Number* %cast_op4286, %Number** %path4285
  %path4287 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %unop4288 = sub i32 0, 1
  store i32 %unop4288, i32* %path4287
  br label %__merge1336

__merge1336:
  br label %__merge1384

__fresh1397:
  br label %__else1385

__else1385:
  %lhs_or_call4289 = load %BSTree** %c_slot4220
  %path4290 = getelementptr %BSTree* %lhs_or_call4289, i32 0, i32 3
  %lhs_or_call4291 = load %BSTree** %path4290
  %cast_op4292 = bitcast i8* null to %Object* 
  %cast_op4293 = bitcast %BSTree* %lhs_or_call4291 to %Object* 
  %ret4294 = call i1 @equals ( %Object* %cast_op4293, %Object* %cast_op4292 )
  br i1 %ret4294, label %__then1383, label %__else1382

__fresh1398:
  br label %__then1383

__then1383:
  %vtmp4299 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4298 = load %_AVLTree_vtable** %vtmp4299
  %fptmp4300 = getelementptr %_AVLTree_vtable* %vtable4298, i32 0, i32 10
  %method4301 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4300
  %lhs_or_call4295 = load %BSTree** %c_slot4220
  %path4296 = getelementptr %BSTree* %lhs_or_call4295, i32 0, i32 5
  %lhs_or_call4297 = load %BSTree** %path4296
  %ret4302 = call %AVLTree* %method4301 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4297 )
  %ifnull_slot4303 = alloca %AVLTree*
  store %AVLTree* %ret4302, %AVLTree** %ifnull_slot4303
  %ifnull_guard4304 = icmp ne %AVLTree* %ret4302, null
  br i1 %ifnull_guard4304, label %__then1353, label %__else1352

__fresh1399:
  br label %__then1353

__then1353:
  %lhs_or_call4305 = load %BSTree** %c_slot4220
  %lhs_or_call4306 = load %AVLTree** %ifnull_slot4303
  %path4307 = getelementptr %AVLTree* %lhs_or_call4306, i32 0, i32 3
  %lhs_or_call4308 = load %BSTree** %path4307
  %cast_op4309 = bitcast %BSTree* %lhs_or_call4305 to %Object* 
  %cast_op4310 = bitcast %BSTree* %lhs_or_call4308 to %Object* 
  %ret4311 = call i1 @equals ( %Object* %cast_op4310, %Object* %cast_op4309 )
  br i1 %ret4311, label %__then1341, label %__else1340

__fresh1400:
  br label %__then1341

__then1341:
  %lhs_or_call4312 = load %AVLTree** %ifnull_slot4303
  %path4313 = getelementptr %AVLTree* %lhs_or_call4312, i32 0, i32 3
  %lhs_or_call4314 = load %BSTree** %c_slot4220
  %path4315 = getelementptr %BSTree* %lhs_or_call4314, i32 0, i32 4
  %lhs_or_call4316 = load %BSTree** %path4315
  store %BSTree* %lhs_or_call4316, %BSTree** %path4313
  br label %__merge1339

__fresh1401:
  br label %__else1340

__else1340:
  %lhs_or_call4317 = load %AVLTree** %ifnull_slot4303
  %path4318 = getelementptr %AVLTree* %lhs_or_call4317, i32 0, i32 4
  %lhs_or_call4319 = load %BSTree** %c_slot4220
  %path4320 = getelementptr %BSTree* %lhs_or_call4319, i32 0, i32 4
  %lhs_or_call4321 = load %BSTree** %path4320
  store %BSTree* %lhs_or_call4321, %BSTree** %path4318
  br label %__merge1339

__merge1339:
  %lhs_or_call4322 = load %AVLTree** %ifnull_slot4303
  %vdecl_slot4323 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4322, %AVLTree** %vdecl_slot4323
  br label %__cond1344

__cond1344:
  %lhs_or_call4324 = load %AVLTree** %vdecl_slot4323
  %cast_op4325 = bitcast i8* null to %Object* 
  %cast_op4326 = bitcast %AVLTree* %lhs_or_call4324 to %Object* 
  %ret4327 = call i1 @equals ( %Object* %cast_op4326, %Object* %cast_op4325 )
  %unop4328 = icmp eq i1 %ret4327, 0
  br i1 %unop4328, label %__body1343, label %__post1342

__fresh1402:
  br label %__body1343

__body1343:
  %lhs_or_call4329 = load %AVLTree** %vdecl_slot4323
  %ifnull_slot4330 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4329, %AVLTree** %ifnull_slot4330
  %ifnull_guard4331 = icmp ne %AVLTree* %lhs_or_call4329, null
  br i1 %ifnull_guard4331, label %__then1347, label %__else1346

__fresh1403:
  br label %__then1347

__then1347:
  %lhs_or_call4332 = load %AVLTree** %ifnull_slot4330
  %vtmp4334 = getelementptr %AVLTree* %lhs_or_call4332, i32 0, i32 0
  %vtable4333 = load %_AVLTree_vtable** %vtmp4334
  %fptmp4335 = getelementptr %_AVLTree_vtable* %vtable4333, i32 0, i32 6
  %method4336 = load void (%AVLTree*)** %fptmp4335
  call void %method4336( %AVLTree* %lhs_or_call4332 )
  %lhs_or_call4337 = load %AVLTree** %ifnull_slot4330
  %vtmp4339 = getelementptr %AVLTree* %lhs_or_call4337, i32 0, i32 0
  %vtable4338 = load %_AVLTree_vtable** %vtmp4339
  %fptmp4340 = getelementptr %_AVLTree_vtable* %vtable4338, i32 0, i32 7
  %method4341 = load void (%AVLTree*)** %fptmp4340
  call void %method4341( %AVLTree* %lhs_or_call4337 )
  %vtmp4346 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4345 = load %_AVLTree_vtable** %vtmp4346
  %fptmp4347 = getelementptr %_AVLTree_vtable* %vtable4345, i32 0, i32 10
  %method4348 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4347
  %lhs_or_call4342 = load %AVLTree** %ifnull_slot4330
  %path4343 = getelementptr %AVLTree* %lhs_or_call4342, i32 0, i32 5
  %lhs_or_call4344 = load %BSTree** %path4343
  %ret4349 = call %AVLTree* %method4348 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4344 )
  store %AVLTree* %ret4349, %AVLTree** %vdecl_slot4323
  br label %__merge1345

__fresh1404:
  br label %__else1346

__else1346:
  br label %__merge1345

__merge1345:
  br label %__cond1344

__fresh1405:
  br label %__post1342

__post1342:
  br label %__merge1351

__fresh1406:
  br label %__else1352

__else1352:
  %lhs_or_call4350 = load %BSTree** %c_slot4220
  %path4351 = getelementptr %BSTree* %lhs_or_call4350, i32 0, i32 4
  %lhs_or_call4352 = load %BSTree** %path4351
  %ifnull_slot4353 = alloca %BSTree*
  store %BSTree* %lhs_or_call4352, %BSTree** %ifnull_slot4353
  %ifnull_guard4354 = icmp ne %BSTree* %lhs_or_call4352, null
  br i1 %ifnull_guard4354, label %__then1350, label %__else1349

__fresh1407:
  br label %__then1350

__then1350:
  %path4355 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4356 = load %BSTree** %ifnull_slot4353
  %path4357 = getelementptr %BSTree* %lhs_or_call4356, i32 0, i32 2
  %lhs_or_call4358 = load %Number** %path4357
  store %Number* %lhs_or_call4358, %Number** %path4355
  %path4359 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4360 = load %BSTree** %ifnull_slot4353
  %path4361 = getelementptr %BSTree* %lhs_or_call4360, i32 0, i32 3
  %lhs_or_call4362 = load %BSTree** %path4361
  store %BSTree* %lhs_or_call4362, %BSTree** %path4359
  %path4363 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4364 = load %BSTree** %ifnull_slot4353
  %path4365 = getelementptr %BSTree* %lhs_or_call4364, i32 0, i32 4
  %lhs_or_call4366 = load %BSTree** %path4365
  store %BSTree* %lhs_or_call4366, %BSTree** %path4363
  %vtmp4368 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4367 = load %_AVLTree_vtable** %vtmp4368
  %fptmp4369 = getelementptr %_AVLTree_vtable* %vtable4367, i32 0, i32 6
  %method4370 = load void (%AVLTree*)** %fptmp4369
  call void %method4370( %AVLTree* %_this1 )
  %vtmp4372 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4371 = load %_AVLTree_vtable** %vtmp4372
  %fptmp4373 = getelementptr %_AVLTree_vtable* %vtable4371, i32 0, i32 7
  %method4374 = load void (%AVLTree*)** %fptmp4373
  call void %method4374( %AVLTree* %_this1 )
  br label %__merge1348

__fresh1408:
  br label %__else1349

__else1349:
  call void @print_string( i8* @_const_str617 )
  call void @oat_abort( i32 -1 )
  br label %__merge1348

__merge1348:
  br label %__merge1351

__merge1351:
  br label %__merge1381

__fresh1409:
  br label %__else1382

__else1382:
  %lhs_or_call4375 = load %BSTree** %c_slot4220
  %path4376 = getelementptr %BSTree* %lhs_or_call4375, i32 0, i32 4
  %lhs_or_call4377 = load %BSTree** %path4376
  %cast_op4378 = bitcast i8* null to %Object* 
  %cast_op4379 = bitcast %BSTree* %lhs_or_call4377 to %Object* 
  %ret4380 = call i1 @equals ( %Object* %cast_op4379, %Object* %cast_op4378 )
  br i1 %ret4380, label %__then1380, label %__else1379

__fresh1410:
  br label %__then1380

__then1380:
  %vtmp4385 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4384 = load %_AVLTree_vtable** %vtmp4385
  %fptmp4386 = getelementptr %_AVLTree_vtable* %vtable4384, i32 0, i32 10
  %method4387 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4386
  %lhs_or_call4381 = load %BSTree** %c_slot4220
  %path4382 = getelementptr %BSTree* %lhs_or_call4381, i32 0, i32 5
  %lhs_or_call4383 = load %BSTree** %path4382
  %ret4388 = call %AVLTree* %method4387 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4383 )
  %ifnull_slot4389 = alloca %AVLTree*
  store %AVLTree* %ret4388, %AVLTree** %ifnull_slot4389
  %ifnull_guard4390 = icmp ne %AVLTree* %ret4388, null
  br i1 %ifnull_guard4390, label %__then1368, label %__else1367

__fresh1411:
  br label %__then1368

__then1368:
  %lhs_or_call4391 = load %BSTree** %c_slot4220
  %lhs_or_call4392 = load %AVLTree** %ifnull_slot4389
  %path4393 = getelementptr %AVLTree* %lhs_or_call4392, i32 0, i32 3
  %lhs_or_call4394 = load %BSTree** %path4393
  %cast_op4395 = bitcast %BSTree* %lhs_or_call4391 to %Object* 
  %cast_op4396 = bitcast %BSTree* %lhs_or_call4394 to %Object* 
  %ret4397 = call i1 @equals ( %Object* %cast_op4396, %Object* %cast_op4395 )
  br i1 %ret4397, label %__then1356, label %__else1355

__fresh1412:
  br label %__then1356

__then1356:
  %lhs_or_call4398 = load %AVLTree** %ifnull_slot4389
  %path4399 = getelementptr %AVLTree* %lhs_or_call4398, i32 0, i32 3
  %lhs_or_call4400 = load %BSTree** %c_slot4220
  %path4401 = getelementptr %BSTree* %lhs_or_call4400, i32 0, i32 3
  %lhs_or_call4402 = load %BSTree** %path4401
  store %BSTree* %lhs_or_call4402, %BSTree** %path4399
  br label %__merge1354

__fresh1413:
  br label %__else1355

__else1355:
  %lhs_or_call4403 = load %AVLTree** %ifnull_slot4389
  %path4404 = getelementptr %AVLTree* %lhs_or_call4403, i32 0, i32 4
  %lhs_or_call4405 = load %BSTree** %c_slot4220
  %path4406 = getelementptr %BSTree* %lhs_or_call4405, i32 0, i32 3
  %lhs_or_call4407 = load %BSTree** %path4406
  store %BSTree* %lhs_or_call4407, %BSTree** %path4404
  br label %__merge1354

__merge1354:
  %lhs_or_call4408 = load %AVLTree** %ifnull_slot4389
  %vdecl_slot4409 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4408, %AVLTree** %vdecl_slot4409
  br label %__cond1359

__cond1359:
  %lhs_or_call4410 = load %AVLTree** %vdecl_slot4409
  %cast_op4411 = bitcast i8* null to %Object* 
  %cast_op4412 = bitcast %AVLTree* %lhs_or_call4410 to %Object* 
  %ret4413 = call i1 @equals ( %Object* %cast_op4412, %Object* %cast_op4411 )
  %unop4414 = icmp eq i1 %ret4413, 0
  br i1 %unop4414, label %__body1358, label %__post1357

__fresh1414:
  br label %__body1358

__body1358:
  %lhs_or_call4415 = load %AVLTree** %vdecl_slot4409
  %ifnull_slot4416 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4415, %AVLTree** %ifnull_slot4416
  %ifnull_guard4417 = icmp ne %AVLTree* %lhs_or_call4415, null
  br i1 %ifnull_guard4417, label %__then1362, label %__else1361

__fresh1415:
  br label %__then1362

__then1362:
  %lhs_or_call4418 = load %AVLTree** %ifnull_slot4416
  %vtmp4420 = getelementptr %AVLTree* %lhs_or_call4418, i32 0, i32 0
  %vtable4419 = load %_AVLTree_vtable** %vtmp4420
  %fptmp4421 = getelementptr %_AVLTree_vtable* %vtable4419, i32 0, i32 6
  %method4422 = load void (%AVLTree*)** %fptmp4421
  call void %method4422( %AVLTree* %lhs_or_call4418 )
  %lhs_or_call4423 = load %AVLTree** %ifnull_slot4416
  %vtmp4425 = getelementptr %AVLTree* %lhs_or_call4423, i32 0, i32 0
  %vtable4424 = load %_AVLTree_vtable** %vtmp4425
  %fptmp4426 = getelementptr %_AVLTree_vtable* %vtable4424, i32 0, i32 7
  %method4427 = load void (%AVLTree*)** %fptmp4426
  call void %method4427( %AVLTree* %lhs_or_call4423 )
  %vtmp4432 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4431 = load %_AVLTree_vtable** %vtmp4432
  %fptmp4433 = getelementptr %_AVLTree_vtable* %vtable4431, i32 0, i32 10
  %method4434 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4433
  %lhs_or_call4428 = load %AVLTree** %ifnull_slot4416
  %path4429 = getelementptr %AVLTree* %lhs_or_call4428, i32 0, i32 5
  %lhs_or_call4430 = load %BSTree** %path4429
  %ret4435 = call %AVLTree* %method4434 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4430 )
  store %AVLTree* %ret4435, %AVLTree** %vdecl_slot4409
  br label %__merge1360

__fresh1416:
  br label %__else1361

__else1361:
  br label %__merge1360

__merge1360:
  br label %__cond1359

__fresh1417:
  br label %__post1357

__post1357:
  br label %__merge1366

__fresh1418:
  br label %__else1367

__else1367:
  %lhs_or_call4436 = load %BSTree** %c_slot4220
  %path4437 = getelementptr %BSTree* %lhs_or_call4436, i32 0, i32 3
  %lhs_or_call4438 = load %BSTree** %path4437
  %ifnull_slot4439 = alloca %BSTree*
  store %BSTree* %lhs_or_call4438, %BSTree** %ifnull_slot4439
  %ifnull_guard4440 = icmp ne %BSTree* %lhs_or_call4438, null
  br i1 %ifnull_guard4440, label %__then1365, label %__else1364

__fresh1419:
  br label %__then1365

__then1365:
  %path4441 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4442 = load %BSTree** %ifnull_slot4439
  %path4443 = getelementptr %BSTree* %lhs_or_call4442, i32 0, i32 2
  %lhs_or_call4444 = load %Number** %path4443
  store %Number* %lhs_or_call4444, %Number** %path4441
  %path4445 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4446 = load %BSTree** %ifnull_slot4439
  %path4447 = getelementptr %BSTree* %lhs_or_call4446, i32 0, i32 3
  %lhs_or_call4448 = load %BSTree** %path4447
  store %BSTree* %lhs_or_call4448, %BSTree** %path4445
  %path4449 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4450 = load %BSTree** %ifnull_slot4439
  %path4451 = getelementptr %BSTree* %lhs_or_call4450, i32 0, i32 4
  %lhs_or_call4452 = load %BSTree** %path4451
  store %BSTree* %lhs_or_call4452, %BSTree** %path4449
  %vtmp4454 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4453 = load %_AVLTree_vtable** %vtmp4454
  %fptmp4455 = getelementptr %_AVLTree_vtable* %vtable4453, i32 0, i32 6
  %method4456 = load void (%AVLTree*)** %fptmp4455
  call void %method4456( %AVLTree* %_this1 )
  %vtmp4458 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4457 = load %_AVLTree_vtable** %vtmp4458
  %fptmp4459 = getelementptr %_AVLTree_vtable* %vtable4457, i32 0, i32 7
  %method4460 = load void (%AVLTree*)** %fptmp4459
  call void %method4460( %AVLTree* %_this1 )
  br label %__merge1363

__fresh1420:
  br label %__else1364

__else1364:
  call void @print_string( i8* @_const_str618 )
  call void @oat_abort( i32 -1 )
  br label %__merge1363

__merge1363:
  br label %__merge1366

__merge1366:
  br label %__merge1378

__fresh1421:
  br label %__else1379

__else1379:
  %lhs_or_call4461 = load %BSTree** %c_slot4220
  %path4462 = getelementptr %BSTree* %lhs_or_call4461, i32 0, i32 4
  %lhs_or_call4463 = load %BSTree** %path4462
  %ifnull_slot4464 = alloca %BSTree*
  store %BSTree* %lhs_or_call4463, %BSTree** %ifnull_slot4464
  %ifnull_guard4465 = icmp ne %BSTree* %lhs_or_call4463, null
  br i1 %ifnull_guard4465, label %__then1377, label %__else1376

__fresh1422:
  br label %__then1377

__then1377:
  br label %__cond1371

__cond1371:
  %lhs_or_call4466 = load %BSTree** %ifnull_slot4464
  %path4467 = getelementptr %BSTree* %lhs_or_call4466, i32 0, i32 3
  %lhs_or_call4468 = load %BSTree** %path4467
  %cast_op4469 = bitcast i8* null to %Object* 
  %cast_op4470 = bitcast %BSTree* %lhs_or_call4468 to %Object* 
  %ret4471 = call i1 @equals ( %Object* %cast_op4470, %Object* %cast_op4469 )
  %unop4472 = icmp eq i1 %ret4471, 0
  br i1 %unop4472, label %__body1370, label %__post1369

__fresh1423:
  br label %__body1370

__body1370:
  %lhs_or_call4473 = load %BSTree** %ifnull_slot4464
  %path4474 = getelementptr %BSTree* %lhs_or_call4473, i32 0, i32 3
  %lhs_or_call4475 = load %BSTree** %path4474
  %ifnull_slot4476 = alloca %BSTree*
  store %BSTree* %lhs_or_call4475, %BSTree** %ifnull_slot4476
  %ifnull_guard4477 = icmp ne %BSTree* %lhs_or_call4475, null
  br i1 %ifnull_guard4477, label %__then1374, label %__else1373

__fresh1424:
  br label %__then1374

__then1374:
  %lhs_or_call4478 = load %BSTree** %ifnull_slot4476
  store %BSTree* %lhs_or_call4478, %BSTree** %ifnull_slot4464
  br label %__merge1372

__fresh1425:
  br label %__else1373

__else1373:
  call void @print_string( i8* @_const_str619 )
  call void @oat_abort( i32 -1 )
  br label %__merge1372

__merge1372:
  br label %__cond1371

__fresh1426:
  br label %__post1369

__post1369:
  %lhs_or_call4479 = load %BSTree** %c_slot4220
  %path4480 = getelementptr %BSTree* %lhs_or_call4479, i32 0, i32 2
  %lhs_or_call4481 = load %BSTree** %ifnull_slot4464
  %path4482 = getelementptr %BSTree* %lhs_or_call4481, i32 0, i32 2
  %lhs_or_call4483 = load %Number** %path4482
  store %Number* %lhs_or_call4483, %Number** %path4480
  %vtmp4486 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4485 = load %_AVLTree_vtable** %vtmp4486
  %fptmp4487 = getelementptr %_AVLTree_vtable* %vtable4485, i32 0, i32 5
  %method4488 = load void (%AVLTree*, %BSTree*)** %fptmp4487
  %lhs_or_call4484 = load %BSTree** %ifnull_slot4464
  call void %method4488( %AVLTree* %_this1, %BSTree* %lhs_or_call4484 )
  br label %__merge1375

__fresh1427:
  br label %__else1376

__else1376:
  call void @print_string( i8* @_const_str620 )
  call void @oat_abort( i32 -1 )
  br label %__merge1375

__merge1375:
  br label %__merge1378

__merge1378:
  br label %__merge1381

__merge1381:
  br label %__merge1384

__merge1384:
  ret void
}


define void @_AVLTree_insert (%AVLTree* %_this1, %Number* %x4104){
__fresh1308:
  %x_slot4105 = alloca %Number*
  store %Number* %x4104, %Number** %x_slot4105
  %vdecl_slot4106 = alloca %AVLTree*
  store %AVLTree* %_this1, %AVLTree** %vdecl_slot4106
  %cast_op4107 = bitcast i8* null to %AVLTree* 
  %vdecl_slot4108 = alloca %AVLTree*
  store %AVLTree* %cast_op4107, %AVLTree** %vdecl_slot4108
  br label %__cond1283

__cond1283:
  %lhs_or_call4109 = load %AVLTree** %vdecl_slot4106
  %cast_op4110 = bitcast i8* null to %Object* 
  %cast_op4111 = bitcast %AVLTree* %lhs_or_call4109 to %Object* 
  %ret4112 = call i1 @equals ( %Object* %cast_op4111, %Object* %cast_op4110 )
  %unop4113 = icmp eq i1 %ret4112, 0
  br i1 %unop4113, label %__body1282, label %__post1281

__fresh1309:
  br label %__body1282

__body1282:
  %lhs_or_call4114 = load %AVLTree** %vdecl_slot4106
  %ifnull_slot4115 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4114, %AVLTree** %ifnull_slot4115
  %ifnull_guard4116 = icmp ne %AVLTree* %lhs_or_call4114, null
  br i1 %ifnull_guard4116, label %__then1292, label %__else1291

__fresh1310:
  br label %__then1292

__then1292:
  %lhs_or_call4117 = load %AVLTree** %ifnull_slot4115
  %path4118 = getelementptr %AVLTree* %lhs_or_call4117, i32 0, i32 2
  %lhs_or_call4119 = load %Number** %path4118
  %ifnull_slot4120 = alloca %Number*
  store %Number* %lhs_or_call4119, %Number** %ifnull_slot4120
  %ifnull_guard4121 = icmp ne %Number* %lhs_or_call4119, null
  br i1 %ifnull_guard4121, label %__then1289, label %__else1288

__fresh1311:
  br label %__then1289

__then1289:
  %lhs_or_call4123 = load %Number** %x_slot4105
  %vtmp4125 = getelementptr %Number* %lhs_or_call4123, i32 0, i32 0
  %vtable4124 = load %_Number_vtable** %vtmp4125
  %fptmp4126 = getelementptr %_Number_vtable* %vtable4124, i32 0, i32 2
  %method4127 = load i32 (%Number*, %Number*)** %fptmp4126
  %lhs_or_call4122 = load %Number** %ifnull_slot4120
  %ret4128 = call i32 %method4127 ( %Number* %lhs_or_call4123, %Number* %lhs_or_call4122 )
  %vdecl_slot4129 = alloca i32
  store i32 %ret4128, i32* %vdecl_slot4129
  %lhs_or_call4130 = load i32* %vdecl_slot4129
  %bop4131 = icmp slt i32 %lhs_or_call4130, 0
  br i1 %bop4131, label %__then1286, label %__else1285

__fresh1312:
  br label %__then1286

__then1286:
  %lhs_or_call4132 = load %AVLTree** %ifnull_slot4115
  store %AVLTree* %lhs_or_call4132, %AVLTree** %vdecl_slot4108
  %vtmp4137 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4136 = load %_AVLTree_vtable** %vtmp4137
  %fptmp4138 = getelementptr %_AVLTree_vtable* %vtable4136, i32 0, i32 10
  %method4139 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4138
  %lhs_or_call4133 = load %AVLTree** %ifnull_slot4115
  %path4134 = getelementptr %AVLTree* %lhs_or_call4133, i32 0, i32 3
  %lhs_or_call4135 = load %BSTree** %path4134
  %ret4140 = call %AVLTree* %method4139 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4135 )
  store %AVLTree* %ret4140, %AVLTree** %vdecl_slot4106
  br label %__merge1284

__fresh1313:
  br label %__else1285

__else1285:
  %lhs_or_call4141 = load %AVLTree** %ifnull_slot4115
  store %AVLTree* %lhs_or_call4141, %AVLTree** %vdecl_slot4108
  %vtmp4146 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4145 = load %_AVLTree_vtable** %vtmp4146
  %fptmp4147 = getelementptr %_AVLTree_vtable* %vtable4145, i32 0, i32 10
  %method4148 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4147
  %lhs_or_call4142 = load %AVLTree** %ifnull_slot4115
  %path4143 = getelementptr %AVLTree* %lhs_or_call4142, i32 0, i32 4
  %lhs_or_call4144 = load %BSTree** %path4143
  %ret4149 = call %AVLTree* %method4148 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4144 )
  store %AVLTree* %ret4149, %AVLTree** %vdecl_slot4106
  br label %__merge1284

__merge1284:
  br label %__merge1287

__fresh1314:
  br label %__else1288

__else1288:
  %cast_op4150 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4150, %AVLTree** %vdecl_slot4106
  br label %__merge1287

__merge1287:
  br label %__merge1290

__fresh1315:
  br label %__else1291

__else1291:
  br label %__merge1290

__merge1290:
  br label %__cond1283

__fresh1316:
  br label %__post1281

__post1281:
  %lhs_or_call4151 = load %AVLTree** %vdecl_slot4108
  %ifnull_slot4152 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4151, %AVLTree** %ifnull_slot4152
  %ifnull_guard4153 = icmp ne %AVLTree* %lhs_or_call4151, null
  br i1 %ifnull_guard4153, label %__then1301, label %__else1300

__fresh1317:
  br label %__then1301

__then1301:
  %mem_ptr4154 = call i32* @oat_malloc ( i32 28 )
  %obj4155 = bitcast i32* %mem_ptr4154 to %AVLTree* 
  %new_obj4156 = call %AVLTree* @_AVLTree_ctor ( %AVLTree* %obj4155 )
  %vdecl_slot4157 = alloca %AVLTree*
  store %AVLTree* %new_obj4156, %AVLTree** %vdecl_slot4157
  %lhs_or_call4158 = load %AVLTree** %vdecl_slot4157
  %path4159 = getelementptr %AVLTree* %lhs_or_call4158, i32 0, i32 2
  %lhs_or_call4160 = load %Number** %x_slot4105
  store %Number* %lhs_or_call4160, %Number** %path4159
  %lhs_or_call4161 = load %AVLTree** %vdecl_slot4157
  %path4162 = getelementptr %AVLTree* %lhs_or_call4161, i32 0, i32 6
  store i32 0, i32* %path4162
  %lhs_or_call4163 = load %AVLTree** %vdecl_slot4157
  %path4164 = getelementptr %AVLTree* %lhs_or_call4163, i32 0, i32 5
  %lhs_or_call4165 = load %AVLTree** %ifnull_slot4152
  %cast_op4166 = bitcast %AVLTree* %lhs_or_call4165 to %BSTree* 
  store %BSTree* %cast_op4166, %BSTree** %path4164
  %lhs_or_call4167 = load %AVLTree** %ifnull_slot4152
  %path4168 = getelementptr %AVLTree* %lhs_or_call4167, i32 0, i32 2
  %lhs_or_call4169 = load %Number** %path4168
  %ifnull_slot4170 = alloca %Number*
  store %Number* %lhs_or_call4169, %Number** %ifnull_slot4170
  %ifnull_guard4171 = icmp ne %Number* %lhs_or_call4169, null
  br i1 %ifnull_guard4171, label %__then1298, label %__else1297

__fresh1318:
  br label %__then1298

__then1298:
  %lhs_or_call4173 = load %Number** %x_slot4105
  %vtmp4175 = getelementptr %Number* %lhs_or_call4173, i32 0, i32 0
  %vtable4174 = load %_Number_vtable** %vtmp4175
  %fptmp4176 = getelementptr %_Number_vtable* %vtable4174, i32 0, i32 2
  %method4177 = load i32 (%Number*, %Number*)** %fptmp4176
  %lhs_or_call4172 = load %Number** %ifnull_slot4170
  %ret4178 = call i32 %method4177 ( %Number* %lhs_or_call4173, %Number* %lhs_or_call4172 )
  %bop4179 = icmp slt i32 %ret4178, 0
  br i1 %bop4179, label %__then1295, label %__else1294

__fresh1319:
  br label %__then1295

__then1295:
  %lhs_or_call4180 = load %AVLTree** %ifnull_slot4152
  %path4181 = getelementptr %AVLTree* %lhs_or_call4180, i32 0, i32 3
  %lhs_or_call4182 = load %AVLTree** %vdecl_slot4157
  %cast_op4183 = bitcast %AVLTree* %lhs_or_call4182 to %BSTree* 
  store %BSTree* %cast_op4183, %BSTree** %path4181
  br label %__merge1293

__fresh1320:
  br label %__else1294

__else1294:
  %lhs_or_call4184 = load %AVLTree** %ifnull_slot4152
  %path4185 = getelementptr %AVLTree* %lhs_or_call4184, i32 0, i32 4
  %lhs_or_call4186 = load %AVLTree** %vdecl_slot4157
  %cast_op4187 = bitcast %AVLTree* %lhs_or_call4186 to %BSTree* 
  store %BSTree* %cast_op4187, %BSTree** %path4185
  br label %__merge1293

__merge1293:
  br label %__merge1296

__fresh1321:
  br label %__else1297

__else1297:
  br label %__merge1296

__merge1296:
  %lhs_or_call4188 = load %AVLTree** %ifnull_slot4152
  store %AVLTree* %lhs_or_call4188, %AVLTree** %vdecl_slot4106
  br label %__merge1299

__fresh1322:
  br label %__else1300

__else1300:
  %path4189 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4190 = load %Number** %x_slot4105
  store %Number* %lhs_or_call4190, %Number** %path4189
  %path4191 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  store i32 0, i32* %path4191
  %cast_op4192 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4192, %AVLTree** %vdecl_slot4106
  br label %__merge1299

__merge1299:
  br label %__cond1304

__cond1304:
  %lhs_or_call4193 = load %AVLTree** %vdecl_slot4106
  %cast_op4194 = bitcast i8* null to %Object* 
  %cast_op4195 = bitcast %AVLTree* %lhs_or_call4193 to %Object* 
  %ret4196 = call i1 @equals ( %Object* %cast_op4195, %Object* %cast_op4194 )
  %unop4197 = icmp eq i1 %ret4196, 0
  br i1 %unop4197, label %__body1303, label %__post1302

__fresh1323:
  br label %__body1303

__body1303:
  %lhs_or_call4198 = load %AVLTree** %vdecl_slot4106
  %ifnull_slot4199 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4198, %AVLTree** %ifnull_slot4199
  %ifnull_guard4200 = icmp ne %AVLTree* %lhs_or_call4198, null
  br i1 %ifnull_guard4200, label %__then1307, label %__else1306

__fresh1324:
  br label %__then1307

__then1307:
  %lhs_or_call4201 = load %AVLTree** %ifnull_slot4199
  %vtmp4203 = getelementptr %AVLTree* %lhs_or_call4201, i32 0, i32 0
  %vtable4202 = load %_AVLTree_vtable** %vtmp4203
  %fptmp4204 = getelementptr %_AVLTree_vtable* %vtable4202, i32 0, i32 6
  %method4205 = load void (%AVLTree*)** %fptmp4204
  call void %method4205( %AVLTree* %lhs_or_call4201 )
  %lhs_or_call4206 = load %AVLTree** %ifnull_slot4199
  %vtmp4208 = getelementptr %AVLTree* %lhs_or_call4206, i32 0, i32 0
  %vtable4207 = load %_AVLTree_vtable** %vtmp4208
  %fptmp4209 = getelementptr %_AVLTree_vtable* %vtable4207, i32 0, i32 7
  %method4210 = load void (%AVLTree*)** %fptmp4209
  call void %method4210( %AVLTree* %lhs_or_call4206 )
  %vtmp4215 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4214 = load %_AVLTree_vtable** %vtmp4215
  %fptmp4216 = getelementptr %_AVLTree_vtable* %vtable4214, i32 0, i32 10
  %method4217 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4216
  %lhs_or_call4211 = load %AVLTree** %ifnull_slot4199
  %path4212 = getelementptr %AVLTree* %lhs_or_call4211, i32 0, i32 5
  %lhs_or_call4213 = load %BSTree** %path4212
  %ret4218 = call %AVLTree* %method4217 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4213 )
  store %AVLTree* %ret4218, %AVLTree** %vdecl_slot4106
  br label %__merge1305

__fresh1325:
  br label %__else1306

__else1306:
  br label %__merge1305

__merge1305:
  br label %__cond1304

__fresh1326:
  br label %__post1302

__post1302:
  ret void
}


define %AVLTree* @_AVLTree_ctor (%AVLTree* %_this1){
__fresh1280:
  %cast_op4098 = bitcast %AVLTree* %_this1 to %BSTree* 
  %dummy4099 = call %BSTree* @_BSTree_ctor ( %BSTree* %cast_op4098 )
  %path4100 = getelementptr %AVLTree* %_this1, i32 0, i32 1
  store i8* @_const_str616, i8** %path4100
  %vt_slot4101 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  store %_AVLTree_vtable* @_AVLTree_vtable597, %_AVLTree_vtable** %vt_slot4101
  %path4102 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %unop4103 = sub i32 0, 1
  store i32 %unop4103, i32* %path4102
  ret %AVLTree* %_this1
}


define void @_BSTree_remove_node (%BSTree* %_this1, %BSTree* %c3945){
__fresh1251:
  %c_slot3946 = alloca %BSTree*
  store %BSTree* %c3945, %BSTree** %c_slot3946
  %lhs_or_call3947 = load %BSTree** %c_slot3946
  %path3948 = getelementptr %BSTree* %lhs_or_call3947, i32 0, i32 3
  %lhs_or_call3949 = load %BSTree** %path3948
  %cast_op3950 = bitcast i8* null to %Object* 
  %cast_op3951 = bitcast %BSTree* %lhs_or_call3949 to %Object* 
  %ret3952 = call i1 @equals ( %Object* %cast_op3951, %Object* %cast_op3950 )
  %lhs_or_call3953 = load %BSTree** %c_slot3946
  %path3954 = getelementptr %BSTree* %lhs_or_call3953, i32 0, i32 4
  %lhs_or_call3955 = load %BSTree** %path3954
  %cast_op3956 = bitcast i8* null to %Object* 
  %cast_op3957 = bitcast %BSTree* %lhs_or_call3955 to %Object* 
  %ret3958 = call i1 @equals ( %Object* %cast_op3957, %Object* %cast_op3956 )
  %bop3959 = and i1 %ret3952, %ret3958
  br i1 %bop3959, label %__then1250, label %__else1249

__fresh1252:
  br label %__then1250

__then1250:
  %lhs_or_call3960 = load %BSTree** %c_slot3946
  %path3961 = getelementptr %BSTree* %lhs_or_call3960, i32 0, i32 5
  %lhs_or_call3962 = load %BSTree** %path3961
  %ifnull_slot3963 = alloca %BSTree*
  store %BSTree* %lhs_or_call3962, %BSTree** %ifnull_slot3963
  %ifnull_guard3964 = icmp ne %BSTree* %lhs_or_call3962, null
  br i1 %ifnull_guard3964, label %__then1214, label %__else1213

__fresh1253:
  br label %__then1214

__then1214:
  %lhs_or_call3965 = load %BSTree** %c_slot3946
  %lhs_or_call3966 = load %BSTree** %ifnull_slot3963
  %path3967 = getelementptr %BSTree* %lhs_or_call3966, i32 0, i32 3
  %lhs_or_call3968 = load %BSTree** %path3967
  %cast_op3969 = bitcast %BSTree* %lhs_or_call3965 to %Object* 
  %cast_op3970 = bitcast %BSTree* %lhs_or_call3968 to %Object* 
  %ret3971 = call i1 @equals ( %Object* %cast_op3970, %Object* %cast_op3969 )
  br i1 %ret3971, label %__then1211, label %__else1210

__fresh1254:
  br label %__then1211

__then1211:
  %lhs_or_call3972 = load %BSTree** %ifnull_slot3963
  %path3973 = getelementptr %BSTree* %lhs_or_call3972, i32 0, i32 3
  %cast_op3974 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3974, %BSTree** %path3973
  br label %__merge1209

__fresh1255:
  br label %__else1210

__else1210:
  %lhs_or_call3975 = load %BSTree** %ifnull_slot3963
  %path3976 = getelementptr %BSTree* %lhs_or_call3975, i32 0, i32 4
  %cast_op3977 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3977, %BSTree** %path3976
  br label %__merge1209

__merge1209:
  br label %__merge1212

__fresh1256:
  br label %__else1213

__else1213:
  %path3978 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %cast_op3979 = bitcast i8* null to %Number* 
  store %Number* %cast_op3979, %Number** %path3978
  br label %__merge1212

__merge1212:
  br label %__merge1248

__fresh1257:
  br label %__else1249

__else1249:
  %lhs_or_call3980 = load %BSTree** %c_slot3946
  %path3981 = getelementptr %BSTree* %lhs_or_call3980, i32 0, i32 3
  %lhs_or_call3982 = load %BSTree** %path3981
  %cast_op3983 = bitcast i8* null to %Object* 
  %cast_op3984 = bitcast %BSTree* %lhs_or_call3982 to %Object* 
  %ret3985 = call i1 @equals ( %Object* %cast_op3984, %Object* %cast_op3983 )
  br i1 %ret3985, label %__then1247, label %__else1246

__fresh1258:
  br label %__then1247

__then1247:
  %lhs_or_call3986 = load %BSTree** %c_slot3946
  %path3987 = getelementptr %BSTree* %lhs_or_call3986, i32 0, i32 5
  %lhs_or_call3988 = load %BSTree** %path3987
  %ifnull_slot3989 = alloca %BSTree*
  store %BSTree* %lhs_or_call3988, %BSTree** %ifnull_slot3989
  %ifnull_guard3990 = icmp ne %BSTree* %lhs_or_call3988, null
  br i1 %ifnull_guard3990, label %__then1223, label %__else1222

__fresh1259:
  br label %__then1223

__then1223:
  %lhs_or_call3991 = load %BSTree** %c_slot3946
  %lhs_or_call3992 = load %BSTree** %ifnull_slot3989
  %path3993 = getelementptr %BSTree* %lhs_or_call3992, i32 0, i32 3
  %lhs_or_call3994 = load %BSTree** %path3993
  %cast_op3995 = bitcast %BSTree* %lhs_or_call3991 to %Object* 
  %cast_op3996 = bitcast %BSTree* %lhs_or_call3994 to %Object* 
  %ret3997 = call i1 @equals ( %Object* %cast_op3996, %Object* %cast_op3995 )
  br i1 %ret3997, label %__then1217, label %__else1216

__fresh1260:
  br label %__then1217

__then1217:
  %lhs_or_call3998 = load %BSTree** %ifnull_slot3989
  %path3999 = getelementptr %BSTree* %lhs_or_call3998, i32 0, i32 3
  %lhs_or_call4000 = load %BSTree** %c_slot3946
  %path4001 = getelementptr %BSTree* %lhs_or_call4000, i32 0, i32 4
  %lhs_or_call4002 = load %BSTree** %path4001
  store %BSTree* %lhs_or_call4002, %BSTree** %path3999
  br label %__merge1215

__fresh1261:
  br label %__else1216

__else1216:
  %lhs_or_call4003 = load %BSTree** %ifnull_slot3989
  %path4004 = getelementptr %BSTree* %lhs_or_call4003, i32 0, i32 4
  %lhs_or_call4005 = load %BSTree** %c_slot3946
  %path4006 = getelementptr %BSTree* %lhs_or_call4005, i32 0, i32 4
  %lhs_or_call4007 = load %BSTree** %path4006
  store %BSTree* %lhs_or_call4007, %BSTree** %path4004
  br label %__merge1215

__merge1215:
  br label %__merge1221

__fresh1262:
  br label %__else1222

__else1222:
  %lhs_or_call4008 = load %BSTree** %c_slot3946
  %path4009 = getelementptr %BSTree* %lhs_or_call4008, i32 0, i32 4
  %lhs_or_call4010 = load %BSTree** %path4009
  %ifnull_slot4011 = alloca %BSTree*
  store %BSTree* %lhs_or_call4010, %BSTree** %ifnull_slot4011
  %ifnull_guard4012 = icmp ne %BSTree* %lhs_or_call4010, null
  br i1 %ifnull_guard4012, label %__then1220, label %__else1219

__fresh1263:
  br label %__then1220

__then1220:
  %path4013 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call4014 = load %BSTree** %ifnull_slot4011
  %path4015 = getelementptr %BSTree* %lhs_or_call4014, i32 0, i32 2
  %lhs_or_call4016 = load %Number** %path4015
  store %Number* %lhs_or_call4016, %Number** %path4013
  %path4017 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %lhs_or_call4018 = load %BSTree** %ifnull_slot4011
  %path4019 = getelementptr %BSTree* %lhs_or_call4018, i32 0, i32 3
  %lhs_or_call4020 = load %BSTree** %path4019
  store %BSTree* %lhs_or_call4020, %BSTree** %path4017
  %path4021 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %lhs_or_call4022 = load %BSTree** %ifnull_slot4011
  %path4023 = getelementptr %BSTree* %lhs_or_call4022, i32 0, i32 4
  %lhs_or_call4024 = load %BSTree** %path4023
  store %BSTree* %lhs_or_call4024, %BSTree** %path4021
  br label %__merge1218

__fresh1264:
  br label %__else1219

__else1219:
  call void @print_string( i8* @_const_str612 )
  call void @oat_abort( i32 -1 )
  br label %__merge1218

__merge1218:
  br label %__merge1221

__merge1221:
  br label %__merge1245

__fresh1265:
  br label %__else1246

__else1246:
  %lhs_or_call4025 = load %BSTree** %c_slot3946
  %path4026 = getelementptr %BSTree* %lhs_or_call4025, i32 0, i32 4
  %lhs_or_call4027 = load %BSTree** %path4026
  %cast_op4028 = bitcast i8* null to %Object* 
  %cast_op4029 = bitcast %BSTree* %lhs_or_call4027 to %Object* 
  %ret4030 = call i1 @equals ( %Object* %cast_op4029, %Object* %cast_op4028 )
  br i1 %ret4030, label %__then1244, label %__else1243

__fresh1266:
  br label %__then1244

__then1244:
  %lhs_or_call4031 = load %BSTree** %c_slot3946
  %path4032 = getelementptr %BSTree* %lhs_or_call4031, i32 0, i32 5
  %lhs_or_call4033 = load %BSTree** %path4032
  %ifnull_slot4034 = alloca %BSTree*
  store %BSTree* %lhs_or_call4033, %BSTree** %ifnull_slot4034
  %ifnull_guard4035 = icmp ne %BSTree* %lhs_or_call4033, null
  br i1 %ifnull_guard4035, label %__then1232, label %__else1231

__fresh1267:
  br label %__then1232

__then1232:
  %lhs_or_call4036 = load %BSTree** %c_slot3946
  %lhs_or_call4037 = load %BSTree** %ifnull_slot4034
  %path4038 = getelementptr %BSTree* %lhs_or_call4037, i32 0, i32 3
  %lhs_or_call4039 = load %BSTree** %path4038
  %cast_op4040 = bitcast %BSTree* %lhs_or_call4036 to %Object* 
  %cast_op4041 = bitcast %BSTree* %lhs_or_call4039 to %Object* 
  %ret4042 = call i1 @equals ( %Object* %cast_op4041, %Object* %cast_op4040 )
  br i1 %ret4042, label %__then1226, label %__else1225

__fresh1268:
  br label %__then1226

__then1226:
  %lhs_or_call4043 = load %BSTree** %ifnull_slot4034
  %path4044 = getelementptr %BSTree* %lhs_or_call4043, i32 0, i32 3
  %lhs_or_call4045 = load %BSTree** %c_slot3946
  %path4046 = getelementptr %BSTree* %lhs_or_call4045, i32 0, i32 3
  %lhs_or_call4047 = load %BSTree** %path4046
  store %BSTree* %lhs_or_call4047, %BSTree** %path4044
  br label %__merge1224

__fresh1269:
  br label %__else1225

__else1225:
  %lhs_or_call4048 = load %BSTree** %ifnull_slot4034
  %path4049 = getelementptr %BSTree* %lhs_or_call4048, i32 0, i32 4
  %lhs_or_call4050 = load %BSTree** %c_slot3946
  %path4051 = getelementptr %BSTree* %lhs_or_call4050, i32 0, i32 3
  %lhs_or_call4052 = load %BSTree** %path4051
  store %BSTree* %lhs_or_call4052, %BSTree** %path4049
  br label %__merge1224

__merge1224:
  br label %__merge1230

__fresh1270:
  br label %__else1231

__else1231:
  %lhs_or_call4053 = load %BSTree** %c_slot3946
  %path4054 = getelementptr %BSTree* %lhs_or_call4053, i32 0, i32 3
  %lhs_or_call4055 = load %BSTree** %path4054
  %ifnull_slot4056 = alloca %BSTree*
  store %BSTree* %lhs_or_call4055, %BSTree** %ifnull_slot4056
  %ifnull_guard4057 = icmp ne %BSTree* %lhs_or_call4055, null
  br i1 %ifnull_guard4057, label %__then1229, label %__else1228

__fresh1271:
  br label %__then1229

__then1229:
  %path4058 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call4059 = load %BSTree** %ifnull_slot4056
  %path4060 = getelementptr %BSTree* %lhs_or_call4059, i32 0, i32 2
  %lhs_or_call4061 = load %Number** %path4060
  store %Number* %lhs_or_call4061, %Number** %path4058
  %path4062 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %lhs_or_call4063 = load %BSTree** %ifnull_slot4056
  %path4064 = getelementptr %BSTree* %lhs_or_call4063, i32 0, i32 3
  %lhs_or_call4065 = load %BSTree** %path4064
  store %BSTree* %lhs_or_call4065, %BSTree** %path4062
  %path4066 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %lhs_or_call4067 = load %BSTree** %ifnull_slot4056
  %path4068 = getelementptr %BSTree* %lhs_or_call4067, i32 0, i32 4
  %lhs_or_call4069 = load %BSTree** %path4068
  store %BSTree* %lhs_or_call4069, %BSTree** %path4066
  br label %__merge1227

__fresh1272:
  br label %__else1228

__else1228:
  call void @print_string( i8* @_const_str613 )
  call void @oat_abort( i32 -1 )
  br label %__merge1227

__merge1227:
  br label %__merge1230

__merge1230:
  br label %__merge1242

__fresh1273:
  br label %__else1243

__else1243:
  %lhs_or_call4070 = load %BSTree** %c_slot3946
  %path4071 = getelementptr %BSTree* %lhs_or_call4070, i32 0, i32 4
  %lhs_or_call4072 = load %BSTree** %path4071
  %ifnull_slot4073 = alloca %BSTree*
  store %BSTree* %lhs_or_call4072, %BSTree** %ifnull_slot4073
  %ifnull_guard4074 = icmp ne %BSTree* %lhs_or_call4072, null
  br i1 %ifnull_guard4074, label %__then1241, label %__else1240

__fresh1274:
  br label %__then1241

__then1241:
  br label %__cond1235

__cond1235:
  %lhs_or_call4075 = load %BSTree** %ifnull_slot4073
  %path4076 = getelementptr %BSTree* %lhs_or_call4075, i32 0, i32 3
  %lhs_or_call4077 = load %BSTree** %path4076
  %cast_op4078 = bitcast i8* null to %Object* 
  %cast_op4079 = bitcast %BSTree* %lhs_or_call4077 to %Object* 
  %ret4080 = call i1 @equals ( %Object* %cast_op4079, %Object* %cast_op4078 )
  %unop4081 = icmp eq i1 %ret4080, 0
  br i1 %unop4081, label %__body1234, label %__post1233

__fresh1275:
  br label %__body1234

__body1234:
  %lhs_or_call4082 = load %BSTree** %ifnull_slot4073
  %path4083 = getelementptr %BSTree* %lhs_or_call4082, i32 0, i32 3
  %lhs_or_call4084 = load %BSTree** %path4083
  %ifnull_slot4085 = alloca %BSTree*
  store %BSTree* %lhs_or_call4084, %BSTree** %ifnull_slot4085
  %ifnull_guard4086 = icmp ne %BSTree* %lhs_or_call4084, null
  br i1 %ifnull_guard4086, label %__then1238, label %__else1237

__fresh1276:
  br label %__then1238

__then1238:
  %lhs_or_call4087 = load %BSTree** %ifnull_slot4085
  store %BSTree* %lhs_or_call4087, %BSTree** %ifnull_slot4073
  br label %__merge1236

__fresh1277:
  br label %__else1237

__else1237:
  call void @print_string( i8* @_const_str614 )
  call void @oat_abort( i32 -1 )
  br label %__merge1236

__merge1236:
  br label %__cond1235

__fresh1278:
  br label %__post1233

__post1233:
  %lhs_or_call4088 = load %BSTree** %c_slot3946
  %path4089 = getelementptr %BSTree* %lhs_or_call4088, i32 0, i32 2
  %lhs_or_call4090 = load %BSTree** %ifnull_slot4073
  %path4091 = getelementptr %BSTree* %lhs_or_call4090, i32 0, i32 2
  %lhs_or_call4092 = load %Number** %path4091
  store %Number* %lhs_or_call4092, %Number** %path4089
  %vtmp4095 = getelementptr %BSTree* %_this1, i32 0, i32 0
  %vtable4094 = load %_BSTree_vtable** %vtmp4095
  %fptmp4096 = getelementptr %_BSTree_vtable* %vtable4094, i32 0, i32 5
  %method4097 = load void (%BSTree*, %BSTree*)** %fptmp4096
  %lhs_or_call4093 = load %BSTree** %ifnull_slot4073
  call void %method4097( %BSTree* %_this1, %BSTree* %lhs_or_call4093 )
  br label %__merge1239

__fresh1279:
  br label %__else1240

__else1240:
  call void @print_string( i8* @_const_str615 )
  call void @oat_abort( i32 -1 )
  br label %__merge1239

__merge1239:
  br label %__merge1242

__merge1242:
  br label %__merge1245

__merge1245:
  br label %__merge1248

__merge1248:
  ret void
}


define void @_BSTree_remove (%BSTree* %_this1, %Number* %x3892){
__fresh1194:
  %x_slot3893 = alloca %Number*
  store %Number* %x3892, %Number** %x_slot3893
  %vdecl_slot3894 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3894
  %cast_op3895 = bitcast i8* null to %BSTree* 
  %vdecl_slot3896 = alloca %BSTree*
  store %BSTree* %cast_op3895, %BSTree** %vdecl_slot3896
  %vdecl_slot3897 = alloca i32
  store i32 0, i32* %vdecl_slot3897
  br label %__cond1175

__cond1175:
  %lhs_or_call3898 = load i32* %vdecl_slot3897
  %bop3899 = icmp eq i32 %lhs_or_call3898, 0
  %lhs_or_call3900 = load %BSTree** %vdecl_slot3894
  %cast_op3901 = bitcast i8* null to %Object* 
  %cast_op3902 = bitcast %BSTree* %lhs_or_call3900 to %Object* 
  %ret3903 = call i1 @equals ( %Object* %cast_op3902, %Object* %cast_op3901 )
  %unop3904 = icmp eq i1 %ret3903, 0
  %bop3905 = and i1 %bop3899, %unop3904
  br i1 %bop3905, label %__body1174, label %__post1173

__fresh1195:
  br label %__body1174

__body1174:
  %lhs_or_call3906 = load %BSTree** %vdecl_slot3894
  %ifnull_slot3907 = alloca %BSTree*
  store %BSTree* %lhs_or_call3906, %BSTree** %ifnull_slot3907
  %ifnull_guard3908 = icmp ne %BSTree* %lhs_or_call3906, null
  br i1 %ifnull_guard3908, label %__then1187, label %__else1186

__fresh1196:
  br label %__then1187

__then1187:
  %lhs_or_call3909 = load %BSTree** %ifnull_slot3907
  %path3910 = getelementptr %BSTree* %lhs_or_call3909, i32 0, i32 2
  %lhs_or_call3911 = load %Number** %path3910
  %ifnull_slot3912 = alloca %Number*
  store %Number* %lhs_or_call3911, %Number** %ifnull_slot3912
  %ifnull_guard3913 = icmp ne %Number* %lhs_or_call3911, null
  br i1 %ifnull_guard3913, label %__then1184, label %__else1183

__fresh1197:
  br label %__then1184

__then1184:
  %lhs_or_call3915 = load %Number** %x_slot3893
  %vtmp3917 = getelementptr %Number* %lhs_or_call3915, i32 0, i32 0
  %vtable3916 = load %_Number_vtable** %vtmp3917
  %fptmp3918 = getelementptr %_Number_vtable* %vtable3916, i32 0, i32 2
  %method3919 = load i32 (%Number*, %Number*)** %fptmp3918
  %lhs_or_call3914 = load %Number** %ifnull_slot3912
  %ret3920 = call i32 %method3919 ( %Number* %lhs_or_call3915, %Number* %lhs_or_call3914 )
  %vdecl_slot3921 = alloca i32
  store i32 %ret3920, i32* %vdecl_slot3921
  %lhs_or_call3922 = load i32* %vdecl_slot3921
  %bop3923 = icmp eq i32 %lhs_or_call3922, 0
  br i1 %bop3923, label %__then1181, label %__else1180

__fresh1198:
  br label %__then1181

__then1181:
  store i32 1, i32* %vdecl_slot3897
  br label %__merge1179

__fresh1199:
  br label %__else1180

__else1180:
  %lhs_or_call3924 = load i32* %vdecl_slot3921
  %bop3925 = icmp slt i32 %lhs_or_call3924, 0
  br i1 %bop3925, label %__then1178, label %__else1177

__fresh1200:
  br label %__then1178

__then1178:
  %lhs_or_call3926 = load %BSTree** %vdecl_slot3894
  store %BSTree* %lhs_or_call3926, %BSTree** %vdecl_slot3896
  %lhs_or_call3927 = load %BSTree** %ifnull_slot3907
  %path3928 = getelementptr %BSTree* %lhs_or_call3927, i32 0, i32 3
  %lhs_or_call3929 = load %BSTree** %path3928
  store %BSTree* %lhs_or_call3929, %BSTree** %vdecl_slot3894
  br label %__merge1176

__fresh1201:
  br label %__else1177

__else1177:
  %lhs_or_call3930 = load %BSTree** %vdecl_slot3894
  store %BSTree* %lhs_or_call3930, %BSTree** %vdecl_slot3896
  %lhs_or_call3931 = load %BSTree** %ifnull_slot3907
  %path3932 = getelementptr %BSTree* %lhs_or_call3931, i32 0, i32 4
  %lhs_or_call3933 = load %BSTree** %path3932
  store %BSTree* %lhs_or_call3933, %BSTree** %vdecl_slot3894
  br label %__merge1176

__merge1176:
  br label %__merge1179

__merge1179:
  br label %__merge1182

__fresh1202:
  br label %__else1183

__else1183:
  %cast_op3934 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3934, %BSTree** %vdecl_slot3894
  br label %__merge1182

__merge1182:
  br label %__merge1185

__fresh1203:
  br label %__else1186

__else1186:
  br label %__merge1185

__merge1185:
  br label %__cond1175

__fresh1204:
  br label %__post1173

__post1173:
  %lhs_or_call3935 = load i32* %vdecl_slot3897
  %bop3936 = icmp eq i32 %lhs_or_call3935, 0
  br i1 %bop3936, label %__then1193, label %__else1192

__fresh1205:
  br label %__then1193

__then1193:
  call void @print_string( i8* @_const_str610 )
  call void @oat_abort( i32 -1 )
  br label %__merge1191

__fresh1206:
  br label %__else1192

__else1192:
  %lhs_or_call3937 = load %BSTree** %vdecl_slot3894
  %ifnull_slot3938 = alloca %BSTree*
  store %BSTree* %lhs_or_call3937, %BSTree** %ifnull_slot3938
  %ifnull_guard3939 = icmp ne %BSTree* %lhs_or_call3937, null
  br i1 %ifnull_guard3939, label %__then1190, label %__else1189

__fresh1207:
  br label %__then1190

__then1190:
  %vtmp3942 = getelementptr %BSTree* %_this1, i32 0, i32 0
  %vtable3941 = load %_BSTree_vtable** %vtmp3942
  %fptmp3943 = getelementptr %_BSTree_vtable* %vtable3941, i32 0, i32 5
  %method3944 = load void (%BSTree*, %BSTree*)** %fptmp3943
  %lhs_or_call3940 = load %BSTree** %ifnull_slot3938
  call void %method3944( %BSTree* %_this1, %BSTree* %lhs_or_call3940 )
  br label %__merge1188

__fresh1208:
  br label %__else1189

__else1189:
  call void @print_string( i8* @_const_str611 )
  call void @oat_abort( i32 -1 )
  br label %__merge1188

__merge1188:
  br label %__merge1191

__merge1191:
  ret void
}


define i32 @_BSTree_find (%BSTree* %_this1, %Number* %x3852){
__fresh1162:
  %x_slot3853 = alloca %Number*
  store %Number* %x3852, %Number** %x_slot3853
  %vdecl_slot3854 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3854
  %vdecl_slot3855 = alloca i32
  store i32 0, i32* %vdecl_slot3855
  br label %__cond1149

__cond1149:
  %lhs_or_call3856 = load i32* %vdecl_slot3855
  %bop3857 = icmp eq i32 %lhs_or_call3856, 0
  %lhs_or_call3858 = load %BSTree** %vdecl_slot3854
  %cast_op3859 = bitcast i8* null to %Object* 
  %cast_op3860 = bitcast %BSTree* %lhs_or_call3858 to %Object* 
  %ret3861 = call i1 @equals ( %Object* %cast_op3860, %Object* %cast_op3859 )
  %unop3862 = icmp eq i1 %ret3861, 0
  %bop3863 = and i1 %bop3857, %unop3862
  br i1 %bop3863, label %__body1148, label %__post1147

__fresh1163:
  br label %__body1148

__body1148:
  %lhs_or_call3864 = load %BSTree** %vdecl_slot3854
  %ifnull_slot3865 = alloca %BSTree*
  store %BSTree* %lhs_or_call3864, %BSTree** %ifnull_slot3865
  %ifnull_guard3866 = icmp ne %BSTree* %lhs_or_call3864, null
  br i1 %ifnull_guard3866, label %__then1161, label %__else1160

__fresh1164:
  br label %__then1161

__then1161:
  %lhs_or_call3867 = load %BSTree** %ifnull_slot3865
  %path3868 = getelementptr %BSTree* %lhs_or_call3867, i32 0, i32 2
  %lhs_or_call3869 = load %Number** %path3868
  %ifnull_slot3870 = alloca %Number*
  store %Number* %lhs_or_call3869, %Number** %ifnull_slot3870
  %ifnull_guard3871 = icmp ne %Number* %lhs_or_call3869, null
  br i1 %ifnull_guard3871, label %__then1158, label %__else1157

__fresh1165:
  br label %__then1158

__then1158:
  %lhs_or_call3873 = load %Number** %x_slot3853
  %vtmp3875 = getelementptr %Number* %lhs_or_call3873, i32 0, i32 0
  %vtable3874 = load %_Number_vtable** %vtmp3875
  %fptmp3876 = getelementptr %_Number_vtable* %vtable3874, i32 0, i32 2
  %method3877 = load i32 (%Number*, %Number*)** %fptmp3876
  %lhs_or_call3872 = load %Number** %ifnull_slot3870
  %ret3878 = call i32 %method3877 ( %Number* %lhs_or_call3873, %Number* %lhs_or_call3872 )
  %vdecl_slot3879 = alloca i32
  store i32 %ret3878, i32* %vdecl_slot3879
  %lhs_or_call3880 = load i32* %vdecl_slot3879
  %bop3881 = icmp eq i32 %lhs_or_call3880, 0
  br i1 %bop3881, label %__then1155, label %__else1154

__fresh1166:
  br label %__then1155

__then1155:
  store i32 1, i32* %vdecl_slot3855
  br label %__merge1153

__fresh1167:
  br label %__else1154

__else1154:
  %lhs_or_call3882 = load i32* %vdecl_slot3879
  %bop3883 = icmp slt i32 %lhs_or_call3882, 0
  br i1 %bop3883, label %__then1152, label %__else1151

__fresh1168:
  br label %__then1152

__then1152:
  %lhs_or_call3884 = load %BSTree** %ifnull_slot3865
  %path3885 = getelementptr %BSTree* %lhs_or_call3884, i32 0, i32 3
  %lhs_or_call3886 = load %BSTree** %path3885
  store %BSTree* %lhs_or_call3886, %BSTree** %vdecl_slot3854
  br label %__merge1150

__fresh1169:
  br label %__else1151

__else1151:
  %lhs_or_call3887 = load %BSTree** %ifnull_slot3865
  %path3888 = getelementptr %BSTree* %lhs_or_call3887, i32 0, i32 4
  %lhs_or_call3889 = load %BSTree** %path3888
  store %BSTree* %lhs_or_call3889, %BSTree** %vdecl_slot3854
  br label %__merge1150

__merge1150:
  br label %__merge1153

__merge1153:
  br label %__merge1156

__fresh1170:
  br label %__else1157

__else1157:
  %cast_op3890 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3890, %BSTree** %vdecl_slot3854
  br label %__merge1156

__merge1156:
  br label %__merge1159

__fresh1171:
  br label %__else1160

__else1160:
  br label %__merge1159

__merge1159:
  br label %__cond1149

__fresh1172:
  br label %__post1147

__post1147:
  %lhs_or_call3891 = load i32* %vdecl_slot3855
  ret i32 %lhs_or_call3891
}


define void @_BSTree_insert (%BSTree* %_this1, %Number* %x3781){
__fresh1132:
  %x_slot3782 = alloca %Number*
  store %Number* %x3781, %Number** %x_slot3782
  %vdecl_slot3783 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3783
  %cast_op3784 = bitcast i8* null to %BSTree* 
  %vdecl_slot3785 = alloca %BSTree*
  store %BSTree* %cast_op3784, %BSTree** %vdecl_slot3785
  br label %__cond1113

__cond1113:
  %lhs_or_call3786 = load %BSTree** %vdecl_slot3783
  %cast_op3787 = bitcast i8* null to %Object* 
  %cast_op3788 = bitcast %BSTree* %lhs_or_call3786 to %Object* 
  %ret3789 = call i1 @equals ( %Object* %cast_op3788, %Object* %cast_op3787 )
  %unop3790 = icmp eq i1 %ret3789, 0
  br i1 %unop3790, label %__body1112, label %__post1111

__fresh1133:
  br label %__body1112

__body1112:
  %lhs_or_call3791 = load %BSTree** %vdecl_slot3783
  %ifnull_slot3792 = alloca %BSTree*
  store %BSTree* %lhs_or_call3791, %BSTree** %ifnull_slot3792
  %ifnull_guard3793 = icmp ne %BSTree* %lhs_or_call3791, null
  br i1 %ifnull_guard3793, label %__then1122, label %__else1121

__fresh1134:
  br label %__then1122

__then1122:
  %lhs_or_call3794 = load %BSTree** %ifnull_slot3792
  %path3795 = getelementptr %BSTree* %lhs_or_call3794, i32 0, i32 2
  %lhs_or_call3796 = load %Number** %path3795
  %ifnull_slot3797 = alloca %Number*
  store %Number* %lhs_or_call3796, %Number** %ifnull_slot3797
  %ifnull_guard3798 = icmp ne %Number* %lhs_or_call3796, null
  br i1 %ifnull_guard3798, label %__then1119, label %__else1118

__fresh1135:
  br label %__then1119

__then1119:
  %lhs_or_call3800 = load %Number** %x_slot3782
  %vtmp3802 = getelementptr %Number* %lhs_or_call3800, i32 0, i32 0
  %vtable3801 = load %_Number_vtable** %vtmp3802
  %fptmp3803 = getelementptr %_Number_vtable* %vtable3801, i32 0, i32 2
  %method3804 = load i32 (%Number*, %Number*)** %fptmp3803
  %lhs_or_call3799 = load %Number** %ifnull_slot3797
  %ret3805 = call i32 %method3804 ( %Number* %lhs_or_call3800, %Number* %lhs_or_call3799 )
  %vdecl_slot3806 = alloca i32
  store i32 %ret3805, i32* %vdecl_slot3806
  %lhs_or_call3807 = load i32* %vdecl_slot3806
  %bop3808 = icmp slt i32 %lhs_or_call3807, 0
  br i1 %bop3808, label %__then1116, label %__else1115

__fresh1136:
  br label %__then1116

__then1116:
  %lhs_or_call3809 = load %BSTree** %vdecl_slot3783
  store %BSTree* %lhs_or_call3809, %BSTree** %vdecl_slot3785
  %lhs_or_call3810 = load %BSTree** %ifnull_slot3792
  %path3811 = getelementptr %BSTree* %lhs_or_call3810, i32 0, i32 3
  %lhs_or_call3812 = load %BSTree** %path3811
  store %BSTree* %lhs_or_call3812, %BSTree** %vdecl_slot3783
  br label %__merge1114

__fresh1137:
  br label %__else1115

__else1115:
  %lhs_or_call3813 = load %BSTree** %vdecl_slot3783
  store %BSTree* %lhs_or_call3813, %BSTree** %vdecl_slot3785
  %lhs_or_call3814 = load %BSTree** %ifnull_slot3792
  %path3815 = getelementptr %BSTree* %lhs_or_call3814, i32 0, i32 4
  %lhs_or_call3816 = load %BSTree** %path3815
  store %BSTree* %lhs_or_call3816, %BSTree** %vdecl_slot3783
  br label %__merge1114

__merge1114:
  br label %__merge1117

__fresh1138:
  br label %__else1118

__else1118:
  %cast_op3817 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3817, %BSTree** %vdecl_slot3783
  br label %__merge1117

__merge1117:
  br label %__merge1120

__fresh1139:
  br label %__else1121

__else1121:
  br label %__merge1120

__merge1120:
  br label %__cond1113

__fresh1140:
  br label %__post1111

__post1111:
  %lhs_or_call3818 = load %BSTree** %vdecl_slot3785
  %ifnull_slot3819 = alloca %BSTree*
  store %BSTree* %lhs_or_call3818, %BSTree** %ifnull_slot3819
  %ifnull_guard3820 = icmp ne %BSTree* %lhs_or_call3818, null
  br i1 %ifnull_guard3820, label %__then1131, label %__else1130

__fresh1141:
  br label %__then1131

__then1131:
  %mem_ptr3821 = call i32* @oat_malloc ( i32 24 )
  %obj3822 = bitcast i32* %mem_ptr3821 to %BSTree* 
  %new_obj3823 = call %BSTree* @_BSTree_ctor ( %BSTree* %obj3822 )
  %vdecl_slot3824 = alloca %BSTree*
  store %BSTree* %new_obj3823, %BSTree** %vdecl_slot3824
  %lhs_or_call3825 = load %BSTree** %vdecl_slot3824
  %path3826 = getelementptr %BSTree* %lhs_or_call3825, i32 0, i32 2
  %lhs_or_call3827 = load %Number** %x_slot3782
  store %Number* %lhs_or_call3827, %Number** %path3826
  %lhs_or_call3828 = load %BSTree** %vdecl_slot3824
  %path3829 = getelementptr %BSTree* %lhs_or_call3828, i32 0, i32 5
  %lhs_or_call3830 = load %BSTree** %ifnull_slot3819
  store %BSTree* %lhs_or_call3830, %BSTree** %path3829
  %lhs_or_call3831 = load %BSTree** %ifnull_slot3819
  %path3832 = getelementptr %BSTree* %lhs_or_call3831, i32 0, i32 2
  %lhs_or_call3833 = load %Number** %path3832
  %ifnull_slot3834 = alloca %Number*
  store %Number* %lhs_or_call3833, %Number** %ifnull_slot3834
  %ifnull_guard3835 = icmp ne %Number* %lhs_or_call3833, null
  br i1 %ifnull_guard3835, label %__then1128, label %__else1127

__fresh1142:
  br label %__then1128

__then1128:
  %lhs_or_call3837 = load %Number** %x_slot3782
  %vtmp3839 = getelementptr %Number* %lhs_or_call3837, i32 0, i32 0
  %vtable3838 = load %_Number_vtable** %vtmp3839
  %fptmp3840 = getelementptr %_Number_vtable* %vtable3838, i32 0, i32 2
  %method3841 = load i32 (%Number*, %Number*)** %fptmp3840
  %lhs_or_call3836 = load %Number** %ifnull_slot3834
  %ret3842 = call i32 %method3841 ( %Number* %lhs_or_call3837, %Number* %lhs_or_call3836 )
  %bop3843 = icmp slt i32 %ret3842, 0
  br i1 %bop3843, label %__then1125, label %__else1124

__fresh1143:
  br label %__then1125

__then1125:
  %lhs_or_call3844 = load %BSTree** %ifnull_slot3819
  %path3845 = getelementptr %BSTree* %lhs_or_call3844, i32 0, i32 3
  %lhs_or_call3846 = load %BSTree** %vdecl_slot3824
  store %BSTree* %lhs_or_call3846, %BSTree** %path3845
  br label %__merge1123

__fresh1144:
  br label %__else1124

__else1124:
  %lhs_or_call3847 = load %BSTree** %ifnull_slot3819
  %path3848 = getelementptr %BSTree* %lhs_or_call3847, i32 0, i32 4
  %lhs_or_call3849 = load %BSTree** %vdecl_slot3824
  store %BSTree* %lhs_or_call3849, %BSTree** %path3848
  br label %__merge1123

__merge1123:
  br label %__merge1126

__fresh1145:
  br label %__else1127

__else1127:
  br label %__merge1126

__merge1126:
  br label %__merge1129

__fresh1146:
  br label %__else1130

__else1130:
  %path3850 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call3851 = load %Number** %x_slot3782
  store %Number* %lhs_or_call3851, %Number** %path3850
  br label %__merge1129

__merge1129:
  ret void
}


define %BSTree* @_BSTree_ctor (%BSTree* %_this1){
__fresh1110:
  %cast_op3769 = bitcast %BSTree* %_this1 to %Object* 
  %dummy3770 = call %Object* @_Object_ctor ( %Object* %cast_op3769 )
  %path3771 = getelementptr %BSTree* %_this1, i32 0, i32 1
  store i8* @_const_str609, i8** %path3771
  %vt_slot3772 = getelementptr %BSTree* %_this1, i32 0, i32 0
  store %_BSTree_vtable* @_BSTree_vtable596, %_BSTree_vtable** %vt_slot3772
  %path3773 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %cast_op3774 = bitcast i8* null to %Number* 
  store %Number* %cast_op3774, %Number** %path3773
  %path3775 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %cast_op3776 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3776, %BSTree** %path3775
  %path3777 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %cast_op3778 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3778, %BSTree** %path3777
  %path3779 = getelementptr %BSTree* %_this1, i32 0, i32 5
  %cast_op3780 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3780, %BSTree** %path3779
  ret %BSTree* %_this1
}


define i1 @ptr_eq (%Object* %a3756, %Object* %b3754){
__fresh1105:
  %a_slot3757 = alloca %Object*
  store %Object* %a3756, %Object** %a_slot3757
  %b_slot3755 = alloca %Object*
  store %Object* %b3754, %Object** %b_slot3755
  %vdecl_slot3758 = alloca i1
  store i1 0, i1* %vdecl_slot3758
  %lhs_or_call3759 = load %Object** %a_slot3757
  %ifnull_slot3760 = alloca %Object*
  store %Object* %lhs_or_call3759, %Object** %ifnull_slot3760
  %ifnull_guard3761 = icmp ne %Object* %lhs_or_call3759, null
  br i1 %ifnull_guard3761, label %__then1104, label %__else1103

__fresh1106:
  br label %__then1104

__then1104:
  %lhs_or_call3762 = load %Object** %b_slot3755
  %ifnull_slot3763 = alloca %Object*
  store %Object* %lhs_or_call3762, %Object** %ifnull_slot3763
  %ifnull_guard3764 = icmp ne %Object* %lhs_or_call3762, null
  br i1 %ifnull_guard3764, label %__then1101, label %__else1100

__fresh1107:
  br label %__then1101

__then1101:
  %lhs_or_call3765 = load %Object** %ifnull_slot3760
  %lhs_or_call3766 = load %Object** %ifnull_slot3763
  %bop3767 = icmp eq %Object* %lhs_or_call3765, %lhs_or_call3766
  store i1 %bop3767, i1* %vdecl_slot3758
  br label %__merge1099

__fresh1108:
  br label %__else1100

__else1100:
  br label %__merge1099

__merge1099:
  br label %__merge1102

__fresh1109:
  br label %__else1103

__else1103:
  br label %__merge1102

__merge1102:
  %lhs_or_call3768 = load i1* %vdecl_slot3758
  ret i1 %lhs_or_call3768
}


define i32 @abs (i32 %x3745){
__fresh1096:
  %x_slot3746 = alloca i32
  store i32 %x3745, i32* %x_slot3746
  %vdecl_slot3747 = alloca i32
  store i32 0, i32* %vdecl_slot3747
  %lhs_or_call3748 = load i32* %x_slot3746
  %bop3749 = icmp sge i32 %lhs_or_call3748, 0
  br i1 %bop3749, label %__then1095, label %__else1094

__fresh1097:
  br label %__then1095

__then1095:
  %lhs_or_call3750 = load i32* %x_slot3746
  store i32 %lhs_or_call3750, i32* %vdecl_slot3747
  br label %__merge1093

__fresh1098:
  br label %__else1094

__else1094:
  %lhs_or_call3751 = load i32* %x_slot3746
  %unop3752 = sub i32 0, %lhs_or_call3751
  store i32 %unop3752, i32* %vdecl_slot3747
  br label %__merge1093

__merge1093:
  %lhs_or_call3753 = load i32* %vdecl_slot3747
  ret i32 %lhs_or_call3753
}


define i32 @gcd (i32 %a3730, i32 %b3728){
__fresh1090:
  %a_slot3731 = alloca i32
  store i32 %a3730, i32* %a_slot3731
  %b_slot3729 = alloca i32
  store i32 %b3728, i32* %b_slot3729
  %lhs_or_call3732 = load i32* %a_slot3731
  %ret3733 = call i32 @abs ( i32 %lhs_or_call3732 )
  store i32 %ret3733, i32* %a_slot3731
  %lhs_or_call3734 = load i32* %b_slot3729
  %ret3735 = call i32 @abs ( i32 %lhs_or_call3734 )
  store i32 %ret3735, i32* %b_slot3729
  br label %__cond1089

__cond1089:
  %lhs_or_call3736 = load i32* %b_slot3729
  %bop3737 = icmp ne i32 %lhs_or_call3736, 0
  br i1 %bop3737, label %__body1088, label %__post1087

__fresh1091:
  br label %__body1088

__body1088:
  %lhs_or_call3738 = load i32* %b_slot3729
  %lhs_or_call3739 = load i32* %a_slot3731
  %ret3740 = call i32 @oat_mod ( i32 %lhs_or_call3739, i32 %lhs_or_call3738 )
  %vdecl_slot3741 = alloca i32
  store i32 %ret3740, i32* %vdecl_slot3741
  %lhs_or_call3742 = load i32* %b_slot3729
  store i32 %lhs_or_call3742, i32* %a_slot3731
  %lhs_or_call3743 = load i32* %vdecl_slot3741
  store i32 %lhs_or_call3743, i32* %b_slot3729
  br label %__cond1089

__fresh1092:
  br label %__post1087

__post1087:
  %lhs_or_call3744 = load i32* %a_slot3731
  ret i32 %lhs_or_call3744
}


define i8* @_Zero_toString (%Zero* %_this1){
__fresh1086:
  ret i8* @_const_str608
}


define %Quotient* @_Zero_add (%Zero* %_this1, %Quotient* %a3717){
__fresh1085:
  %a_slot3718 = alloca %Quotient*
  store %Quotient* %a3717, %Quotient** %a_slot3718
  %lhs_or_call3719 = load %Quotient** %a_slot3718
  %path3720 = getelementptr %Quotient* %lhs_or_call3719, i32 0, i32 3
  %lhs_or_call3721 = load i32* %path3720
  %lhs_or_call3722 = load %Quotient** %a_slot3718
  %path3723 = getelementptr %Quotient* %lhs_or_call3722, i32 0, i32 2
  %lhs_or_call3724 = load i32* %path3723
  %mem_ptr3725 = call i32* @oat_malloc ( i32 16 )
  %obj3726 = bitcast i32* %mem_ptr3725 to %Quotient* 
  %new_obj3727 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj3726, i32 %lhs_or_call3724, i32 %lhs_or_call3721 )
  ret %Quotient* %new_obj3727
}


define %Zero* @_Zero_ctor (%Zero* %_this1){
__fresh1084:
  %cast_op3713 = bitcast %Zero* %_this1 to %Integer* 
  %dummy3714 = call %Integer* @_Integer_ctor ( %Integer* %cast_op3713, i32 0 )
  %path3715 = getelementptr %Zero* %_this1, i32 0, i32 1
  store i8* @_const_str607, i8** %path3715
  %vt_slot3716 = getelementptr %Zero* %_this1, i32 0, i32 0
  store %_Zero_vtable* @_Zero_vtable595, %_Zero_vtable** %vt_slot3716
  ret %Zero* %_this1
}


define i8* @_Integer_toString (%Integer* %_this1){
__fresh1083:
  %path3710 = getelementptr %Integer* %_this1, i32 0, i32 2
  %lhs_or_call3711 = load i32* %path3710
  %ret3712 = call i8* @string_of_int ( i32 %lhs_or_call3711 )
  ret i8* %ret3712
}


define i32 @_Integer_compareTo (%Integer* %_this1, %Number* %x3684){
__fresh1078:
  %x_slot3685 = alloca %Number*
  store %Number* %x3684, %Number** %x_slot3685
  %vdecl_slot3686 = alloca i32
  store i32 0, i32* %vdecl_slot3686
  %lhs_or_call3687 = load %Number** %x_slot3685
  %cast_op3688 = bitcast %Number* %lhs_or_call3687 to %Integer* 
  %cast_op3689 = bitcast %Integer* %cast_op3688 to i8** 
  %cast_op3690 = bitcast %_Integer_vtable* @_Integer_vtable594 to i8* 
  %vt_ptr_slot3691 = alloca i8*
  %tmp03693 = load i8** %cast_op3689
  store i8* %tmp03693, i8** %vt_ptr_slot3691
  br label %__loop1077

__loop1077:
  %tmp13694 = load i8** %vt_ptr_slot3691
  %guard13698 = icmp eq i8* %tmp13694, %cast_op3690
  br i1 %guard13698, label %__then1074, label %__fall11076

__fresh1079:
  br label %__fall11076

__fall11076:
  %guard23699 = icmp eq i8* %tmp13694, null
  br i1 %guard23699, label %__else1073, label %__fall21075

__fresh1080:
  br label %__fall21075

__fall21075:
  %tmp23695 = load i8** %vt_ptr_slot3691
  %tmp33696 = bitcast i8* %tmp23695 to i8** 
  %tmp43697 = load i8** %tmp33696
  store i8* %tmp43697, i8** %vt_ptr_slot3691
  br label %__loop1077

__fresh1081:
  br label %__then1074

__then1074:
  %var_slot3692 = alloca %Integer*
  store %Integer* %cast_op3688, %Integer** %var_slot3692
  %path3703 = getelementptr %Integer* %_this1, i32 0, i32 2
  %lhs_or_call3704 = load i32* %path3703
  %lhs_or_call3705 = load %Integer** %var_slot3692
  %path3706 = getelementptr %Integer* %lhs_or_call3705, i32 0, i32 2
  %lhs_or_call3707 = load i32* %path3706
  %bop3708 = sub i32 %lhs_or_call3704, %lhs_or_call3707
  store i32 %bop3708, i32* %vdecl_slot3686
  br label %__done1072

__fresh1082:
  br label %__else1073

__else1073:
  %lhs_or_call3700 = load %Number** %x_slot3685
  %cast_op3701 = bitcast %Integer* %_this1 to %Quotient* 
  %ret3702 = call i32 @_Quotient_compareTo ( %Quotient* %cast_op3701, %Number* %lhs_or_call3700 )
  store i32 %ret3702, i32* %vdecl_slot3686
  br label %__done1072

__done1072:
  %lhs_or_call3709 = load i32* %vdecl_slot3686
  ret i32 %lhs_or_call3709
}


define i32 @_Integer_val (%Integer* %_this1){
__fresh1071:
  %vtmp3679 = getelementptr %Integer* %_this1, i32 0, i32 0
  %vtable3678 = load %_Integer_vtable** %vtmp3679
  %fptmp3680 = getelementptr %_Integer_vtable* %vtable3678, i32 0, i32 4
  %method3681 = load i32 (%Quotient*)** %fptmp3680
  %cast_op3682 = bitcast %Integer* %_this1 to %Quotient* 
  %ret3683 = call i32 %method3681 ( %Quotient* %cast_op3682 )
  ret i32 %ret3683
}


define %Integer* @_Integer_ctor (%Integer* %_this1, i32 %x3671){
__fresh1070:
  %x_slot3672 = alloca i32
  store i32 %x3671, i32* %x_slot3672
  %lhs_or_call3673 = load i32* %x_slot3672
  %cast_op3674 = bitcast %Integer* %_this1 to %Quotient* 
  %dummy3675 = call %Quotient* @_Quotient_ctor ( %Quotient* %cast_op3674, i32 %lhs_or_call3673, i32 1 )
  %path3676 = getelementptr %Integer* %_this1, i32 0, i32 1
  store i8* @_const_str606, i8** %path3676
  %vt_slot3677 = getelementptr %Integer* %_this1, i32 0, i32 0
  store %_Integer_vtable* @_Integer_vtable594, %_Integer_vtable** %vt_slot3677
  ret %Integer* %_this1
}


define i8* @_Quotient_toString (%Quotient* %_this1){
__fresh1069:
  %path3663 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3664 = load i32* %path3663
  %ret3665 = call i8* @string_of_int ( i32 %lhs_or_call3664 )
  %path3666 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3667 = load i32* %path3666
  %ret3668 = call i8* @string_of_int ( i32 %lhs_or_call3667 )
  %ret3669 = call i8* @string_cat ( i8* %ret3668, i8* @_const_str605 )
  %ret3670 = call i8* @string_cat ( i8* %ret3669, i8* %ret3665 )
  ret i8* %ret3670
}


define i32 @_Quotient_compareTo (%Quotient* %_this1, %Number* %x3630){
__fresh1064:
  %x_slot3631 = alloca %Number*
  store %Number* %x3630, %Number** %x_slot3631
  %vdecl_slot3632 = alloca i32
  store i32 0, i32* %vdecl_slot3632
  %lhs_or_call3633 = load %Number** %x_slot3631
  %cast_op3634 = bitcast %Number* %lhs_or_call3633 to %Quotient* 
  %cast_op3635 = bitcast %Quotient* %cast_op3634 to i8** 
  %cast_op3636 = bitcast %_Quotient_vtable* @_Quotient_vtable593 to i8* 
  %vt_ptr_slot3637 = alloca i8*
  %tmp03639 = load i8** %cast_op3635
  store i8* %tmp03639, i8** %vt_ptr_slot3637
  br label %__loop1063

__loop1063:
  %tmp13640 = load i8** %vt_ptr_slot3637
  %guard13644 = icmp eq i8* %tmp13640, %cast_op3636
  br i1 %guard13644, label %__then1060, label %__fall11062

__fresh1065:
  br label %__fall11062

__fall11062:
  %guard23645 = icmp eq i8* %tmp13640, null
  br i1 %guard23645, label %__else1059, label %__fall21061

__fresh1066:
  br label %__fall21061

__fall21061:
  %tmp23641 = load i8** %vt_ptr_slot3637
  %tmp33642 = bitcast i8* %tmp23641 to i8** 
  %tmp43643 = load i8** %tmp33642
  store i8* %tmp43643, i8** %vt_ptr_slot3637
  br label %__loop1063

__fresh1067:
  br label %__then1060

__then1060:
  %var_slot3638 = alloca %Quotient*
  store %Quotient* %cast_op3634, %Quotient** %var_slot3638
  %path3649 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3650 = load i32* %path3649
  %lhs_or_call3651 = load %Quotient** %var_slot3638
  %path3652 = getelementptr %Quotient* %lhs_or_call3651, i32 0, i32 3
  %lhs_or_call3653 = load i32* %path3652
  %bop3654 = mul i32 %lhs_or_call3650, %lhs_or_call3653
  %path3655 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3656 = load i32* %path3655
  %lhs_or_call3657 = load %Quotient** %var_slot3638
  %path3658 = getelementptr %Quotient* %lhs_or_call3657, i32 0, i32 2
  %lhs_or_call3659 = load i32* %path3658
  %bop3660 = mul i32 %lhs_or_call3656, %lhs_or_call3659
  %bop3661 = sub i32 %bop3654, %bop3660
  store i32 %bop3661, i32* %vdecl_slot3632
  br label %__done1058

__fresh1068:
  br label %__else1059

__else1059:
  %lhs_or_call3646 = load %Number** %x_slot3631
  %cast_op3647 = bitcast %Quotient* %_this1 to %Number* 
  %ret3648 = call i32 @_Number_compareTo ( %Number* %cast_op3647, %Number* %lhs_or_call3646 )
  store i32 %ret3648, i32* %vdecl_slot3632
  br label %__done1058

__done1058:
  %lhs_or_call3662 = load i32* %vdecl_slot3632
  ret i32 %lhs_or_call3662
}


define i32 @_Quotient_mod (%Quotient* %_this1){
__fresh1057:
  %vtmp3620 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3619 = load %_Quotient_vtable** %vtmp3620
  %fptmp3621 = getelementptr %_Quotient_vtable* %vtable3619, i32 0, i32 5
  %method3622 = load i32 (%Quotient*)** %fptmp3621
  %ret3623 = call i32 %method3622 ( %Quotient* %_this1 )
  %vtmp3625 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3624 = load %_Quotient_vtable** %vtmp3625
  %fptmp3626 = getelementptr %_Quotient_vtable* %vtable3624, i32 0, i32 4
  %method3627 = load i32 (%Quotient*)** %fptmp3626
  %ret3628 = call i32 %method3627 ( %Quotient* %_this1 )
  %ret3629 = call i32 @oat_mod ( i32 %ret3628, i32 %ret3623 )
  ret i32 %ret3629
}


define i32 @_Quotient_div (%Quotient* %_this1){
__fresh1056:
  %vtmp3609 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3608 = load %_Quotient_vtable** %vtmp3609
  %fptmp3610 = getelementptr %_Quotient_vtable* %vtable3608, i32 0, i32 5
  %method3611 = load i32 (%Quotient*)** %fptmp3610
  %ret3612 = call i32 %method3611 ( %Quotient* %_this1 )
  %vtmp3614 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3613 = load %_Quotient_vtable** %vtmp3614
  %fptmp3615 = getelementptr %_Quotient_vtable* %vtable3613, i32 0, i32 4
  %method3616 = load i32 (%Quotient*)** %fptmp3615
  %ret3617 = call i32 %method3616 ( %Quotient* %_this1 )
  %ret3618 = call i32 @oat_div ( i32 %ret3617, i32 %ret3612 )
  ret i32 %ret3618
}


define %Quotient* @_Quotient_add (%Quotient* %_this1, %Quotient* %a3571){
__fresh1055:
  %a_slot3572 = alloca %Quotient*
  store %Quotient* %a3571, %Quotient** %a_slot3572
  %lhs_or_call3573 = load %Quotient** %a_slot3572
  %path3574 = getelementptr %Quotient* %lhs_or_call3573, i32 0, i32 3
  %lhs_or_call3575 = load i32* %path3574
  %path3576 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3577 = load i32* %path3576
  %ret3578 = call i32 @gcd ( i32 %lhs_or_call3577, i32 %lhs_or_call3575 )
  %vdecl_slot3579 = alloca i32
  store i32 %ret3578, i32* %vdecl_slot3579
  %lhs_or_call3580 = load i32* %vdecl_slot3579
  %lhs_or_call3581 = load %Quotient** %a_slot3572
  %path3582 = getelementptr %Quotient* %lhs_or_call3581, i32 0, i32 3
  %lhs_or_call3583 = load i32* %path3582
  %ret3584 = call i32 @oat_div ( i32 %lhs_or_call3583, i32 %lhs_or_call3580 )
  %path3585 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3586 = load i32* %path3585
  %bop3587 = mul i32 %ret3584, %lhs_or_call3586
  %lhs_or_call3588 = load i32* %vdecl_slot3579
  %lhs_or_call3589 = load %Quotient** %a_slot3572
  %path3590 = getelementptr %Quotient* %lhs_or_call3589, i32 0, i32 3
  %lhs_or_call3591 = load i32* %path3590
  %ret3592 = call i32 @oat_div ( i32 %lhs_or_call3591, i32 %lhs_or_call3588 )
  %path3593 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3594 = load i32* %path3593
  %bop3595 = mul i32 %ret3592, %lhs_or_call3594
  %lhs_or_call3596 = load i32* %vdecl_slot3579
  %path3597 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3598 = load i32* %path3597
  %ret3599 = call i32 @oat_div ( i32 %lhs_or_call3598, i32 %lhs_or_call3596 )
  %lhs_or_call3600 = load %Quotient** %a_slot3572
  %path3601 = getelementptr %Quotient* %lhs_or_call3600, i32 0, i32 2
  %lhs_or_call3602 = load i32* %path3601
  %bop3603 = mul i32 %ret3599, %lhs_or_call3602
  %bop3604 = add i32 %bop3595, %bop3603
  %mem_ptr3605 = call i32* @oat_malloc ( i32 16 )
  %obj3606 = bitcast i32* %mem_ptr3605 to %Quotient* 
  %new_obj3607 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj3606, i32 %bop3604, i32 %bop3587 )
  ret %Quotient* %new_obj3607
}


define i32 @_Quotient_denom (%Quotient* %_this1){
__fresh1054:
  %path3569 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3570 = load i32* %path3569
  ret i32 %lhs_or_call3570
}


define i32 @_Quotient_num (%Quotient* %_this1){
__fresh1053:
  %path3567 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3568 = load i32* %path3567
  ret i32 %lhs_or_call3568
}


define %Quotient* @_Quotient_ctor (%Quotient* %_this1, i32 %n3539, i32 %d3537){
__fresh1048:
  %n_slot3540 = alloca i32
  store i32 %n3539, i32* %n_slot3540
  %d_slot3538 = alloca i32
  store i32 %d3537, i32* %d_slot3538
  %cast_op3541 = bitcast %Quotient* %_this1 to %Number* 
  %dummy3542 = call %Number* @_Number_ctor ( %Number* %cast_op3541 )
  %path3543 = getelementptr %Quotient* %_this1, i32 0, i32 1
  store i8* @_const_str603, i8** %path3543
  %vt_slot3544 = getelementptr %Quotient* %_this1, i32 0, i32 0
  store %_Quotient_vtable* @_Quotient_vtable593, %_Quotient_vtable** %vt_slot3544
  %lhs_or_call3545 = load i32* %d_slot3538
  %lhs_or_call3546 = load i32* %n_slot3540
  %ret3547 = call i32 @gcd ( i32 %lhs_or_call3546, i32 %lhs_or_call3545 )
  %vdecl_slot3548 = alloca i32
  store i32 %ret3547, i32* %vdecl_slot3548
  %lhs_or_call3549 = load i32* %d_slot3538
  %bop3550 = icmp eq i32 %lhs_or_call3549, 0
  br i1 %bop3550, label %__then1044, label %__else1043

__fresh1049:
  br label %__then1044

__then1044:
  call void @print_string( i8* @_const_str604 )
  call void @oat_abort( i32 -1 )
  br label %__merge1042

__fresh1050:
  br label %__else1043

__else1043:
  br label %__merge1042

__merge1042:
  %lhs_or_call3551 = load i32* %vdecl_slot3548
  %lhs_or_call3552 = load i32* %n_slot3540
  %ret3553 = call i32 @oat_div ( i32 %lhs_or_call3552, i32 %lhs_or_call3551 )
  store i32 %ret3553, i32* %n_slot3540
  %lhs_or_call3554 = load i32* %vdecl_slot3548
  %lhs_or_call3555 = load i32* %d_slot3538
  %ret3556 = call i32 @oat_div ( i32 %lhs_or_call3555, i32 %lhs_or_call3554 )
  store i32 %ret3556, i32* %d_slot3538
  %lhs_or_call3557 = load i32* %d_slot3538
  %bop3558 = icmp slt i32 %lhs_or_call3557, 0
  br i1 %bop3558, label %__then1047, label %__else1046

__fresh1051:
  br label %__then1047

__then1047:
  %lhs_or_call3559 = load i32* %n_slot3540
  %unop3560 = sub i32 0, %lhs_or_call3559
  store i32 %unop3560, i32* %n_slot3540
  %lhs_or_call3561 = load i32* %d_slot3538
  %unop3562 = sub i32 0, %lhs_or_call3561
  store i32 %unop3562, i32* %d_slot3538
  br label %__merge1045

__fresh1052:
  br label %__else1046

__else1046:
  br label %__merge1045

__merge1045:
  %path3563 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3564 = load i32* %n_slot3540
  store i32 %lhs_or_call3564, i32* %path3563
  %path3565 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3566 = load i32* %d_slot3538
  store i32 %lhs_or_call3566, i32* %path3565
  ret %Quotient* %_this1
}


define i8* @_Number_toString (%Number* %_this1){
__fresh1041:
  call void @print_string( i8* @_const_str601 )
  call void @oat_abort( i32 -1 )
  ret i8* @_const_str602
}


define i32 @_Number_compareTo (%Number* %_this1, %Number* %a3535){
__fresh1040:
  %a_slot3536 = alloca %Number*
  store %Number* %a3535, %Number** %a_slot3536
  call void @print_string( i8* @_const_str600 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define %Number* @_Number_ctor (%Number* %_this1){
__fresh1039:
  %cast_op3531 = bitcast %Number* %_this1 to %Object* 
  %dummy3532 = call %Object* @_Object_ctor ( %Object* %cast_op3531 )
  %path3533 = getelementptr %Number* %_this1, i32 0, i32 1
  store i8* @_const_str599, i8** %path3533
  %vt_slot3534 = getelementptr %Number* %_this1, i32 0, i32 0
  store %_Number_vtable* @_Number_vtable592, %_Number_vtable** %vt_slot3534
  ret %Number* %_this1
}


define i1 @equals (%Object* %o13526, %Object* %o23524){
__fresh1038:
  %o1_slot3527 = alloca %Object*
  store %Object* %o13526, %Object** %o1_slot3527
  %o2_slot3525 = alloca %Object*
  store %Object* %o23524, %Object** %o2_slot3525
  %lhs_or_call3528 = load %Object** %o1_slot3527
  %lhs_or_call3529 = load %Object** %o2_slot3525
  %bop3530 = icmp eq %Object* %lhs_or_call3528, %lhs_or_call3529
  ret i1 %bop3530
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1037:
  %path3522 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3523 = load i8** %path3522
  ret i8* %lhs_or_call3523
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1036:
  %path3520 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str598, i8** %path3520
  %vt_slot3521 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable591, %_Object_vtable** %vt_slot3521
  ret %Object* %_this1
}



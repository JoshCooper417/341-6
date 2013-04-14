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


define i32 @program (i32 %argc4913, { i32, [ 0 x i8* ] }* %argv4911){
__fresh1607:
  %argc_slot4914 = alloca i32
  store i32 %argc4913, i32* %argc_slot4914
  %argv_slot4912 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv4911, { i32, [ 0 x i8* ] }** %argv_slot4912
  %mem_ptr4915 = call i32* @oat_malloc ( i32 28 )
  %obj4916 = bitcast i32* %mem_ptr4915 to %AVLTree* 
  %new_obj4917 = call %AVLTree* @_AVLTree_ctor ( %AVLTree* %obj4916 )
  %vdecl_slot4918 = alloca %AVLTree*
  store %AVLTree* %new_obj4917, %AVLTree** %vdecl_slot4918
  %vdecl_slot4919 = alloca i32
  store i32 0, i32* %vdecl_slot4919
  %lhs_or_call4923 = load %AVLTree** %vdecl_slot4918
  %vtmp4925 = getelementptr %AVLTree* %lhs_or_call4923, i32 0, i32 0
  %vtable4924 = load %_AVLTree_vtable** %vtmp4925
  %fptmp4926 = getelementptr %_AVLTree_vtable* %vtable4924, i32 0, i32 2
  %method4927 = load void (%AVLTree*, %Number*)** %fptmp4926
  %mem_ptr4920 = call i32* @oat_malloc ( i32 16 )
  %obj4921 = bitcast i32* %mem_ptr4920 to %Zero* 
  %new_obj4922 = call %Zero* @_Zero_ctor ( %Zero* %obj4921 )
  %cast_op4928 = bitcast %Zero* %new_obj4922 to %Number* 
  call void %method4927( %AVLTree* %lhs_or_call4923, %Number* %cast_op4928 )
  %lhs_or_call4932 = load %AVLTree** %vdecl_slot4918
  %vtmp4934 = getelementptr %AVLTree* %lhs_or_call4932, i32 0, i32 0
  %vtable4933 = load %_AVLTree_vtable** %vtmp4934
  %fptmp4935 = getelementptr %_AVLTree_vtable* %vtable4933, i32 0, i32 2
  %method4936 = load void (%AVLTree*, %Number*)** %fptmp4935
  %mem_ptr4929 = call i32* @oat_malloc ( i32 16 )
  %obj4930 = bitcast i32* %mem_ptr4929 to %Integer* 
  %new_obj4931 = call %Integer* @_Integer_ctor ( %Integer* %obj4930, i32 1 )
  %cast_op4937 = bitcast %Integer* %new_obj4931 to %Number* 
  call void %method4936( %AVLTree* %lhs_or_call4932, %Number* %cast_op4937 )
  %lhs_or_call4941 = load %AVLTree** %vdecl_slot4918
  %vtmp4943 = getelementptr %AVLTree* %lhs_or_call4941, i32 0, i32 0
  %vtable4942 = load %_AVLTree_vtable** %vtmp4943
  %fptmp4944 = getelementptr %_AVLTree_vtable* %vtable4942, i32 0, i32 2
  %method4945 = load void (%AVLTree*, %Number*)** %fptmp4944
  %mem_ptr4938 = call i32* @oat_malloc ( i32 16 )
  %obj4939 = bitcast i32* %mem_ptr4938 to %Integer* 
  %new_obj4940 = call %Integer* @_Integer_ctor ( %Integer* %obj4939, i32 2 )
  %cast_op4946 = bitcast %Integer* %new_obj4940 to %Number* 
  call void %method4945( %AVLTree* %lhs_or_call4941, %Number* %cast_op4946 )
  %lhs_or_call4950 = load %AVLTree** %vdecl_slot4918
  %vtmp4952 = getelementptr %AVLTree* %lhs_or_call4950, i32 0, i32 0
  %vtable4951 = load %_AVLTree_vtable** %vtmp4952
  %fptmp4953 = getelementptr %_AVLTree_vtable* %vtable4951, i32 0, i32 2
  %method4954 = load void (%AVLTree*, %Number*)** %fptmp4953
  %mem_ptr4947 = call i32* @oat_malloc ( i32 16 )
  %obj4948 = bitcast i32* %mem_ptr4947 to %Quotient* 
  %new_obj4949 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4948, i32 1, i32 2 )
  %cast_op4955 = bitcast %Quotient* %new_obj4949 to %Number* 
  call void %method4954( %AVLTree* %lhs_or_call4950, %Number* %cast_op4955 )
  %lhs_or_call4959 = load %AVLTree** %vdecl_slot4918
  %vtmp4961 = getelementptr %AVLTree* %lhs_or_call4959, i32 0, i32 0
  %vtable4960 = load %_AVLTree_vtable** %vtmp4961
  %fptmp4962 = getelementptr %_AVLTree_vtable* %vtable4960, i32 0, i32 2
  %method4963 = load void (%AVLTree*, %Number*)** %fptmp4962
  %mem_ptr4956 = call i32* @oat_malloc ( i32 16 )
  %obj4957 = bitcast i32* %mem_ptr4956 to %Quotient* 
  %new_obj4958 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4957, i32 1, i32 4 )
  %cast_op4964 = bitcast %Quotient* %new_obj4958 to %Number* 
  call void %method4963( %AVLTree* %lhs_or_call4959, %Number* %cast_op4964 )
  %lhs_or_call4968 = load %AVLTree** %vdecl_slot4918
  %vtmp4970 = getelementptr %AVLTree* %lhs_or_call4968, i32 0, i32 0
  %vtable4969 = load %_AVLTree_vtable** %vtmp4970
  %fptmp4971 = getelementptr %_AVLTree_vtable* %vtable4969, i32 0, i32 2
  %method4972 = load void (%AVLTree*, %Number*)** %fptmp4971
  %mem_ptr4965 = call i32* @oat_malloc ( i32 16 )
  %obj4966 = bitcast i32* %mem_ptr4965 to %Quotient* 
  %new_obj4967 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4966, i32 3, i32 4 )
  %cast_op4973 = bitcast %Quotient* %new_obj4967 to %Number* 
  call void %method4972( %AVLTree* %lhs_or_call4968, %Number* %cast_op4973 )
  %lhs_or_call4977 = load %AVLTree** %vdecl_slot4918
  %vtmp4979 = getelementptr %AVLTree* %lhs_or_call4977, i32 0, i32 0
  %vtable4978 = load %_AVLTree_vtable** %vtmp4979
  %fptmp4980 = getelementptr %_AVLTree_vtable* %vtable4978, i32 0, i32 2
  %method4981 = load void (%AVLTree*, %Number*)** %fptmp4980
  %mem_ptr4974 = call i32* @oat_malloc ( i32 16 )
  %obj4975 = bitcast i32* %mem_ptr4974 to %Quotient* 
  %new_obj4976 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4975, i32 4, i32 5 )
  %cast_op4982 = bitcast %Quotient* %new_obj4976 to %Number* 
  call void %method4981( %AVLTree* %lhs_or_call4977, %Number* %cast_op4982 )
  %lhs_or_call4986 = load %AVLTree** %vdecl_slot4918
  %vtmp4988 = getelementptr %AVLTree* %lhs_or_call4986, i32 0, i32 0
  %vtable4987 = load %_AVLTree_vtable** %vtmp4988
  %fptmp4989 = getelementptr %_AVLTree_vtable* %vtable4987, i32 0, i32 4
  %method4990 = load void (%BSTree*, %Number*)** %fptmp4989
  %mem_ptr4983 = call i32* @oat_malloc ( i32 16 )
  %obj4984 = bitcast i32* %mem_ptr4983 to %Quotient* 
  %new_obj4985 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj4984, i32 1, i32 4 )
  %cast_op4991 = bitcast %Quotient* %new_obj4985 to %Number* 
  %cast_op4992 = bitcast %AVLTree* %lhs_or_call4986 to %BSTree* 
  call void %method4990( %BSTree* %cast_op4992, %Number* %cast_op4991 )
  %lhs_or_call4993 = load %AVLTree** %vdecl_slot4918
  %vtmp4995 = getelementptr %AVLTree* %lhs_or_call4993, i32 0, i32 0
  %vtable4994 = load %_AVLTree_vtable** %vtmp4995
  %fptmp4996 = getelementptr %_AVLTree_vtable* %vtable4994, i32 0, i32 11
  %method4997 = load i32 (%AVLTree*)** %fptmp4996
  %ret4998 = call i32 %method4997 ( %AVLTree* %lhs_or_call4993 )
  %vdecl_slot4999 = alloca i32
  store i32 %ret4998, i32* %vdecl_slot4999
  %lhs_or_call5000 = load %AVLTree** %vdecl_slot4918
  %cast_op5001 = bitcast %AVLTree* %lhs_or_call5000 to %BSTree* 
  %ret5002 = call %Quotient* @addAll ( %BSTree* %cast_op5001 )
  %vdecl_slot5003 = alloca %Quotient*
  store %Quotient* %ret5002, %Quotient** %vdecl_slot5003
  %lhs_or_call5009 = load %Quotient** %vdecl_slot5003
  %vtmp5011 = getelementptr %Quotient* %lhs_or_call5009, i32 0, i32 0
  %vtable5010 = load %_Quotient_vtable** %vtmp5011
  %fptmp5012 = getelementptr %_Quotient_vtable* %vtable5010, i32 0, i32 6
  %method5013 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp5012
  %lhs_or_call5004 = load i32* %vdecl_slot4999
  %unop5005 = sub i32 0, %lhs_or_call5004
  %mem_ptr5006 = call i32* @oat_malloc ( i32 16 )
  %obj5007 = bitcast i32* %mem_ptr5006 to %Integer* 
  %new_obj5008 = call %Integer* @_Integer_ctor ( %Integer* %obj5007, i32 %unop5005 )
  %cast_op5014 = bitcast %Integer* %new_obj5008 to %Quotient* 
  %ret5015 = call %Quotient* %method5013 ( %Quotient* %lhs_or_call5009, %Quotient* %cast_op5014 )
  store %Quotient* %ret5015, %Quotient** %vdecl_slot5003
  %lhs_or_call5016 = load %Quotient** %vdecl_slot5003
  %vtmp5018 = getelementptr %Quotient* %lhs_or_call5016, i32 0, i32 0
  %vtable5017 = load %_Quotient_vtable** %vtmp5018
  %fptmp5019 = getelementptr %_Quotient_vtable* %vtable5017, i32 0, i32 4
  %method5020 = load i32 (%Quotient*)** %fptmp5019
  %ret5021 = call i32 %method5020 ( %Quotient* %lhs_or_call5016 )
  %lhs_or_call5022 = load %Quotient** %vdecl_slot5003
  %vtmp5024 = getelementptr %Quotient* %lhs_or_call5022, i32 0, i32 0
  %vtable5023 = load %_Quotient_vtable** %vtmp5024
  %fptmp5025 = getelementptr %_Quotient_vtable* %vtable5023, i32 0, i32 5
  %method5026 = load i32 (%Quotient*)** %fptmp5025
  %ret5027 = call i32 %method5026 ( %Quotient* %lhs_or_call5022 )
  %bop5028 = sub i32 %ret5021, %ret5027
  store i32 %bop5028, i32* %vdecl_slot4919
  %lhs_or_call5029 = load i32* %vdecl_slot4919
  ret i32 %lhs_or_call5029
}


define %Quotient* @addAll (%BSTree* %t4852){
__fresh1596:
  %t_slot4853 = alloca %BSTree*
  store %BSTree* %t4852, %BSTree** %t_slot4853
  %mem_ptr4854 = call i32* @oat_malloc ( i32 16 )
  %obj4855 = bitcast i32* %mem_ptr4854 to %Zero* 
  %new_obj4856 = call %Zero* @_Zero_ctor ( %Zero* %obj4855 )
  %cast_op4857 = bitcast %Zero* %new_obj4856 to %Quotient* 
  %vdecl_slot4858 = alloca %Quotient*
  store %Quotient* %cast_op4857, %Quotient** %vdecl_slot4858
  %lhs_or_call4859 = load %BSTree** %t_slot4853
  %path4860 = getelementptr %BSTree* %lhs_or_call4859, i32 0, i32 3
  %lhs_or_call4861 = load %BSTree** %path4860
  %ifnull_slot4862 = alloca %BSTree*
  store %BSTree* %lhs_or_call4861, %BSTree** %ifnull_slot4862
  %ifnull_guard4863 = icmp ne %BSTree* %lhs_or_call4861, null
  br i1 %ifnull_guard4863, label %__then1583, label %__else1582

__fresh1597:
  br label %__then1583

__then1583:
  %lhs_or_call4866 = load %Quotient** %vdecl_slot4858
  %vtmp4868 = getelementptr %Quotient* %lhs_or_call4866, i32 0, i32 0
  %vtable4867 = load %_Quotient_vtable** %vtmp4868
  %fptmp4869 = getelementptr %_Quotient_vtable* %vtable4867, i32 0, i32 6
  %method4870 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4869
  %lhs_or_call4864 = load %BSTree** %ifnull_slot4862
  %ret4865 = call %Quotient* @addAll ( %BSTree* %lhs_or_call4864 )
  %ret4871 = call %Quotient* %method4870 ( %Quotient* %lhs_or_call4866, %Quotient* %ret4865 )
  store %Quotient* %ret4871, %Quotient** %vdecl_slot4858
  br label %__merge1581

__fresh1598:
  br label %__else1582

__else1582:
  br label %__merge1581

__merge1581:
  %lhs_or_call4872 = load %BSTree** %t_slot4853
  %path4873 = getelementptr %BSTree* %lhs_or_call4872, i32 0, i32 2
  %lhs_or_call4874 = load %Number** %path4873
  %ifnull_slot4875 = alloca %Number*
  store %Number* %lhs_or_call4874, %Number** %ifnull_slot4875
  %ifnull_guard4876 = icmp ne %Number* %lhs_or_call4874, null
  br i1 %ifnull_guard4876, label %__then1592, label %__else1591

__fresh1599:
  br label %__then1592

__then1592:
  %lhs_or_call4877 = load %Number** %ifnull_slot4875
  %cast_op4878 = bitcast %Number* %lhs_or_call4877 to %Quotient* 
  %cast_op4879 = bitcast %Quotient* %cast_op4878 to i8** 
  %cast_op4880 = bitcast %_Quotient_vtable* @_Quotient_vtable593 to i8* 
  %vt_ptr_slot4881 = alloca i8*
  %tmp04883 = load i8** %cast_op4879
  store i8* %tmp04883, i8** %vt_ptr_slot4881
  br label %__loop1589

__loop1589:
  %tmp14884 = load i8** %vt_ptr_slot4881
  %guard14888 = icmp eq i8* %tmp14884, %cast_op4880
  br i1 %guard14888, label %__then1586, label %__fall11588

__fresh1600:
  br label %__fall11588

__fall11588:
  %guard24889 = icmp eq i8* %tmp14884, null
  br i1 %guard24889, label %__else1585, label %__fall21587

__fresh1601:
  br label %__fall21587

__fall21587:
  %tmp24885 = load i8** %vt_ptr_slot4881
  %tmp34886 = bitcast i8* %tmp24885 to i8** 
  %tmp44887 = load i8** %tmp34886
  store i8* %tmp44887, i8** %vt_ptr_slot4881
  br label %__loop1589

__fresh1602:
  br label %__then1586

__then1586:
  %var_slot4882 = alloca %Quotient*
  store %Quotient* %cast_op4878, %Quotient** %var_slot4882
  %lhs_or_call4891 = load %Quotient** %vdecl_slot4858
  %vtmp4893 = getelementptr %Quotient* %lhs_or_call4891, i32 0, i32 0
  %vtable4892 = load %_Quotient_vtable** %vtmp4893
  %fptmp4894 = getelementptr %_Quotient_vtable* %vtable4892, i32 0, i32 6
  %method4895 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4894
  %lhs_or_call4890 = load %Quotient** %var_slot4882
  %ret4896 = call %Quotient* %method4895 ( %Quotient* %lhs_or_call4891, %Quotient* %lhs_or_call4890 )
  store %Quotient* %ret4896, %Quotient** %vdecl_slot4858
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
  %lhs_or_call4897 = load %BSTree** %t_slot4853
  %path4898 = getelementptr %BSTree* %lhs_or_call4897, i32 0, i32 4
  %lhs_or_call4899 = load %BSTree** %path4898
  %ifnull_slot4900 = alloca %BSTree*
  store %BSTree* %lhs_or_call4899, %BSTree** %ifnull_slot4900
  %ifnull_guard4901 = icmp ne %BSTree* %lhs_or_call4899, null
  br i1 %ifnull_guard4901, label %__then1595, label %__else1594

__fresh1605:
  br label %__then1595

__then1595:
  %lhs_or_call4904 = load %Quotient** %vdecl_slot4858
  %vtmp4906 = getelementptr %Quotient* %lhs_or_call4904, i32 0, i32 0
  %vtable4905 = load %_Quotient_vtable** %vtmp4906
  %fptmp4907 = getelementptr %_Quotient_vtable* %vtable4905, i32 0, i32 6
  %method4908 = load %Quotient* (%Quotient*, %Quotient*)** %fptmp4907
  %lhs_or_call4902 = load %BSTree** %ifnull_slot4900
  %ret4903 = call %Quotient* @addAll ( %BSTree* %lhs_or_call4902 )
  %ret4909 = call %Quotient* %method4908 ( %Quotient* %lhs_or_call4904, %Quotient* %ret4903 )
  store %Quotient* %ret4909, %Quotient** %vdecl_slot4858
  br label %__merge1593

__fresh1606:
  br label %__else1594

__else1594:
  br label %__merge1593

__merge1593:
  %lhs_or_call4910 = load %Quotient** %vdecl_slot4858
  ret %Quotient* %lhs_or_call4910
}


define void @inOrder (%BSTree* %t4827){
__fresh1574:
  %t_slot4828 = alloca %BSTree*
  store %BSTree* %t4827, %BSTree** %t_slot4828
  %lhs_or_call4829 = load %BSTree** %t_slot4828
  %path4830 = getelementptr %BSTree* %lhs_or_call4829, i32 0, i32 3
  %lhs_or_call4831 = load %BSTree** %path4830
  %ifnull_slot4832 = alloca %BSTree*
  store %BSTree* %lhs_or_call4831, %BSTree** %ifnull_slot4832
  %ifnull_guard4833 = icmp ne %BSTree* %lhs_or_call4831, null
  br i1 %ifnull_guard4833, label %__then1567, label %__else1566

__fresh1575:
  br label %__then1567

__then1567:
  %lhs_or_call4834 = load %BSTree** %ifnull_slot4832
  call void @inOrder( %BSTree* %lhs_or_call4834 )
  br label %__merge1565

__fresh1576:
  br label %__else1566

__else1566:
  br label %__merge1565

__merge1565:
  %lhs_or_call4835 = load %BSTree** %t_slot4828
  %path4836 = getelementptr %BSTree* %lhs_or_call4835, i32 0, i32 2
  %lhs_or_call4837 = load %Number** %path4836
  %ifnull_slot4838 = alloca %Number*
  store %Number* %lhs_or_call4837, %Number** %ifnull_slot4838
  %ifnull_guard4839 = icmp ne %Number* %lhs_or_call4837, null
  br i1 %ifnull_guard4839, label %__then1570, label %__else1569

__fresh1577:
  br label %__then1570

__then1570:
  %lhs_or_call4840 = load %Number** %ifnull_slot4838
  %vtmp4842 = getelementptr %Number* %lhs_or_call4840, i32 0, i32 0
  %vtable4841 = load %_Number_vtable** %vtmp4842
  %fptmp4843 = getelementptr %_Number_vtable* %vtable4841, i32 0, i32 3
  %method4844 = load i8* (%Number*)** %fptmp4843
  %ret4845 = call i8* %method4844 ( %Number* %lhs_or_call4840 )
  call void @print_string( i8* %ret4845 )
  br label %__merge1568

__fresh1578:
  br label %__else1569

__else1569:
  br label %__merge1568

__merge1568:
  %lhs_or_call4846 = load %BSTree** %t_slot4828
  %path4847 = getelementptr %BSTree* %lhs_or_call4846, i32 0, i32 4
  %lhs_or_call4848 = load %BSTree** %path4847
  %ifnull_slot4849 = alloca %BSTree*
  store %BSTree* %lhs_or_call4848, %BSTree** %ifnull_slot4849
  %ifnull_guard4850 = icmp ne %BSTree* %lhs_or_call4848, null
  br i1 %ifnull_guard4850, label %__then1573, label %__else1572

__fresh1579:
  br label %__then1573

__then1573:
  %lhs_or_call4851 = load %BSTree** %ifnull_slot4849
  call void @inOrder( %BSTree* %lhs_or_call4851 )
  br label %__merge1571

__fresh1580:
  br label %__else1572

__else1572:
  br label %__merge1571

__merge1571:
  ret void
}


define i32 @max (i32 %x4818, i32 %y4816){
__fresh1562:
  %x_slot4819 = alloca i32
  store i32 %x4818, i32* %x_slot4819
  %y_slot4817 = alloca i32
  store i32 %y4816, i32* %y_slot4817
  %vdecl_slot4820 = alloca i32
  store i32 0, i32* %vdecl_slot4820
  %lhs_or_call4821 = load i32* %x_slot4819
  %lhs_or_call4822 = load i32* %y_slot4817
  %bop4823 = icmp slt i32 %lhs_or_call4821, %lhs_or_call4822
  br i1 %bop4823, label %__then1561, label %__else1560

__fresh1563:
  br label %__then1561

__then1561:
  %lhs_or_call4824 = load i32* %y_slot4817
  store i32 %lhs_or_call4824, i32* %vdecl_slot4820
  br label %__merge1559

__fresh1564:
  br label %__else1560

__else1560:
  %lhs_or_call4825 = load i32* %x_slot4819
  store i32 %lhs_or_call4825, i32* %vdecl_slot4820
  br label %__merge1559

__merge1559:
  %lhs_or_call4826 = load i32* %vdecl_slot4820
  ret i32 %lhs_or_call4826
}


define i32 @_AVLTree_get_height (%AVLTree* %_this1){
__fresh1558:
  %path4814 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %lhs_or_call4815 = load i32* %path4814
  ret i32 %lhs_or_call4815
}


define %AVLTree* @_AVLTree_bstToAvl (%AVLTree* %_this1, %BSTree* %t4791){
__fresh1551:
  %t_slot4792 = alloca %BSTree*
  store %BSTree* %t4791, %BSTree** %t_slot4792
  %cast_op4793 = bitcast i8* null to %AVLTree* 
  %vdecl_slot4794 = alloca %AVLTree*
  store %AVLTree* %cast_op4793, %AVLTree** %vdecl_slot4794
  %lhs_or_call4795 = load %BSTree** %t_slot4792
  %ifnull_slot4796 = alloca %BSTree*
  store %BSTree* %lhs_or_call4795, %BSTree** %ifnull_slot4796
  %ifnull_guard4797 = icmp ne %BSTree* %lhs_or_call4795, null
  br i1 %ifnull_guard4797, label %__then1550, label %__else1549

__fresh1552:
  br label %__then1550

__then1550:
  %lhs_or_call4798 = load %BSTree** %ifnull_slot4796
  %cast_op4799 = bitcast %BSTree* %lhs_or_call4798 to %AVLTree* 
  %cast_op4800 = bitcast %AVLTree* %cast_op4799 to i8** 
  %cast_op4801 = bitcast %_AVLTree_vtable* @_AVLTree_vtable597 to i8* 
  %vt_ptr_slot4802 = alloca i8*
  %tmp04804 = load i8** %cast_op4800
  store i8* %tmp04804, i8** %vt_ptr_slot4802
  br label %__loop1547

__loop1547:
  %tmp14805 = load i8** %vt_ptr_slot4802
  %guard14809 = icmp eq i8* %tmp14805, %cast_op4801
  br i1 %guard14809, label %__then1544, label %__fall11546

__fresh1553:
  br label %__fall11546

__fall11546:
  %guard24810 = icmp eq i8* %tmp14805, null
  br i1 %guard24810, label %__else1543, label %__fall21545

__fresh1554:
  br label %__fall21545

__fall21545:
  %tmp24806 = load i8** %vt_ptr_slot4802
  %tmp34807 = bitcast i8* %tmp24806 to i8** 
  %tmp44808 = load i8** %tmp34807
  store i8* %tmp44808, i8** %vt_ptr_slot4802
  br label %__loop1547

__fresh1555:
  br label %__then1544

__then1544:
  %var_slot4803 = alloca %AVLTree*
  store %AVLTree* %cast_op4799, %AVLTree** %var_slot4803
  %lhs_or_call4811 = load %AVLTree** %var_slot4803
  store %AVLTree* %lhs_or_call4811, %AVLTree** %vdecl_slot4794
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
  %cast_op4812 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4812, %AVLTree** %vdecl_slot4794
  br label %__merge1548

__merge1548:
  %lhs_or_call4813 = load %AVLTree** %vdecl_slot4794
  ret %AVLTree* %lhs_or_call4813
}


define void @_AVLTree_rightRotate (%AVLTree* %_this1){
__fresh1533:
  %path4730 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4731 = load %BSTree** %path4730
  %ifnull_slot4732 = alloca %BSTree*
  store %BSTree* %lhs_or_call4731, %BSTree** %ifnull_slot4732
  %ifnull_guard4733 = icmp ne %BSTree* %lhs_or_call4731, null
  br i1 %ifnull_guard4733, label %__then1532, label %__else1531

__fresh1534:
  br label %__then1532

__then1532:
  %path4734 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4735 = load %Number** %path4734
  %vdecl_slot4736 = alloca %Number*
  store %Number* %lhs_or_call4735, %Number** %vdecl_slot4736
  %path4737 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4738 = load %BSTree** %ifnull_slot4732
  %path4739 = getelementptr %BSTree* %lhs_or_call4738, i32 0, i32 2
  %lhs_or_call4740 = load %Number** %path4739
  store %Number* %lhs_or_call4740, %Number** %path4737
  %lhs_or_call4741 = load %BSTree** %ifnull_slot4732
  %path4742 = getelementptr %BSTree* %lhs_or_call4741, i32 0, i32 2
  %lhs_or_call4743 = load %Number** %vdecl_slot4736
  store %Number* %lhs_or_call4743, %Number** %path4742
  %path4744 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4745 = load %BSTree** %ifnull_slot4732
  %path4746 = getelementptr %BSTree* %lhs_or_call4745, i32 0, i32 3
  %lhs_or_call4747 = load %BSTree** %path4746
  store %BSTree* %lhs_or_call4747, %BSTree** %path4744
  %lhs_or_call4748 = load %BSTree** %ifnull_slot4732
  %path4749 = getelementptr %BSTree* %lhs_or_call4748, i32 0, i32 3
  %lhs_or_call4750 = load %BSTree** %ifnull_slot4732
  %path4751 = getelementptr %BSTree* %lhs_or_call4750, i32 0, i32 4
  %lhs_or_call4752 = load %BSTree** %path4751
  store %BSTree* %lhs_or_call4752, %BSTree** %path4749
  %lhs_or_call4753 = load %BSTree** %ifnull_slot4732
  %path4754 = getelementptr %BSTree* %lhs_or_call4753, i32 0, i32 4
  %path4755 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4756 = load %BSTree** %path4755
  store %BSTree* %lhs_or_call4756, %BSTree** %path4754
  %path4757 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4758 = load %BSTree** %ifnull_slot4732
  store %BSTree* %lhs_or_call4758, %BSTree** %path4757
  %path4759 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4760 = load %BSTree** %path4759
  %ifnull_slot4761 = alloca %BSTree*
  store %BSTree* %lhs_or_call4760, %BSTree** %ifnull_slot4761
  %ifnull_guard4762 = icmp ne %BSTree* %lhs_or_call4760, null
  br i1 %ifnull_guard4762, label %__then1523, label %__else1522

__fresh1535:
  br label %__then1523

__then1523:
  %lhs_or_call4763 = load %BSTree** %ifnull_slot4761
  %path4764 = getelementptr %BSTree* %lhs_or_call4763, i32 0, i32 5
  %cast_op4765 = bitcast %AVLTree* %_this1 to %BSTree* 
  store %BSTree* %cast_op4765, %BSTree** %path4764
  br label %__merge1521

__fresh1536:
  br label %__else1522

__else1522:
  br label %__merge1521

__merge1521:
  %lhs_or_call4766 = load %BSTree** %ifnull_slot4732
  %path4767 = getelementptr %BSTree* %lhs_or_call4766, i32 0, i32 4
  %lhs_or_call4768 = load %BSTree** %path4767
  %ifnull_slot4769 = alloca %BSTree*
  store %BSTree* %lhs_or_call4768, %BSTree** %ifnull_slot4769
  %ifnull_guard4770 = icmp ne %BSTree* %lhs_or_call4768, null
  br i1 %ifnull_guard4770, label %__then1526, label %__else1525

__fresh1537:
  br label %__then1526

__then1526:
  %lhs_or_call4771 = load %BSTree** %ifnull_slot4769
  %path4772 = getelementptr %BSTree* %lhs_or_call4771, i32 0, i32 5
  %lhs_or_call4773 = load %BSTree** %ifnull_slot4732
  store %BSTree* %lhs_or_call4773, %BSTree** %path4772
  br label %__merge1524

__fresh1538:
  br label %__else1525

__else1525:
  br label %__merge1524

__merge1524:
  %vtmp4776 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4775 = load %_AVLTree_vtable** %vtmp4776
  %fptmp4777 = getelementptr %_AVLTree_vtable* %vtable4775, i32 0, i32 10
  %method4778 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4777
  %lhs_or_call4774 = load %BSTree** %ifnull_slot4732
  %ret4779 = call %AVLTree* %method4778 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4774 )
  %ifnull_slot4780 = alloca %AVLTree*
  store %AVLTree* %ret4779, %AVLTree** %ifnull_slot4780
  %ifnull_guard4781 = icmp ne %AVLTree* %ret4779, null
  br i1 %ifnull_guard4781, label %__then1529, label %__else1528

__fresh1539:
  br label %__then1529

__then1529:
  %lhs_or_call4782 = load %AVLTree** %ifnull_slot4780
  %vtmp4784 = getelementptr %AVLTree* %lhs_or_call4782, i32 0, i32 0
  %vtable4783 = load %_AVLTree_vtable** %vtmp4784
  %fptmp4785 = getelementptr %_AVLTree_vtable* %vtable4783, i32 0, i32 6
  %method4786 = load void (%AVLTree*)** %fptmp4785
  call void %method4786( %AVLTree* %lhs_or_call4782 )
  br label %__merge1527

__fresh1540:
  br label %__else1528

__else1528:
  call void @print_string( i8* @_const_str625 )
  call void @oat_abort( i32 -1 )
  br label %__merge1527

__merge1527:
  %vtmp4788 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4787 = load %_AVLTree_vtable** %vtmp4788
  %fptmp4789 = getelementptr %_AVLTree_vtable* %vtable4787, i32 0, i32 6
  %method4790 = load void (%AVLTree*)** %fptmp4789
  call void %method4790( %AVLTree* %_this1 )
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
  %path4669 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4670 = load %BSTree** %path4669
  %ifnull_slot4671 = alloca %BSTree*
  store %BSTree* %lhs_or_call4670, %BSTree** %ifnull_slot4671
  %ifnull_guard4672 = icmp ne %BSTree* %lhs_or_call4670, null
  br i1 %ifnull_guard4672, label %__then1511, label %__else1510

__fresh1513:
  br label %__then1511

__then1511:
  %path4673 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4674 = load %Number** %path4673
  %vdecl_slot4675 = alloca %Number*
  store %Number* %lhs_or_call4674, %Number** %vdecl_slot4675
  %path4676 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4677 = load %BSTree** %ifnull_slot4671
  %path4678 = getelementptr %BSTree* %lhs_or_call4677, i32 0, i32 2
  %lhs_or_call4679 = load %Number** %path4678
  store %Number* %lhs_or_call4679, %Number** %path4676
  %lhs_or_call4680 = load %BSTree** %ifnull_slot4671
  %path4681 = getelementptr %BSTree* %lhs_or_call4680, i32 0, i32 2
  %lhs_or_call4682 = load %Number** %vdecl_slot4675
  store %Number* %lhs_or_call4682, %Number** %path4681
  %path4683 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4684 = load %BSTree** %ifnull_slot4671
  %path4685 = getelementptr %BSTree* %lhs_or_call4684, i32 0, i32 4
  %lhs_or_call4686 = load %BSTree** %path4685
  store %BSTree* %lhs_or_call4686, %BSTree** %path4683
  %lhs_or_call4687 = load %BSTree** %ifnull_slot4671
  %path4688 = getelementptr %BSTree* %lhs_or_call4687, i32 0, i32 4
  %lhs_or_call4689 = load %BSTree** %ifnull_slot4671
  %path4690 = getelementptr %BSTree* %lhs_or_call4689, i32 0, i32 3
  %lhs_or_call4691 = load %BSTree** %path4690
  store %BSTree* %lhs_or_call4691, %BSTree** %path4688
  %lhs_or_call4692 = load %BSTree** %ifnull_slot4671
  %path4693 = getelementptr %BSTree* %lhs_or_call4692, i32 0, i32 3
  %path4694 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4695 = load %BSTree** %path4694
  store %BSTree* %lhs_or_call4695, %BSTree** %path4693
  %path4696 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4697 = load %BSTree** %ifnull_slot4671
  store %BSTree* %lhs_or_call4697, %BSTree** %path4696
  %path4698 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4699 = load %BSTree** %path4698
  %ifnull_slot4700 = alloca %BSTree*
  store %BSTree* %lhs_or_call4699, %BSTree** %ifnull_slot4700
  %ifnull_guard4701 = icmp ne %BSTree* %lhs_or_call4699, null
  br i1 %ifnull_guard4701, label %__then1502, label %__else1501

__fresh1514:
  br label %__then1502

__then1502:
  %lhs_or_call4702 = load %BSTree** %ifnull_slot4700
  %path4703 = getelementptr %BSTree* %lhs_or_call4702, i32 0, i32 5
  %cast_op4704 = bitcast %AVLTree* %_this1 to %BSTree* 
  store %BSTree* %cast_op4704, %BSTree** %path4703
  br label %__merge1500

__fresh1515:
  br label %__else1501

__else1501:
  br label %__merge1500

__merge1500:
  %lhs_or_call4705 = load %BSTree** %ifnull_slot4671
  %path4706 = getelementptr %BSTree* %lhs_or_call4705, i32 0, i32 3
  %lhs_or_call4707 = load %BSTree** %path4706
  %ifnull_slot4708 = alloca %BSTree*
  store %BSTree* %lhs_or_call4707, %BSTree** %ifnull_slot4708
  %ifnull_guard4709 = icmp ne %BSTree* %lhs_or_call4707, null
  br i1 %ifnull_guard4709, label %__then1505, label %__else1504

__fresh1516:
  br label %__then1505

__then1505:
  %lhs_or_call4710 = load %BSTree** %ifnull_slot4708
  %path4711 = getelementptr %BSTree* %lhs_or_call4710, i32 0, i32 5
  %lhs_or_call4712 = load %BSTree** %ifnull_slot4671
  store %BSTree* %lhs_or_call4712, %BSTree** %path4711
  br label %__merge1503

__fresh1517:
  br label %__else1504

__else1504:
  br label %__merge1503

__merge1503:
  %vtmp4715 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4714 = load %_AVLTree_vtable** %vtmp4715
  %fptmp4716 = getelementptr %_AVLTree_vtable* %vtable4714, i32 0, i32 10
  %method4717 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4716
  %lhs_or_call4713 = load %BSTree** %ifnull_slot4671
  %ret4718 = call %AVLTree* %method4717 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4713 )
  %ifnull_slot4719 = alloca %AVLTree*
  store %AVLTree* %ret4718, %AVLTree** %ifnull_slot4719
  %ifnull_guard4720 = icmp ne %AVLTree* %ret4718, null
  br i1 %ifnull_guard4720, label %__then1508, label %__else1507

__fresh1518:
  br label %__then1508

__then1508:
  %lhs_or_call4721 = load %AVLTree** %ifnull_slot4719
  %vtmp4723 = getelementptr %AVLTree* %lhs_or_call4721, i32 0, i32 0
  %vtable4722 = load %_AVLTree_vtable** %vtmp4723
  %fptmp4724 = getelementptr %_AVLTree_vtable* %vtable4722, i32 0, i32 6
  %method4725 = load void (%AVLTree*)** %fptmp4724
  call void %method4725( %AVLTree* %lhs_or_call4721 )
  br label %__merge1506

__fresh1519:
  br label %__else1507

__else1507:
  call void @print_string( i8* @_const_str623 )
  call void @oat_abort( i32 -1 )
  br label %__merge1506

__merge1506:
  %vtmp4727 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4726 = load %_AVLTree_vtable** %vtmp4727
  %fptmp4728 = getelementptr %_AVLTree_vtable* %vtable4726, i32 0, i32 6
  %method4729 = load void (%AVLTree*)** %fptmp4728
  call void %method4729( %AVLTree* %_this1 )
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
  %vdecl_slot4531 = alloca i32
  store i32 0, i32* %vdecl_slot4531
  %vdecl_slot4532 = alloca i32
  store i32 0, i32* %vdecl_slot4532
  %vtmp4536 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4535 = load %_AVLTree_vtable** %vtmp4536
  %fptmp4537 = getelementptr %_AVLTree_vtable* %vtable4535, i32 0, i32 10
  %method4538 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4537
  %path4533 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4534 = load %BSTree** %path4533
  %ret4539 = call %AVLTree* %method4538 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4534 )
  %ifnull_slot4540 = alloca %AVLTree*
  store %AVLTree* %ret4539, %AVLTree** %ifnull_slot4540
  %ifnull_guard4541 = icmp ne %AVLTree* %ret4539, null
  br i1 %ifnull_guard4541, label %__then1441, label %__else1440

__fresh1476:
  br label %__then1441

__then1441:
  %lhs_or_call4542 = load %AVLTree** %ifnull_slot4540
  %path4543 = getelementptr %AVLTree* %lhs_or_call4542, i32 0, i32 6
  %lhs_or_call4544 = load i32* %path4543
  store i32 %lhs_or_call4544, i32* %vdecl_slot4531
  br label %__merge1439

__fresh1477:
  br label %__else1440

__else1440:
  %unop4545 = sub i32 0, 1
  store i32 %unop4545, i32* %vdecl_slot4531
  br label %__merge1439

__merge1439:
  %vtmp4549 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4548 = load %_AVLTree_vtable** %vtmp4549
  %fptmp4550 = getelementptr %_AVLTree_vtable* %vtable4548, i32 0, i32 10
  %method4551 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4550
  %path4546 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4547 = load %BSTree** %path4546
  %ret4552 = call %AVLTree* %method4551 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4547 )
  %ifnull_slot4553 = alloca %AVLTree*
  store %AVLTree* %ret4552, %AVLTree** %ifnull_slot4553
  %ifnull_guard4554 = icmp ne %AVLTree* %ret4552, null
  br i1 %ifnull_guard4554, label %__then1444, label %__else1443

__fresh1478:
  br label %__then1444

__then1444:
  %lhs_or_call4555 = load %AVLTree** %ifnull_slot4553
  %path4556 = getelementptr %AVLTree* %lhs_or_call4555, i32 0, i32 6
  %lhs_or_call4557 = load i32* %path4556
  store i32 %lhs_or_call4557, i32* %vdecl_slot4532
  br label %__merge1442

__fresh1479:
  br label %__else1443

__else1443:
  %unop4558 = sub i32 0, 1
  store i32 %unop4558, i32* %vdecl_slot4532
  br label %__merge1442

__merge1442:
  %lhs_or_call4559 = load i32* %vdecl_slot4531
  %lhs_or_call4560 = load i32* %vdecl_slot4532
  %bop4561 = sub i32 %lhs_or_call4559, %lhs_or_call4560
  %ret4562 = call i32 @abs ( i32 %bop4561 )
  %bop4563 = icmp sgt i32 %ret4562, 1
  br i1 %bop4563, label %__then1474, label %__else1473

__fresh1480:
  br label %__then1474

__then1474:
  %lhs_or_call4564 = load i32* %vdecl_slot4531
  %lhs_or_call4565 = load i32* %vdecl_slot4532
  %bop4566 = icmp sgt i32 %lhs_or_call4564, %lhs_or_call4565
  br i1 %bop4566, label %__then1471, label %__else1470

__fresh1481:
  br label %__then1471

__then1471:
  %vtmp4570 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4569 = load %_AVLTree_vtable** %vtmp4570
  %fptmp4571 = getelementptr %_AVLTree_vtable* %vtable4569, i32 0, i32 10
  %method4572 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4571
  %path4567 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4568 = load %BSTree** %path4567
  %ret4573 = call %AVLTree* %method4572 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4568 )
  %ifnull_slot4574 = alloca %AVLTree*
  store %AVLTree* %ret4573, %AVLTree** %ifnull_slot4574
  %ifnull_guard4575 = icmp ne %AVLTree* %ret4573, null
  br i1 %ifnull_guard4575, label %__then1456, label %__else1455

__fresh1482:
  br label %__then1456

__then1456:
  %vdecl_slot4576 = alloca i32
  store i32 0, i32* %vdecl_slot4576
  %vdecl_slot4577 = alloca i32
  store i32 0, i32* %vdecl_slot4577
  %vtmp4582 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4581 = load %_AVLTree_vtable** %vtmp4582
  %fptmp4583 = getelementptr %_AVLTree_vtable* %vtable4581, i32 0, i32 10
  %method4584 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4583
  %lhs_or_call4578 = load %AVLTree** %ifnull_slot4574
  %path4579 = getelementptr %AVLTree* %lhs_or_call4578, i32 0, i32 3
  %lhs_or_call4580 = load %BSTree** %path4579
  %ret4585 = call %AVLTree* %method4584 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4580 )
  %ifnull_slot4586 = alloca %AVLTree*
  store %AVLTree* %ret4585, %AVLTree** %ifnull_slot4586
  %ifnull_guard4587 = icmp ne %AVLTree* %ret4585, null
  br i1 %ifnull_guard4587, label %__then1447, label %__else1446

__fresh1483:
  br label %__then1447

__then1447:
  %lhs_or_call4588 = load %AVLTree** %ifnull_slot4586
  %path4589 = getelementptr %AVLTree* %lhs_or_call4588, i32 0, i32 6
  %lhs_or_call4590 = load i32* %path4589
  store i32 %lhs_or_call4590, i32* %vdecl_slot4576
  br label %__merge1445

__fresh1484:
  br label %__else1446

__else1446:
  %unop4591 = sub i32 0, 1
  store i32 %unop4591, i32* %vdecl_slot4576
  br label %__merge1445

__merge1445:
  %vtmp4596 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4595 = load %_AVLTree_vtable** %vtmp4596
  %fptmp4597 = getelementptr %_AVLTree_vtable* %vtable4595, i32 0, i32 10
  %method4598 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4597
  %lhs_or_call4592 = load %AVLTree** %ifnull_slot4574
  %path4593 = getelementptr %AVLTree* %lhs_or_call4592, i32 0, i32 4
  %lhs_or_call4594 = load %BSTree** %path4593
  %ret4599 = call %AVLTree* %method4598 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4594 )
  %ifnull_slot4600 = alloca %AVLTree*
  store %AVLTree* %ret4599, %AVLTree** %ifnull_slot4600
  %ifnull_guard4601 = icmp ne %AVLTree* %ret4599, null
  br i1 %ifnull_guard4601, label %__then1450, label %__else1449

__fresh1485:
  br label %__then1450

__then1450:
  %lhs_or_call4602 = load %AVLTree** %ifnull_slot4600
  %path4603 = getelementptr %AVLTree* %lhs_or_call4602, i32 0, i32 6
  %lhs_or_call4604 = load i32* %path4603
  store i32 %lhs_or_call4604, i32* %vdecl_slot4577
  br label %__merge1448

__fresh1486:
  br label %__else1449

__else1449:
  %unop4605 = sub i32 0, 1
  store i32 %unop4605, i32* %vdecl_slot4577
  br label %__merge1448

__merge1448:
  %lhs_or_call4606 = load i32* %vdecl_slot4576
  %lhs_or_call4607 = load i32* %vdecl_slot4577
  %bop4608 = icmp slt i32 %lhs_or_call4606, %lhs_or_call4607
  br i1 %bop4608, label %__then1453, label %__else1452

__fresh1487:
  br label %__then1453

__then1453:
  %lhs_or_call4609 = load %AVLTree** %ifnull_slot4574
  %vtmp4611 = getelementptr %AVLTree* %lhs_or_call4609, i32 0, i32 0
  %vtable4610 = load %_AVLTree_vtable** %vtmp4611
  %fptmp4612 = getelementptr %_AVLTree_vtable* %vtable4610, i32 0, i32 8
  %method4613 = load void (%AVLTree*)** %fptmp4612
  call void %method4613( %AVLTree* %lhs_or_call4609 )
  br label %__merge1451

__fresh1488:
  br label %__else1452

__else1452:
  br label %__merge1451

__merge1451:
  %vtmp4615 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4614 = load %_AVLTree_vtable** %vtmp4615
  %fptmp4616 = getelementptr %_AVLTree_vtable* %vtable4614, i32 0, i32 9
  %method4617 = load void (%AVLTree*)** %fptmp4616
  call void %method4617( %AVLTree* %_this1 )
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
  %vtmp4621 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4620 = load %_AVLTree_vtable** %vtmp4621
  %fptmp4622 = getelementptr %_AVLTree_vtable* %vtable4620, i32 0, i32 10
  %method4623 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4622
  %path4618 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4619 = load %BSTree** %path4618
  %ret4624 = call %AVLTree* %method4623 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4619 )
  %ifnull_slot4625 = alloca %AVLTree*
  store %AVLTree* %ret4624, %AVLTree** %ifnull_slot4625
  %ifnull_guard4626 = icmp ne %AVLTree* %ret4624, null
  br i1 %ifnull_guard4626, label %__then1468, label %__else1467

__fresh1491:
  br label %__then1468

__then1468:
  %vdecl_slot4627 = alloca i32
  store i32 0, i32* %vdecl_slot4627
  %vdecl_slot4628 = alloca i32
  store i32 0, i32* %vdecl_slot4628
  %vtmp4633 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4632 = load %_AVLTree_vtable** %vtmp4633
  %fptmp4634 = getelementptr %_AVLTree_vtable* %vtable4632, i32 0, i32 10
  %method4635 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4634
  %lhs_or_call4629 = load %AVLTree** %ifnull_slot4625
  %path4630 = getelementptr %AVLTree* %lhs_or_call4629, i32 0, i32 3
  %lhs_or_call4631 = load %BSTree** %path4630
  %ret4636 = call %AVLTree* %method4635 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4631 )
  %ifnull_slot4637 = alloca %AVLTree*
  store %AVLTree* %ret4636, %AVLTree** %ifnull_slot4637
  %ifnull_guard4638 = icmp ne %AVLTree* %ret4636, null
  br i1 %ifnull_guard4638, label %__then1459, label %__else1458

__fresh1492:
  br label %__then1459

__then1459:
  %lhs_or_call4639 = load %AVLTree** %ifnull_slot4637
  %path4640 = getelementptr %AVLTree* %lhs_or_call4639, i32 0, i32 6
  %lhs_or_call4641 = load i32* %path4640
  store i32 %lhs_or_call4641, i32* %vdecl_slot4627
  br label %__merge1457

__fresh1493:
  br label %__else1458

__else1458:
  %unop4642 = sub i32 0, 1
  store i32 %unop4642, i32* %vdecl_slot4627
  br label %__merge1457

__merge1457:
  %vtmp4647 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4646 = load %_AVLTree_vtable** %vtmp4647
  %fptmp4648 = getelementptr %_AVLTree_vtable* %vtable4646, i32 0, i32 10
  %method4649 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4648
  %lhs_or_call4643 = load %AVLTree** %ifnull_slot4625
  %path4644 = getelementptr %AVLTree* %lhs_or_call4643, i32 0, i32 4
  %lhs_or_call4645 = load %BSTree** %path4644
  %ret4650 = call %AVLTree* %method4649 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4645 )
  %ifnull_slot4651 = alloca %AVLTree*
  store %AVLTree* %ret4650, %AVLTree** %ifnull_slot4651
  %ifnull_guard4652 = icmp ne %AVLTree* %ret4650, null
  br i1 %ifnull_guard4652, label %__then1462, label %__else1461

__fresh1494:
  br label %__then1462

__then1462:
  %lhs_or_call4653 = load %AVLTree** %ifnull_slot4651
  %path4654 = getelementptr %AVLTree* %lhs_or_call4653, i32 0, i32 6
  %lhs_or_call4655 = load i32* %path4654
  store i32 %lhs_or_call4655, i32* %vdecl_slot4628
  br label %__merge1460

__fresh1495:
  br label %__else1461

__else1461:
  %unop4656 = sub i32 0, 1
  store i32 %unop4656, i32* %vdecl_slot4628
  br label %__merge1460

__merge1460:
  %lhs_or_call4657 = load i32* %vdecl_slot4628
  %lhs_or_call4658 = load i32* %vdecl_slot4627
  %bop4659 = icmp slt i32 %lhs_or_call4657, %lhs_or_call4658
  br i1 %bop4659, label %__then1465, label %__else1464

__fresh1496:
  br label %__then1465

__then1465:
  %lhs_or_call4660 = load %AVLTree** %ifnull_slot4625
  %vtmp4662 = getelementptr %AVLTree* %lhs_or_call4660, i32 0, i32 0
  %vtable4661 = load %_AVLTree_vtable** %vtmp4662
  %fptmp4663 = getelementptr %_AVLTree_vtable* %vtable4661, i32 0, i32 9
  %method4664 = load void (%AVLTree*)** %fptmp4663
  call void %method4664( %AVLTree* %lhs_or_call4660 )
  br label %__merge1463

__fresh1497:
  br label %__else1464

__else1464:
  br label %__merge1463

__merge1463:
  %vtmp4666 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4665 = load %_AVLTree_vtable** %vtmp4666
  %fptmp4667 = getelementptr %_AVLTree_vtable* %vtable4665, i32 0, i32 8
  %method4668 = load void (%AVLTree*)** %fptmp4667
  call void %method4668( %AVLTree* %_this1 )
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
  %vdecl_slot4498 = alloca i32
  store i32 0, i32* %vdecl_slot4498
  %vdecl_slot4499 = alloca i32
  store i32 0, i32* %vdecl_slot4499
  %vtmp4503 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4502 = load %_AVLTree_vtable** %vtmp4503
  %fptmp4504 = getelementptr %_AVLTree_vtable* %vtable4502, i32 0, i32 10
  %method4505 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4504
  %path4500 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4501 = load %BSTree** %path4500
  %ret4506 = call %AVLTree* %method4505 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4501 )
  %ifnull_slot4507 = alloca %AVLTree*
  store %AVLTree* %ret4506, %AVLTree** %ifnull_slot4507
  %ifnull_guard4508 = icmp ne %AVLTree* %ret4506, null
  br i1 %ifnull_guard4508, label %__then1430, label %__else1429

__fresh1435:
  br label %__then1430

__then1430:
  %lhs_or_call4509 = load %AVLTree** %ifnull_slot4507
  %path4510 = getelementptr %AVLTree* %lhs_or_call4509, i32 0, i32 6
  %lhs_or_call4511 = load i32* %path4510
  store i32 %lhs_or_call4511, i32* %vdecl_slot4498
  br label %__merge1428

__fresh1436:
  br label %__else1429

__else1429:
  %unop4512 = sub i32 0, 1
  store i32 %unop4512, i32* %vdecl_slot4498
  br label %__merge1428

__merge1428:
  %vtmp4516 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4515 = load %_AVLTree_vtable** %vtmp4516
  %fptmp4517 = getelementptr %_AVLTree_vtable* %vtable4515, i32 0, i32 10
  %method4518 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4517
  %path4513 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4514 = load %BSTree** %path4513
  %ret4519 = call %AVLTree* %method4518 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4514 )
  %ifnull_slot4520 = alloca %AVLTree*
  store %AVLTree* %ret4519, %AVLTree** %ifnull_slot4520
  %ifnull_guard4521 = icmp ne %AVLTree* %ret4519, null
  br i1 %ifnull_guard4521, label %__then1433, label %__else1432

__fresh1437:
  br label %__then1433

__then1433:
  %lhs_or_call4522 = load %AVLTree** %ifnull_slot4520
  %path4523 = getelementptr %AVLTree* %lhs_or_call4522, i32 0, i32 6
  %lhs_or_call4524 = load i32* %path4523
  store i32 %lhs_or_call4524, i32* %vdecl_slot4499
  br label %__merge1431

__fresh1438:
  br label %__else1432

__else1432:
  %unop4525 = sub i32 0, 1
  store i32 %unop4525, i32* %vdecl_slot4499
  br label %__merge1431

__merge1431:
  %path4526 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %lhs_or_call4527 = load i32* %vdecl_slot4499
  %lhs_or_call4528 = load i32* %vdecl_slot4498
  %ret4529 = call i32 @max ( i32 %lhs_or_call4528, i32 %lhs_or_call4527 )
  %bop4530 = add i32 %ret4529, 1
  store i32 %bop4530, i32* %path4526
  ret void
}


define void @_AVLTree_remove_node (%AVLTree* %_this1, %BSTree* %c4228){
__fresh1387:
  %c_slot4229 = alloca %BSTree*
  store %BSTree* %c4228, %BSTree** %c_slot4229
  %lhs_or_call4230 = load %BSTree** %c_slot4229
  %path4231 = getelementptr %BSTree* %lhs_or_call4230, i32 0, i32 3
  %lhs_or_call4232 = load %BSTree** %path4231
  %cast_op4233 = bitcast i8* null to %Object* 
  %cast_op4234 = bitcast %BSTree* %lhs_or_call4232 to %Object* 
  %ret4235 = call i1 @equals ( %Object* %cast_op4234, %Object* %cast_op4233 )
  %lhs_or_call4236 = load %BSTree** %c_slot4229
  %path4237 = getelementptr %BSTree* %lhs_or_call4236, i32 0, i32 4
  %lhs_or_call4238 = load %BSTree** %path4237
  %cast_op4239 = bitcast i8* null to %Object* 
  %cast_op4240 = bitcast %BSTree* %lhs_or_call4238 to %Object* 
  %ret4241 = call i1 @equals ( %Object* %cast_op4240, %Object* %cast_op4239 )
  %bop4242 = and i1 %ret4235, %ret4241
  br i1 %bop4242, label %__then1386, label %__else1385

__fresh1388:
  br label %__then1386

__then1386:
  %vtmp4247 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4246 = load %_AVLTree_vtable** %vtmp4247
  %fptmp4248 = getelementptr %_AVLTree_vtable* %vtable4246, i32 0, i32 10
  %method4249 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4248
  %lhs_or_call4243 = load %BSTree** %c_slot4229
  %path4244 = getelementptr %BSTree* %lhs_or_call4243, i32 0, i32 5
  %lhs_or_call4245 = load %BSTree** %path4244
  %ret4250 = call %AVLTree* %method4249 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4245 )
  %ifnull_slot4251 = alloca %AVLTree*
  store %AVLTree* %ret4250, %AVLTree** %ifnull_slot4251
  %ifnull_guard4252 = icmp ne %AVLTree* %ret4250, null
  br i1 %ifnull_guard4252, label %__then1338, label %__else1337

__fresh1389:
  br label %__then1338

__then1338:
  %lhs_or_call4253 = load %BSTree** %c_slot4229
  %lhs_or_call4254 = load %AVLTree** %ifnull_slot4251
  %path4255 = getelementptr %AVLTree* %lhs_or_call4254, i32 0, i32 3
  %lhs_or_call4256 = load %BSTree** %path4255
  %cast_op4257 = bitcast %BSTree* %lhs_or_call4253 to %Object* 
  %cast_op4258 = bitcast %BSTree* %lhs_or_call4256 to %Object* 
  %ret4259 = call i1 @equals ( %Object* %cast_op4258, %Object* %cast_op4257 )
  br i1 %ret4259, label %__then1329, label %__else1328

__fresh1390:
  br label %__then1329

__then1329:
  %lhs_or_call4260 = load %AVLTree** %ifnull_slot4251
  %path4261 = getelementptr %AVLTree* %lhs_or_call4260, i32 0, i32 3
  %cast_op4262 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op4262, %BSTree** %path4261
  br label %__merge1327

__fresh1391:
  br label %__else1328

__else1328:
  %lhs_or_call4263 = load %AVLTree** %ifnull_slot4251
  %path4264 = getelementptr %AVLTree* %lhs_or_call4263, i32 0, i32 4
  %cast_op4265 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op4265, %BSTree** %path4264
  br label %__merge1327

__merge1327:
  %lhs_or_call4266 = load %AVLTree** %ifnull_slot4251
  %vdecl_slot4267 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4266, %AVLTree** %vdecl_slot4267
  br label %__cond1332

__cond1332:
  %lhs_or_call4268 = load %AVLTree** %vdecl_slot4267
  %cast_op4269 = bitcast i8* null to %Object* 
  %cast_op4270 = bitcast %AVLTree* %lhs_or_call4268 to %Object* 
  %ret4271 = call i1 @equals ( %Object* %cast_op4270, %Object* %cast_op4269 )
  %unop4272 = icmp eq i1 %ret4271, 0
  br i1 %unop4272, label %__body1331, label %__post1330

__fresh1392:
  br label %__body1331

__body1331:
  %lhs_or_call4273 = load %AVLTree** %vdecl_slot4267
  %ifnull_slot4274 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4273, %AVLTree** %ifnull_slot4274
  %ifnull_guard4275 = icmp ne %AVLTree* %lhs_or_call4273, null
  br i1 %ifnull_guard4275, label %__then1335, label %__else1334

__fresh1393:
  br label %__then1335

__then1335:
  %lhs_or_call4276 = load %AVLTree** %ifnull_slot4274
  %vtmp4278 = getelementptr %AVLTree* %lhs_or_call4276, i32 0, i32 0
  %vtable4277 = load %_AVLTree_vtable** %vtmp4278
  %fptmp4279 = getelementptr %_AVLTree_vtable* %vtable4277, i32 0, i32 6
  %method4280 = load void (%AVLTree*)** %fptmp4279
  call void %method4280( %AVLTree* %lhs_or_call4276 )
  %lhs_or_call4281 = load %AVLTree** %ifnull_slot4274
  %vtmp4283 = getelementptr %AVLTree* %lhs_or_call4281, i32 0, i32 0
  %vtable4282 = load %_AVLTree_vtable** %vtmp4283
  %fptmp4284 = getelementptr %_AVLTree_vtable* %vtable4282, i32 0, i32 7
  %method4285 = load void (%AVLTree*)** %fptmp4284
  call void %method4285( %AVLTree* %lhs_or_call4281 )
  %vtmp4290 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4289 = load %_AVLTree_vtable** %vtmp4290
  %fptmp4291 = getelementptr %_AVLTree_vtable* %vtable4289, i32 0, i32 10
  %method4292 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4291
  %lhs_or_call4286 = load %AVLTree** %ifnull_slot4274
  %path4287 = getelementptr %AVLTree* %lhs_or_call4286, i32 0, i32 5
  %lhs_or_call4288 = load %BSTree** %path4287
  %ret4293 = call %AVLTree* %method4292 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4288 )
  store %AVLTree* %ret4293, %AVLTree** %vdecl_slot4267
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
  %path4294 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %cast_op4295 = bitcast i8* null to %Number* 
  store %Number* %cast_op4295, %Number** %path4294
  %path4296 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %unop4297 = sub i32 0, 1
  store i32 %unop4297, i32* %path4296
  br label %__merge1336

__merge1336:
  br label %__merge1384

__fresh1397:
  br label %__else1385

__else1385:
  %lhs_or_call4298 = load %BSTree** %c_slot4229
  %path4299 = getelementptr %BSTree* %lhs_or_call4298, i32 0, i32 3
  %lhs_or_call4300 = load %BSTree** %path4299
  %cast_op4301 = bitcast i8* null to %Object* 
  %cast_op4302 = bitcast %BSTree* %lhs_or_call4300 to %Object* 
  %ret4303 = call i1 @equals ( %Object* %cast_op4302, %Object* %cast_op4301 )
  br i1 %ret4303, label %__then1383, label %__else1382

__fresh1398:
  br label %__then1383

__then1383:
  %vtmp4308 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4307 = load %_AVLTree_vtable** %vtmp4308
  %fptmp4309 = getelementptr %_AVLTree_vtable* %vtable4307, i32 0, i32 10
  %method4310 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4309
  %lhs_or_call4304 = load %BSTree** %c_slot4229
  %path4305 = getelementptr %BSTree* %lhs_or_call4304, i32 0, i32 5
  %lhs_or_call4306 = load %BSTree** %path4305
  %ret4311 = call %AVLTree* %method4310 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4306 )
  %ifnull_slot4312 = alloca %AVLTree*
  store %AVLTree* %ret4311, %AVLTree** %ifnull_slot4312
  %ifnull_guard4313 = icmp ne %AVLTree* %ret4311, null
  br i1 %ifnull_guard4313, label %__then1353, label %__else1352

__fresh1399:
  br label %__then1353

__then1353:
  %lhs_or_call4314 = load %BSTree** %c_slot4229
  %lhs_or_call4315 = load %AVLTree** %ifnull_slot4312
  %path4316 = getelementptr %AVLTree* %lhs_or_call4315, i32 0, i32 3
  %lhs_or_call4317 = load %BSTree** %path4316
  %cast_op4318 = bitcast %BSTree* %lhs_or_call4314 to %Object* 
  %cast_op4319 = bitcast %BSTree* %lhs_or_call4317 to %Object* 
  %ret4320 = call i1 @equals ( %Object* %cast_op4319, %Object* %cast_op4318 )
  br i1 %ret4320, label %__then1341, label %__else1340

__fresh1400:
  br label %__then1341

__then1341:
  %lhs_or_call4321 = load %AVLTree** %ifnull_slot4312
  %path4322 = getelementptr %AVLTree* %lhs_or_call4321, i32 0, i32 3
  %lhs_or_call4323 = load %BSTree** %c_slot4229
  %path4324 = getelementptr %BSTree* %lhs_or_call4323, i32 0, i32 4
  %lhs_or_call4325 = load %BSTree** %path4324
  store %BSTree* %lhs_or_call4325, %BSTree** %path4322
  br label %__merge1339

__fresh1401:
  br label %__else1340

__else1340:
  %lhs_or_call4326 = load %AVLTree** %ifnull_slot4312
  %path4327 = getelementptr %AVLTree* %lhs_or_call4326, i32 0, i32 4
  %lhs_or_call4328 = load %BSTree** %c_slot4229
  %path4329 = getelementptr %BSTree* %lhs_or_call4328, i32 0, i32 4
  %lhs_or_call4330 = load %BSTree** %path4329
  store %BSTree* %lhs_or_call4330, %BSTree** %path4327
  br label %__merge1339

__merge1339:
  %lhs_or_call4331 = load %AVLTree** %ifnull_slot4312
  %vdecl_slot4332 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4331, %AVLTree** %vdecl_slot4332
  br label %__cond1344

__cond1344:
  %lhs_or_call4333 = load %AVLTree** %vdecl_slot4332
  %cast_op4334 = bitcast i8* null to %Object* 
  %cast_op4335 = bitcast %AVLTree* %lhs_or_call4333 to %Object* 
  %ret4336 = call i1 @equals ( %Object* %cast_op4335, %Object* %cast_op4334 )
  %unop4337 = icmp eq i1 %ret4336, 0
  br i1 %unop4337, label %__body1343, label %__post1342

__fresh1402:
  br label %__body1343

__body1343:
  %lhs_or_call4338 = load %AVLTree** %vdecl_slot4332
  %ifnull_slot4339 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4338, %AVLTree** %ifnull_slot4339
  %ifnull_guard4340 = icmp ne %AVLTree* %lhs_or_call4338, null
  br i1 %ifnull_guard4340, label %__then1347, label %__else1346

__fresh1403:
  br label %__then1347

__then1347:
  %lhs_or_call4341 = load %AVLTree** %ifnull_slot4339
  %vtmp4343 = getelementptr %AVLTree* %lhs_or_call4341, i32 0, i32 0
  %vtable4342 = load %_AVLTree_vtable** %vtmp4343
  %fptmp4344 = getelementptr %_AVLTree_vtable* %vtable4342, i32 0, i32 6
  %method4345 = load void (%AVLTree*)** %fptmp4344
  call void %method4345( %AVLTree* %lhs_or_call4341 )
  %lhs_or_call4346 = load %AVLTree** %ifnull_slot4339
  %vtmp4348 = getelementptr %AVLTree* %lhs_or_call4346, i32 0, i32 0
  %vtable4347 = load %_AVLTree_vtable** %vtmp4348
  %fptmp4349 = getelementptr %_AVLTree_vtable* %vtable4347, i32 0, i32 7
  %method4350 = load void (%AVLTree*)** %fptmp4349
  call void %method4350( %AVLTree* %lhs_or_call4346 )
  %vtmp4355 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4354 = load %_AVLTree_vtable** %vtmp4355
  %fptmp4356 = getelementptr %_AVLTree_vtable* %vtable4354, i32 0, i32 10
  %method4357 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4356
  %lhs_or_call4351 = load %AVLTree** %ifnull_slot4339
  %path4352 = getelementptr %AVLTree* %lhs_or_call4351, i32 0, i32 5
  %lhs_or_call4353 = load %BSTree** %path4352
  %ret4358 = call %AVLTree* %method4357 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4353 )
  store %AVLTree* %ret4358, %AVLTree** %vdecl_slot4332
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
  %lhs_or_call4359 = load %BSTree** %c_slot4229
  %path4360 = getelementptr %BSTree* %lhs_or_call4359, i32 0, i32 4
  %lhs_or_call4361 = load %BSTree** %path4360
  %ifnull_slot4362 = alloca %BSTree*
  store %BSTree* %lhs_or_call4361, %BSTree** %ifnull_slot4362
  %ifnull_guard4363 = icmp ne %BSTree* %lhs_or_call4361, null
  br i1 %ifnull_guard4363, label %__then1350, label %__else1349

__fresh1407:
  br label %__then1350

__then1350:
  %path4364 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4365 = load %BSTree** %ifnull_slot4362
  %path4366 = getelementptr %BSTree* %lhs_or_call4365, i32 0, i32 2
  %lhs_or_call4367 = load %Number** %path4366
  store %Number* %lhs_or_call4367, %Number** %path4364
  %path4368 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4369 = load %BSTree** %ifnull_slot4362
  %path4370 = getelementptr %BSTree* %lhs_or_call4369, i32 0, i32 3
  %lhs_or_call4371 = load %BSTree** %path4370
  store %BSTree* %lhs_or_call4371, %BSTree** %path4368
  %path4372 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4373 = load %BSTree** %ifnull_slot4362
  %path4374 = getelementptr %BSTree* %lhs_or_call4373, i32 0, i32 4
  %lhs_or_call4375 = load %BSTree** %path4374
  store %BSTree* %lhs_or_call4375, %BSTree** %path4372
  %vtmp4377 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4376 = load %_AVLTree_vtable** %vtmp4377
  %fptmp4378 = getelementptr %_AVLTree_vtable* %vtable4376, i32 0, i32 6
  %method4379 = load void (%AVLTree*)** %fptmp4378
  call void %method4379( %AVLTree* %_this1 )
  %vtmp4381 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4380 = load %_AVLTree_vtable** %vtmp4381
  %fptmp4382 = getelementptr %_AVLTree_vtable* %vtable4380, i32 0, i32 7
  %method4383 = load void (%AVLTree*)** %fptmp4382
  call void %method4383( %AVLTree* %_this1 )
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
  %lhs_or_call4384 = load %BSTree** %c_slot4229
  %path4385 = getelementptr %BSTree* %lhs_or_call4384, i32 0, i32 4
  %lhs_or_call4386 = load %BSTree** %path4385
  %cast_op4387 = bitcast i8* null to %Object* 
  %cast_op4388 = bitcast %BSTree* %lhs_or_call4386 to %Object* 
  %ret4389 = call i1 @equals ( %Object* %cast_op4388, %Object* %cast_op4387 )
  br i1 %ret4389, label %__then1380, label %__else1379

__fresh1410:
  br label %__then1380

__then1380:
  %vtmp4394 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4393 = load %_AVLTree_vtable** %vtmp4394
  %fptmp4395 = getelementptr %_AVLTree_vtable* %vtable4393, i32 0, i32 10
  %method4396 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4395
  %lhs_or_call4390 = load %BSTree** %c_slot4229
  %path4391 = getelementptr %BSTree* %lhs_or_call4390, i32 0, i32 5
  %lhs_or_call4392 = load %BSTree** %path4391
  %ret4397 = call %AVLTree* %method4396 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4392 )
  %ifnull_slot4398 = alloca %AVLTree*
  store %AVLTree* %ret4397, %AVLTree** %ifnull_slot4398
  %ifnull_guard4399 = icmp ne %AVLTree* %ret4397, null
  br i1 %ifnull_guard4399, label %__then1368, label %__else1367

__fresh1411:
  br label %__then1368

__then1368:
  %lhs_or_call4400 = load %BSTree** %c_slot4229
  %lhs_or_call4401 = load %AVLTree** %ifnull_slot4398
  %path4402 = getelementptr %AVLTree* %lhs_or_call4401, i32 0, i32 3
  %lhs_or_call4403 = load %BSTree** %path4402
  %cast_op4404 = bitcast %BSTree* %lhs_or_call4400 to %Object* 
  %cast_op4405 = bitcast %BSTree* %lhs_or_call4403 to %Object* 
  %ret4406 = call i1 @equals ( %Object* %cast_op4405, %Object* %cast_op4404 )
  br i1 %ret4406, label %__then1356, label %__else1355

__fresh1412:
  br label %__then1356

__then1356:
  %lhs_or_call4407 = load %AVLTree** %ifnull_slot4398
  %path4408 = getelementptr %AVLTree* %lhs_or_call4407, i32 0, i32 3
  %lhs_or_call4409 = load %BSTree** %c_slot4229
  %path4410 = getelementptr %BSTree* %lhs_or_call4409, i32 0, i32 3
  %lhs_or_call4411 = load %BSTree** %path4410
  store %BSTree* %lhs_or_call4411, %BSTree** %path4408
  br label %__merge1354

__fresh1413:
  br label %__else1355

__else1355:
  %lhs_or_call4412 = load %AVLTree** %ifnull_slot4398
  %path4413 = getelementptr %AVLTree* %lhs_or_call4412, i32 0, i32 4
  %lhs_or_call4414 = load %BSTree** %c_slot4229
  %path4415 = getelementptr %BSTree* %lhs_or_call4414, i32 0, i32 3
  %lhs_or_call4416 = load %BSTree** %path4415
  store %BSTree* %lhs_or_call4416, %BSTree** %path4413
  br label %__merge1354

__merge1354:
  %lhs_or_call4417 = load %AVLTree** %ifnull_slot4398
  %vdecl_slot4418 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4417, %AVLTree** %vdecl_slot4418
  br label %__cond1359

__cond1359:
  %lhs_or_call4419 = load %AVLTree** %vdecl_slot4418
  %cast_op4420 = bitcast i8* null to %Object* 
  %cast_op4421 = bitcast %AVLTree* %lhs_or_call4419 to %Object* 
  %ret4422 = call i1 @equals ( %Object* %cast_op4421, %Object* %cast_op4420 )
  %unop4423 = icmp eq i1 %ret4422, 0
  br i1 %unop4423, label %__body1358, label %__post1357

__fresh1414:
  br label %__body1358

__body1358:
  %lhs_or_call4424 = load %AVLTree** %vdecl_slot4418
  %ifnull_slot4425 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4424, %AVLTree** %ifnull_slot4425
  %ifnull_guard4426 = icmp ne %AVLTree* %lhs_or_call4424, null
  br i1 %ifnull_guard4426, label %__then1362, label %__else1361

__fresh1415:
  br label %__then1362

__then1362:
  %lhs_or_call4427 = load %AVLTree** %ifnull_slot4425
  %vtmp4429 = getelementptr %AVLTree* %lhs_or_call4427, i32 0, i32 0
  %vtable4428 = load %_AVLTree_vtable** %vtmp4429
  %fptmp4430 = getelementptr %_AVLTree_vtable* %vtable4428, i32 0, i32 6
  %method4431 = load void (%AVLTree*)** %fptmp4430
  call void %method4431( %AVLTree* %lhs_or_call4427 )
  %lhs_or_call4432 = load %AVLTree** %ifnull_slot4425
  %vtmp4434 = getelementptr %AVLTree* %lhs_or_call4432, i32 0, i32 0
  %vtable4433 = load %_AVLTree_vtable** %vtmp4434
  %fptmp4435 = getelementptr %_AVLTree_vtable* %vtable4433, i32 0, i32 7
  %method4436 = load void (%AVLTree*)** %fptmp4435
  call void %method4436( %AVLTree* %lhs_or_call4432 )
  %vtmp4441 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4440 = load %_AVLTree_vtable** %vtmp4441
  %fptmp4442 = getelementptr %_AVLTree_vtable* %vtable4440, i32 0, i32 10
  %method4443 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4442
  %lhs_or_call4437 = load %AVLTree** %ifnull_slot4425
  %path4438 = getelementptr %AVLTree* %lhs_or_call4437, i32 0, i32 5
  %lhs_or_call4439 = load %BSTree** %path4438
  %ret4444 = call %AVLTree* %method4443 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4439 )
  store %AVLTree* %ret4444, %AVLTree** %vdecl_slot4418
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
  %lhs_or_call4445 = load %BSTree** %c_slot4229
  %path4446 = getelementptr %BSTree* %lhs_or_call4445, i32 0, i32 3
  %lhs_or_call4447 = load %BSTree** %path4446
  %ifnull_slot4448 = alloca %BSTree*
  store %BSTree* %lhs_or_call4447, %BSTree** %ifnull_slot4448
  %ifnull_guard4449 = icmp ne %BSTree* %lhs_or_call4447, null
  br i1 %ifnull_guard4449, label %__then1365, label %__else1364

__fresh1419:
  br label %__then1365

__then1365:
  %path4450 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4451 = load %BSTree** %ifnull_slot4448
  %path4452 = getelementptr %BSTree* %lhs_or_call4451, i32 0, i32 2
  %lhs_or_call4453 = load %Number** %path4452
  store %Number* %lhs_or_call4453, %Number** %path4450
  %path4454 = getelementptr %AVLTree* %_this1, i32 0, i32 3
  %lhs_or_call4455 = load %BSTree** %ifnull_slot4448
  %path4456 = getelementptr %BSTree* %lhs_or_call4455, i32 0, i32 3
  %lhs_or_call4457 = load %BSTree** %path4456
  store %BSTree* %lhs_or_call4457, %BSTree** %path4454
  %path4458 = getelementptr %AVLTree* %_this1, i32 0, i32 4
  %lhs_or_call4459 = load %BSTree** %ifnull_slot4448
  %path4460 = getelementptr %BSTree* %lhs_or_call4459, i32 0, i32 4
  %lhs_or_call4461 = load %BSTree** %path4460
  store %BSTree* %lhs_or_call4461, %BSTree** %path4458
  %vtmp4463 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4462 = load %_AVLTree_vtable** %vtmp4463
  %fptmp4464 = getelementptr %_AVLTree_vtable* %vtable4462, i32 0, i32 6
  %method4465 = load void (%AVLTree*)** %fptmp4464
  call void %method4465( %AVLTree* %_this1 )
  %vtmp4467 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4466 = load %_AVLTree_vtable** %vtmp4467
  %fptmp4468 = getelementptr %_AVLTree_vtable* %vtable4466, i32 0, i32 7
  %method4469 = load void (%AVLTree*)** %fptmp4468
  call void %method4469( %AVLTree* %_this1 )
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
  %lhs_or_call4470 = load %BSTree** %c_slot4229
  %path4471 = getelementptr %BSTree* %lhs_or_call4470, i32 0, i32 4
  %lhs_or_call4472 = load %BSTree** %path4471
  %ifnull_slot4473 = alloca %BSTree*
  store %BSTree* %lhs_or_call4472, %BSTree** %ifnull_slot4473
  %ifnull_guard4474 = icmp ne %BSTree* %lhs_or_call4472, null
  br i1 %ifnull_guard4474, label %__then1377, label %__else1376

__fresh1422:
  br label %__then1377

__then1377:
  br label %__cond1371

__cond1371:
  %lhs_or_call4475 = load %BSTree** %ifnull_slot4473
  %path4476 = getelementptr %BSTree* %lhs_or_call4475, i32 0, i32 3
  %lhs_or_call4477 = load %BSTree** %path4476
  %cast_op4478 = bitcast i8* null to %Object* 
  %cast_op4479 = bitcast %BSTree* %lhs_or_call4477 to %Object* 
  %ret4480 = call i1 @equals ( %Object* %cast_op4479, %Object* %cast_op4478 )
  %unop4481 = icmp eq i1 %ret4480, 0
  br i1 %unop4481, label %__body1370, label %__post1369

__fresh1423:
  br label %__body1370

__body1370:
  %lhs_or_call4482 = load %BSTree** %ifnull_slot4473
  %path4483 = getelementptr %BSTree* %lhs_or_call4482, i32 0, i32 3
  %lhs_or_call4484 = load %BSTree** %path4483
  %ifnull_slot4485 = alloca %BSTree*
  store %BSTree* %lhs_or_call4484, %BSTree** %ifnull_slot4485
  %ifnull_guard4486 = icmp ne %BSTree* %lhs_or_call4484, null
  br i1 %ifnull_guard4486, label %__then1374, label %__else1373

__fresh1424:
  br label %__then1374

__then1374:
  %lhs_or_call4487 = load %BSTree** %ifnull_slot4485
  store %BSTree* %lhs_or_call4487, %BSTree** %ifnull_slot4473
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
  %lhs_or_call4488 = load %BSTree** %c_slot4229
  %path4489 = getelementptr %BSTree* %lhs_or_call4488, i32 0, i32 2
  %lhs_or_call4490 = load %BSTree** %ifnull_slot4473
  %path4491 = getelementptr %BSTree* %lhs_or_call4490, i32 0, i32 2
  %lhs_or_call4492 = load %Number** %path4491
  store %Number* %lhs_or_call4492, %Number** %path4489
  %vtmp4495 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4494 = load %_AVLTree_vtable** %vtmp4495
  %fptmp4496 = getelementptr %_AVLTree_vtable* %vtable4494, i32 0, i32 5
  %method4497 = load void (%AVLTree*, %BSTree*)** %fptmp4496
  %lhs_or_call4493 = load %BSTree** %ifnull_slot4473
  call void %method4497( %AVLTree* %_this1, %BSTree* %lhs_or_call4493 )
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


define void @_AVLTree_insert (%AVLTree* %_this1, %Number* %x4113){
__fresh1308:
  %x_slot4114 = alloca %Number*
  store %Number* %x4113, %Number** %x_slot4114
  %vdecl_slot4115 = alloca %AVLTree*
  store %AVLTree* %_this1, %AVLTree** %vdecl_slot4115
  %cast_op4116 = bitcast i8* null to %AVLTree* 
  %vdecl_slot4117 = alloca %AVLTree*
  store %AVLTree* %cast_op4116, %AVLTree** %vdecl_slot4117
  br label %__cond1283

__cond1283:
  %lhs_or_call4118 = load %AVLTree** %vdecl_slot4115
  %cast_op4119 = bitcast i8* null to %Object* 
  %cast_op4120 = bitcast %AVLTree* %lhs_or_call4118 to %Object* 
  %ret4121 = call i1 @equals ( %Object* %cast_op4120, %Object* %cast_op4119 )
  %unop4122 = icmp eq i1 %ret4121, 0
  br i1 %unop4122, label %__body1282, label %__post1281

__fresh1309:
  br label %__body1282

__body1282:
  %lhs_or_call4123 = load %AVLTree** %vdecl_slot4115
  %ifnull_slot4124 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4123, %AVLTree** %ifnull_slot4124
  %ifnull_guard4125 = icmp ne %AVLTree* %lhs_or_call4123, null
  br i1 %ifnull_guard4125, label %__then1292, label %__else1291

__fresh1310:
  br label %__then1292

__then1292:
  %lhs_or_call4126 = load %AVLTree** %ifnull_slot4124
  %path4127 = getelementptr %AVLTree* %lhs_or_call4126, i32 0, i32 2
  %lhs_or_call4128 = load %Number** %path4127
  %ifnull_slot4129 = alloca %Number*
  store %Number* %lhs_or_call4128, %Number** %ifnull_slot4129
  %ifnull_guard4130 = icmp ne %Number* %lhs_or_call4128, null
  br i1 %ifnull_guard4130, label %__then1289, label %__else1288

__fresh1311:
  br label %__then1289

__then1289:
  %lhs_or_call4132 = load %Number** %x_slot4114
  %vtmp4134 = getelementptr %Number* %lhs_or_call4132, i32 0, i32 0
  %vtable4133 = load %_Number_vtable** %vtmp4134
  %fptmp4135 = getelementptr %_Number_vtable* %vtable4133, i32 0, i32 2
  %method4136 = load i32 (%Number*, %Number*)** %fptmp4135
  %lhs_or_call4131 = load %Number** %ifnull_slot4129
  %ret4137 = call i32 %method4136 ( %Number* %lhs_or_call4132, %Number* %lhs_or_call4131 )
  %vdecl_slot4138 = alloca i32
  store i32 %ret4137, i32* %vdecl_slot4138
  %lhs_or_call4139 = load i32* %vdecl_slot4138
  %bop4140 = icmp slt i32 %lhs_or_call4139, 0
  br i1 %bop4140, label %__then1286, label %__else1285

__fresh1312:
  br label %__then1286

__then1286:
  %lhs_or_call4141 = load %AVLTree** %ifnull_slot4124
  store %AVLTree* %lhs_or_call4141, %AVLTree** %vdecl_slot4117
  %vtmp4146 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4145 = load %_AVLTree_vtable** %vtmp4146
  %fptmp4147 = getelementptr %_AVLTree_vtable* %vtable4145, i32 0, i32 10
  %method4148 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4147
  %lhs_or_call4142 = load %AVLTree** %ifnull_slot4124
  %path4143 = getelementptr %AVLTree* %lhs_or_call4142, i32 0, i32 3
  %lhs_or_call4144 = load %BSTree** %path4143
  %ret4149 = call %AVLTree* %method4148 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4144 )
  store %AVLTree* %ret4149, %AVLTree** %vdecl_slot4115
  br label %__merge1284

__fresh1313:
  br label %__else1285

__else1285:
  %lhs_or_call4150 = load %AVLTree** %ifnull_slot4124
  store %AVLTree* %lhs_or_call4150, %AVLTree** %vdecl_slot4117
  %vtmp4155 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4154 = load %_AVLTree_vtable** %vtmp4155
  %fptmp4156 = getelementptr %_AVLTree_vtable* %vtable4154, i32 0, i32 10
  %method4157 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4156
  %lhs_or_call4151 = load %AVLTree** %ifnull_slot4124
  %path4152 = getelementptr %AVLTree* %lhs_or_call4151, i32 0, i32 4
  %lhs_or_call4153 = load %BSTree** %path4152
  %ret4158 = call %AVLTree* %method4157 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4153 )
  store %AVLTree* %ret4158, %AVLTree** %vdecl_slot4115
  br label %__merge1284

__merge1284:
  br label %__merge1287

__fresh1314:
  br label %__else1288

__else1288:
  %cast_op4159 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4159, %AVLTree** %vdecl_slot4115
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
  %lhs_or_call4160 = load %AVLTree** %vdecl_slot4117
  %ifnull_slot4161 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4160, %AVLTree** %ifnull_slot4161
  %ifnull_guard4162 = icmp ne %AVLTree* %lhs_or_call4160, null
  br i1 %ifnull_guard4162, label %__then1301, label %__else1300

__fresh1317:
  br label %__then1301

__then1301:
  %mem_ptr4163 = call i32* @oat_malloc ( i32 28 )
  %obj4164 = bitcast i32* %mem_ptr4163 to %AVLTree* 
  %new_obj4165 = call %AVLTree* @_AVLTree_ctor ( %AVLTree* %obj4164 )
  %vdecl_slot4166 = alloca %AVLTree*
  store %AVLTree* %new_obj4165, %AVLTree** %vdecl_slot4166
  %lhs_or_call4167 = load %AVLTree** %vdecl_slot4166
  %path4168 = getelementptr %AVLTree* %lhs_or_call4167, i32 0, i32 2
  %lhs_or_call4169 = load %Number** %x_slot4114
  store %Number* %lhs_or_call4169, %Number** %path4168
  %lhs_or_call4170 = load %AVLTree** %vdecl_slot4166
  %path4171 = getelementptr %AVLTree* %lhs_or_call4170, i32 0, i32 6
  store i32 0, i32* %path4171
  %lhs_or_call4172 = load %AVLTree** %vdecl_slot4166
  %path4173 = getelementptr %AVLTree* %lhs_or_call4172, i32 0, i32 5
  %lhs_or_call4174 = load %AVLTree** %ifnull_slot4161
  %cast_op4175 = bitcast %AVLTree* %lhs_or_call4174 to %BSTree* 
  store %BSTree* %cast_op4175, %BSTree** %path4173
  %lhs_or_call4176 = load %AVLTree** %ifnull_slot4161
  %path4177 = getelementptr %AVLTree* %lhs_or_call4176, i32 0, i32 2
  %lhs_or_call4178 = load %Number** %path4177
  %ifnull_slot4179 = alloca %Number*
  store %Number* %lhs_or_call4178, %Number** %ifnull_slot4179
  %ifnull_guard4180 = icmp ne %Number* %lhs_or_call4178, null
  br i1 %ifnull_guard4180, label %__then1298, label %__else1297

__fresh1318:
  br label %__then1298

__then1298:
  %lhs_or_call4182 = load %Number** %x_slot4114
  %vtmp4184 = getelementptr %Number* %lhs_or_call4182, i32 0, i32 0
  %vtable4183 = load %_Number_vtable** %vtmp4184
  %fptmp4185 = getelementptr %_Number_vtable* %vtable4183, i32 0, i32 2
  %method4186 = load i32 (%Number*, %Number*)** %fptmp4185
  %lhs_or_call4181 = load %Number** %ifnull_slot4179
  %ret4187 = call i32 %method4186 ( %Number* %lhs_or_call4182, %Number* %lhs_or_call4181 )
  %bop4188 = icmp slt i32 %ret4187, 0
  br i1 %bop4188, label %__then1295, label %__else1294

__fresh1319:
  br label %__then1295

__then1295:
  %lhs_or_call4189 = load %AVLTree** %ifnull_slot4161
  %path4190 = getelementptr %AVLTree* %lhs_or_call4189, i32 0, i32 3
  %lhs_or_call4191 = load %AVLTree** %vdecl_slot4166
  %cast_op4192 = bitcast %AVLTree* %lhs_or_call4191 to %BSTree* 
  store %BSTree* %cast_op4192, %BSTree** %path4190
  br label %__merge1293

__fresh1320:
  br label %__else1294

__else1294:
  %lhs_or_call4193 = load %AVLTree** %ifnull_slot4161
  %path4194 = getelementptr %AVLTree* %lhs_or_call4193, i32 0, i32 4
  %lhs_or_call4195 = load %AVLTree** %vdecl_slot4166
  %cast_op4196 = bitcast %AVLTree* %lhs_or_call4195 to %BSTree* 
  store %BSTree* %cast_op4196, %BSTree** %path4194
  br label %__merge1293

__merge1293:
  br label %__merge1296

__fresh1321:
  br label %__else1297

__else1297:
  br label %__merge1296

__merge1296:
  %lhs_or_call4197 = load %AVLTree** %ifnull_slot4161
  store %AVLTree* %lhs_or_call4197, %AVLTree** %vdecl_slot4115
  br label %__merge1299

__fresh1322:
  br label %__else1300

__else1300:
  %path4198 = getelementptr %AVLTree* %_this1, i32 0, i32 2
  %lhs_or_call4199 = load %Number** %x_slot4114
  store %Number* %lhs_or_call4199, %Number** %path4198
  %path4200 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  store i32 0, i32* %path4200
  %cast_op4201 = bitcast i8* null to %AVLTree* 
  store %AVLTree* %cast_op4201, %AVLTree** %vdecl_slot4115
  br label %__merge1299

__merge1299:
  br label %__cond1304

__cond1304:
  %lhs_or_call4202 = load %AVLTree** %vdecl_slot4115
  %cast_op4203 = bitcast i8* null to %Object* 
  %cast_op4204 = bitcast %AVLTree* %lhs_or_call4202 to %Object* 
  %ret4205 = call i1 @equals ( %Object* %cast_op4204, %Object* %cast_op4203 )
  %unop4206 = icmp eq i1 %ret4205, 0
  br i1 %unop4206, label %__body1303, label %__post1302

__fresh1323:
  br label %__body1303

__body1303:
  %lhs_or_call4207 = load %AVLTree** %vdecl_slot4115
  %ifnull_slot4208 = alloca %AVLTree*
  store %AVLTree* %lhs_or_call4207, %AVLTree** %ifnull_slot4208
  %ifnull_guard4209 = icmp ne %AVLTree* %lhs_or_call4207, null
  br i1 %ifnull_guard4209, label %__then1307, label %__else1306

__fresh1324:
  br label %__then1307

__then1307:
  %lhs_or_call4210 = load %AVLTree** %ifnull_slot4208
  %vtmp4212 = getelementptr %AVLTree* %lhs_or_call4210, i32 0, i32 0
  %vtable4211 = load %_AVLTree_vtable** %vtmp4212
  %fptmp4213 = getelementptr %_AVLTree_vtable* %vtable4211, i32 0, i32 6
  %method4214 = load void (%AVLTree*)** %fptmp4213
  call void %method4214( %AVLTree* %lhs_or_call4210 )
  %lhs_or_call4215 = load %AVLTree** %ifnull_slot4208
  %vtmp4217 = getelementptr %AVLTree* %lhs_or_call4215, i32 0, i32 0
  %vtable4216 = load %_AVLTree_vtable** %vtmp4217
  %fptmp4218 = getelementptr %_AVLTree_vtable* %vtable4216, i32 0, i32 7
  %method4219 = load void (%AVLTree*)** %fptmp4218
  call void %method4219( %AVLTree* %lhs_or_call4215 )
  %vtmp4224 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  %vtable4223 = load %_AVLTree_vtable** %vtmp4224
  %fptmp4225 = getelementptr %_AVLTree_vtable* %vtable4223, i32 0, i32 10
  %method4226 = load %AVLTree* (%AVLTree*, %BSTree*)** %fptmp4225
  %lhs_or_call4220 = load %AVLTree** %ifnull_slot4208
  %path4221 = getelementptr %AVLTree* %lhs_or_call4220, i32 0, i32 5
  %lhs_or_call4222 = load %BSTree** %path4221
  %ret4227 = call %AVLTree* %method4226 ( %AVLTree* %_this1, %BSTree* %lhs_or_call4222 )
  store %AVLTree* %ret4227, %AVLTree** %vdecl_slot4115
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
  %cast_op4107 = bitcast %AVLTree* %_this1 to %BSTree* 
  %dummy4108 = call %BSTree* @_BSTree_ctor ( %BSTree* %cast_op4107 )
  %path4109 = getelementptr %AVLTree* %_this1, i32 0, i32 1
  store i8* @_const_str616, i8** %path4109
  %vt_slot4110 = getelementptr %AVLTree* %_this1, i32 0, i32 0
  store %_AVLTree_vtable* @_AVLTree_vtable597, %_AVLTree_vtable** %vt_slot4110
  %path4111 = getelementptr %AVLTree* %_this1, i32 0, i32 6
  %unop4112 = sub i32 0, 1
  store i32 %unop4112, i32* %path4111
  ret %AVLTree* %_this1
}


define void @_BSTree_remove_node (%BSTree* %_this1, %BSTree* %c3954){
__fresh1251:
  %c_slot3955 = alloca %BSTree*
  store %BSTree* %c3954, %BSTree** %c_slot3955
  %lhs_or_call3956 = load %BSTree** %c_slot3955
  %path3957 = getelementptr %BSTree* %lhs_or_call3956, i32 0, i32 3
  %lhs_or_call3958 = load %BSTree** %path3957
  %cast_op3959 = bitcast i8* null to %Object* 
  %cast_op3960 = bitcast %BSTree* %lhs_or_call3958 to %Object* 
  %ret3961 = call i1 @equals ( %Object* %cast_op3960, %Object* %cast_op3959 )
  %lhs_or_call3962 = load %BSTree** %c_slot3955
  %path3963 = getelementptr %BSTree* %lhs_or_call3962, i32 0, i32 4
  %lhs_or_call3964 = load %BSTree** %path3963
  %cast_op3965 = bitcast i8* null to %Object* 
  %cast_op3966 = bitcast %BSTree* %lhs_or_call3964 to %Object* 
  %ret3967 = call i1 @equals ( %Object* %cast_op3966, %Object* %cast_op3965 )
  %bop3968 = and i1 %ret3961, %ret3967
  br i1 %bop3968, label %__then1250, label %__else1249

__fresh1252:
  br label %__then1250

__then1250:
  %lhs_or_call3969 = load %BSTree** %c_slot3955
  %path3970 = getelementptr %BSTree* %lhs_or_call3969, i32 0, i32 5
  %lhs_or_call3971 = load %BSTree** %path3970
  %ifnull_slot3972 = alloca %BSTree*
  store %BSTree* %lhs_or_call3971, %BSTree** %ifnull_slot3972
  %ifnull_guard3973 = icmp ne %BSTree* %lhs_or_call3971, null
  br i1 %ifnull_guard3973, label %__then1214, label %__else1213

__fresh1253:
  br label %__then1214

__then1214:
  %lhs_or_call3974 = load %BSTree** %c_slot3955
  %lhs_or_call3975 = load %BSTree** %ifnull_slot3972
  %path3976 = getelementptr %BSTree* %lhs_or_call3975, i32 0, i32 3
  %lhs_or_call3977 = load %BSTree** %path3976
  %cast_op3978 = bitcast %BSTree* %lhs_or_call3974 to %Object* 
  %cast_op3979 = bitcast %BSTree* %lhs_or_call3977 to %Object* 
  %ret3980 = call i1 @equals ( %Object* %cast_op3979, %Object* %cast_op3978 )
  br i1 %ret3980, label %__then1211, label %__else1210

__fresh1254:
  br label %__then1211

__then1211:
  %lhs_or_call3981 = load %BSTree** %ifnull_slot3972
  %path3982 = getelementptr %BSTree* %lhs_or_call3981, i32 0, i32 3
  %cast_op3983 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3983, %BSTree** %path3982
  br label %__merge1209

__fresh1255:
  br label %__else1210

__else1210:
  %lhs_or_call3984 = load %BSTree** %ifnull_slot3972
  %path3985 = getelementptr %BSTree* %lhs_or_call3984, i32 0, i32 4
  %cast_op3986 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3986, %BSTree** %path3985
  br label %__merge1209

__merge1209:
  br label %__merge1212

__fresh1256:
  br label %__else1213

__else1213:
  %path3987 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %cast_op3988 = bitcast i8* null to %Number* 
  store %Number* %cast_op3988, %Number** %path3987
  br label %__merge1212

__merge1212:
  br label %__merge1248

__fresh1257:
  br label %__else1249

__else1249:
  %lhs_or_call3989 = load %BSTree** %c_slot3955
  %path3990 = getelementptr %BSTree* %lhs_or_call3989, i32 0, i32 3
  %lhs_or_call3991 = load %BSTree** %path3990
  %cast_op3992 = bitcast i8* null to %Object* 
  %cast_op3993 = bitcast %BSTree* %lhs_or_call3991 to %Object* 
  %ret3994 = call i1 @equals ( %Object* %cast_op3993, %Object* %cast_op3992 )
  br i1 %ret3994, label %__then1247, label %__else1246

__fresh1258:
  br label %__then1247

__then1247:
  %lhs_or_call3995 = load %BSTree** %c_slot3955
  %path3996 = getelementptr %BSTree* %lhs_or_call3995, i32 0, i32 5
  %lhs_or_call3997 = load %BSTree** %path3996
  %ifnull_slot3998 = alloca %BSTree*
  store %BSTree* %lhs_or_call3997, %BSTree** %ifnull_slot3998
  %ifnull_guard3999 = icmp ne %BSTree* %lhs_or_call3997, null
  br i1 %ifnull_guard3999, label %__then1223, label %__else1222

__fresh1259:
  br label %__then1223

__then1223:
  %lhs_or_call4000 = load %BSTree** %c_slot3955
  %lhs_or_call4001 = load %BSTree** %ifnull_slot3998
  %path4002 = getelementptr %BSTree* %lhs_or_call4001, i32 0, i32 3
  %lhs_or_call4003 = load %BSTree** %path4002
  %cast_op4004 = bitcast %BSTree* %lhs_or_call4000 to %Object* 
  %cast_op4005 = bitcast %BSTree* %lhs_or_call4003 to %Object* 
  %ret4006 = call i1 @equals ( %Object* %cast_op4005, %Object* %cast_op4004 )
  br i1 %ret4006, label %__then1217, label %__else1216

__fresh1260:
  br label %__then1217

__then1217:
  %lhs_or_call4007 = load %BSTree** %ifnull_slot3998
  %path4008 = getelementptr %BSTree* %lhs_or_call4007, i32 0, i32 3
  %lhs_or_call4009 = load %BSTree** %c_slot3955
  %path4010 = getelementptr %BSTree* %lhs_or_call4009, i32 0, i32 4
  %lhs_or_call4011 = load %BSTree** %path4010
  store %BSTree* %lhs_or_call4011, %BSTree** %path4008
  br label %__merge1215

__fresh1261:
  br label %__else1216

__else1216:
  %lhs_or_call4012 = load %BSTree** %ifnull_slot3998
  %path4013 = getelementptr %BSTree* %lhs_or_call4012, i32 0, i32 4
  %lhs_or_call4014 = load %BSTree** %c_slot3955
  %path4015 = getelementptr %BSTree* %lhs_or_call4014, i32 0, i32 4
  %lhs_or_call4016 = load %BSTree** %path4015
  store %BSTree* %lhs_or_call4016, %BSTree** %path4013
  br label %__merge1215

__merge1215:
  br label %__merge1221

__fresh1262:
  br label %__else1222

__else1222:
  %lhs_or_call4017 = load %BSTree** %c_slot3955
  %path4018 = getelementptr %BSTree* %lhs_or_call4017, i32 0, i32 4
  %lhs_or_call4019 = load %BSTree** %path4018
  %ifnull_slot4020 = alloca %BSTree*
  store %BSTree* %lhs_or_call4019, %BSTree** %ifnull_slot4020
  %ifnull_guard4021 = icmp ne %BSTree* %lhs_or_call4019, null
  br i1 %ifnull_guard4021, label %__then1220, label %__else1219

__fresh1263:
  br label %__then1220

__then1220:
  %path4022 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call4023 = load %BSTree** %ifnull_slot4020
  %path4024 = getelementptr %BSTree* %lhs_or_call4023, i32 0, i32 2
  %lhs_or_call4025 = load %Number** %path4024
  store %Number* %lhs_or_call4025, %Number** %path4022
  %path4026 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %lhs_or_call4027 = load %BSTree** %ifnull_slot4020
  %path4028 = getelementptr %BSTree* %lhs_or_call4027, i32 0, i32 3
  %lhs_or_call4029 = load %BSTree** %path4028
  store %BSTree* %lhs_or_call4029, %BSTree** %path4026
  %path4030 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %lhs_or_call4031 = load %BSTree** %ifnull_slot4020
  %path4032 = getelementptr %BSTree* %lhs_or_call4031, i32 0, i32 4
  %lhs_or_call4033 = load %BSTree** %path4032
  store %BSTree* %lhs_or_call4033, %BSTree** %path4030
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
  %lhs_or_call4034 = load %BSTree** %c_slot3955
  %path4035 = getelementptr %BSTree* %lhs_or_call4034, i32 0, i32 4
  %lhs_or_call4036 = load %BSTree** %path4035
  %cast_op4037 = bitcast i8* null to %Object* 
  %cast_op4038 = bitcast %BSTree* %lhs_or_call4036 to %Object* 
  %ret4039 = call i1 @equals ( %Object* %cast_op4038, %Object* %cast_op4037 )
  br i1 %ret4039, label %__then1244, label %__else1243

__fresh1266:
  br label %__then1244

__then1244:
  %lhs_or_call4040 = load %BSTree** %c_slot3955
  %path4041 = getelementptr %BSTree* %lhs_or_call4040, i32 0, i32 5
  %lhs_or_call4042 = load %BSTree** %path4041
  %ifnull_slot4043 = alloca %BSTree*
  store %BSTree* %lhs_or_call4042, %BSTree** %ifnull_slot4043
  %ifnull_guard4044 = icmp ne %BSTree* %lhs_or_call4042, null
  br i1 %ifnull_guard4044, label %__then1232, label %__else1231

__fresh1267:
  br label %__then1232

__then1232:
  %lhs_or_call4045 = load %BSTree** %c_slot3955
  %lhs_or_call4046 = load %BSTree** %ifnull_slot4043
  %path4047 = getelementptr %BSTree* %lhs_or_call4046, i32 0, i32 3
  %lhs_or_call4048 = load %BSTree** %path4047
  %cast_op4049 = bitcast %BSTree* %lhs_or_call4045 to %Object* 
  %cast_op4050 = bitcast %BSTree* %lhs_or_call4048 to %Object* 
  %ret4051 = call i1 @equals ( %Object* %cast_op4050, %Object* %cast_op4049 )
  br i1 %ret4051, label %__then1226, label %__else1225

__fresh1268:
  br label %__then1226

__then1226:
  %lhs_or_call4052 = load %BSTree** %ifnull_slot4043
  %path4053 = getelementptr %BSTree* %lhs_or_call4052, i32 0, i32 3
  %lhs_or_call4054 = load %BSTree** %c_slot3955
  %path4055 = getelementptr %BSTree* %lhs_or_call4054, i32 0, i32 3
  %lhs_or_call4056 = load %BSTree** %path4055
  store %BSTree* %lhs_or_call4056, %BSTree** %path4053
  br label %__merge1224

__fresh1269:
  br label %__else1225

__else1225:
  %lhs_or_call4057 = load %BSTree** %ifnull_slot4043
  %path4058 = getelementptr %BSTree* %lhs_or_call4057, i32 0, i32 4
  %lhs_or_call4059 = load %BSTree** %c_slot3955
  %path4060 = getelementptr %BSTree* %lhs_or_call4059, i32 0, i32 3
  %lhs_or_call4061 = load %BSTree** %path4060
  store %BSTree* %lhs_or_call4061, %BSTree** %path4058
  br label %__merge1224

__merge1224:
  br label %__merge1230

__fresh1270:
  br label %__else1231

__else1231:
  %lhs_or_call4062 = load %BSTree** %c_slot3955
  %path4063 = getelementptr %BSTree* %lhs_or_call4062, i32 0, i32 3
  %lhs_or_call4064 = load %BSTree** %path4063
  %ifnull_slot4065 = alloca %BSTree*
  store %BSTree* %lhs_or_call4064, %BSTree** %ifnull_slot4065
  %ifnull_guard4066 = icmp ne %BSTree* %lhs_or_call4064, null
  br i1 %ifnull_guard4066, label %__then1229, label %__else1228

__fresh1271:
  br label %__then1229

__then1229:
  %path4067 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call4068 = load %BSTree** %ifnull_slot4065
  %path4069 = getelementptr %BSTree* %lhs_or_call4068, i32 0, i32 2
  %lhs_or_call4070 = load %Number** %path4069
  store %Number* %lhs_or_call4070, %Number** %path4067
  %path4071 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %lhs_or_call4072 = load %BSTree** %ifnull_slot4065
  %path4073 = getelementptr %BSTree* %lhs_or_call4072, i32 0, i32 3
  %lhs_or_call4074 = load %BSTree** %path4073
  store %BSTree* %lhs_or_call4074, %BSTree** %path4071
  %path4075 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %lhs_or_call4076 = load %BSTree** %ifnull_slot4065
  %path4077 = getelementptr %BSTree* %lhs_or_call4076, i32 0, i32 4
  %lhs_or_call4078 = load %BSTree** %path4077
  store %BSTree* %lhs_or_call4078, %BSTree** %path4075
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
  %lhs_or_call4079 = load %BSTree** %c_slot3955
  %path4080 = getelementptr %BSTree* %lhs_or_call4079, i32 0, i32 4
  %lhs_or_call4081 = load %BSTree** %path4080
  %ifnull_slot4082 = alloca %BSTree*
  store %BSTree* %lhs_or_call4081, %BSTree** %ifnull_slot4082
  %ifnull_guard4083 = icmp ne %BSTree* %lhs_or_call4081, null
  br i1 %ifnull_guard4083, label %__then1241, label %__else1240

__fresh1274:
  br label %__then1241

__then1241:
  br label %__cond1235

__cond1235:
  %lhs_or_call4084 = load %BSTree** %ifnull_slot4082
  %path4085 = getelementptr %BSTree* %lhs_or_call4084, i32 0, i32 3
  %lhs_or_call4086 = load %BSTree** %path4085
  %cast_op4087 = bitcast i8* null to %Object* 
  %cast_op4088 = bitcast %BSTree* %lhs_or_call4086 to %Object* 
  %ret4089 = call i1 @equals ( %Object* %cast_op4088, %Object* %cast_op4087 )
  %unop4090 = icmp eq i1 %ret4089, 0
  br i1 %unop4090, label %__body1234, label %__post1233

__fresh1275:
  br label %__body1234

__body1234:
  %lhs_or_call4091 = load %BSTree** %ifnull_slot4082
  %path4092 = getelementptr %BSTree* %lhs_or_call4091, i32 0, i32 3
  %lhs_or_call4093 = load %BSTree** %path4092
  %ifnull_slot4094 = alloca %BSTree*
  store %BSTree* %lhs_or_call4093, %BSTree** %ifnull_slot4094
  %ifnull_guard4095 = icmp ne %BSTree* %lhs_or_call4093, null
  br i1 %ifnull_guard4095, label %__then1238, label %__else1237

__fresh1276:
  br label %__then1238

__then1238:
  %lhs_or_call4096 = load %BSTree** %ifnull_slot4094
  store %BSTree* %lhs_or_call4096, %BSTree** %ifnull_slot4082
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
  %lhs_or_call4097 = load %BSTree** %c_slot3955
  %path4098 = getelementptr %BSTree* %lhs_or_call4097, i32 0, i32 2
  %lhs_or_call4099 = load %BSTree** %ifnull_slot4082
  %path4100 = getelementptr %BSTree* %lhs_or_call4099, i32 0, i32 2
  %lhs_or_call4101 = load %Number** %path4100
  store %Number* %lhs_or_call4101, %Number** %path4098
  %vtmp4104 = getelementptr %BSTree* %_this1, i32 0, i32 0
  %vtable4103 = load %_BSTree_vtable** %vtmp4104
  %fptmp4105 = getelementptr %_BSTree_vtable* %vtable4103, i32 0, i32 5
  %method4106 = load void (%BSTree*, %BSTree*)** %fptmp4105
  %lhs_or_call4102 = load %BSTree** %ifnull_slot4082
  call void %method4106( %BSTree* %_this1, %BSTree* %lhs_or_call4102 )
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


define void @_BSTree_remove (%BSTree* %_this1, %Number* %x3901){
__fresh1194:
  %x_slot3902 = alloca %Number*
  store %Number* %x3901, %Number** %x_slot3902
  %vdecl_slot3903 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3903
  %cast_op3904 = bitcast i8* null to %BSTree* 
  %vdecl_slot3905 = alloca %BSTree*
  store %BSTree* %cast_op3904, %BSTree** %vdecl_slot3905
  %vdecl_slot3906 = alloca i32
  store i32 0, i32* %vdecl_slot3906
  br label %__cond1175

__cond1175:
  %lhs_or_call3907 = load i32* %vdecl_slot3906
  %bop3908 = icmp eq i32 %lhs_or_call3907, 0
  %lhs_or_call3909 = load %BSTree** %vdecl_slot3903
  %cast_op3910 = bitcast i8* null to %Object* 
  %cast_op3911 = bitcast %BSTree* %lhs_or_call3909 to %Object* 
  %ret3912 = call i1 @equals ( %Object* %cast_op3911, %Object* %cast_op3910 )
  %unop3913 = icmp eq i1 %ret3912, 0
  %bop3914 = and i1 %bop3908, %unop3913
  br i1 %bop3914, label %__body1174, label %__post1173

__fresh1195:
  br label %__body1174

__body1174:
  %lhs_or_call3915 = load %BSTree** %vdecl_slot3903
  %ifnull_slot3916 = alloca %BSTree*
  store %BSTree* %lhs_or_call3915, %BSTree** %ifnull_slot3916
  %ifnull_guard3917 = icmp ne %BSTree* %lhs_or_call3915, null
  br i1 %ifnull_guard3917, label %__then1187, label %__else1186

__fresh1196:
  br label %__then1187

__then1187:
  %lhs_or_call3918 = load %BSTree** %ifnull_slot3916
  %path3919 = getelementptr %BSTree* %lhs_or_call3918, i32 0, i32 2
  %lhs_or_call3920 = load %Number** %path3919
  %ifnull_slot3921 = alloca %Number*
  store %Number* %lhs_or_call3920, %Number** %ifnull_slot3921
  %ifnull_guard3922 = icmp ne %Number* %lhs_or_call3920, null
  br i1 %ifnull_guard3922, label %__then1184, label %__else1183

__fresh1197:
  br label %__then1184

__then1184:
  %lhs_or_call3924 = load %Number** %x_slot3902
  %vtmp3926 = getelementptr %Number* %lhs_or_call3924, i32 0, i32 0
  %vtable3925 = load %_Number_vtable** %vtmp3926
  %fptmp3927 = getelementptr %_Number_vtable* %vtable3925, i32 0, i32 2
  %method3928 = load i32 (%Number*, %Number*)** %fptmp3927
  %lhs_or_call3923 = load %Number** %ifnull_slot3921
  %ret3929 = call i32 %method3928 ( %Number* %lhs_or_call3924, %Number* %lhs_or_call3923 )
  %vdecl_slot3930 = alloca i32
  store i32 %ret3929, i32* %vdecl_slot3930
  %lhs_or_call3931 = load i32* %vdecl_slot3930
  %bop3932 = icmp eq i32 %lhs_or_call3931, 0
  br i1 %bop3932, label %__then1181, label %__else1180

__fresh1198:
  br label %__then1181

__then1181:
  store i32 1, i32* %vdecl_slot3906
  br label %__merge1179

__fresh1199:
  br label %__else1180

__else1180:
  %lhs_or_call3933 = load i32* %vdecl_slot3930
  %bop3934 = icmp slt i32 %lhs_or_call3933, 0
  br i1 %bop3934, label %__then1178, label %__else1177

__fresh1200:
  br label %__then1178

__then1178:
  %lhs_or_call3935 = load %BSTree** %vdecl_slot3903
  store %BSTree* %lhs_or_call3935, %BSTree** %vdecl_slot3905
  %lhs_or_call3936 = load %BSTree** %ifnull_slot3916
  %path3937 = getelementptr %BSTree* %lhs_or_call3936, i32 0, i32 3
  %lhs_or_call3938 = load %BSTree** %path3937
  store %BSTree* %lhs_or_call3938, %BSTree** %vdecl_slot3903
  br label %__merge1176

__fresh1201:
  br label %__else1177

__else1177:
  %lhs_or_call3939 = load %BSTree** %vdecl_slot3903
  store %BSTree* %lhs_or_call3939, %BSTree** %vdecl_slot3905
  %lhs_or_call3940 = load %BSTree** %ifnull_slot3916
  %path3941 = getelementptr %BSTree* %lhs_or_call3940, i32 0, i32 4
  %lhs_or_call3942 = load %BSTree** %path3941
  store %BSTree* %lhs_or_call3942, %BSTree** %vdecl_slot3903
  br label %__merge1176

__merge1176:
  br label %__merge1179

__merge1179:
  br label %__merge1182

__fresh1202:
  br label %__else1183

__else1183:
  %cast_op3943 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3943, %BSTree** %vdecl_slot3903
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
  %lhs_or_call3944 = load i32* %vdecl_slot3906
  %bop3945 = icmp eq i32 %lhs_or_call3944, 0
  br i1 %bop3945, label %__then1193, label %__else1192

__fresh1205:
  br label %__then1193

__then1193:
  call void @print_string( i8* @_const_str610 )
  call void @oat_abort( i32 -1 )
  br label %__merge1191

__fresh1206:
  br label %__else1192

__else1192:
  %lhs_or_call3946 = load %BSTree** %vdecl_slot3903
  %ifnull_slot3947 = alloca %BSTree*
  store %BSTree* %lhs_or_call3946, %BSTree** %ifnull_slot3947
  %ifnull_guard3948 = icmp ne %BSTree* %lhs_or_call3946, null
  br i1 %ifnull_guard3948, label %__then1190, label %__else1189

__fresh1207:
  br label %__then1190

__then1190:
  %vtmp3951 = getelementptr %BSTree* %_this1, i32 0, i32 0
  %vtable3950 = load %_BSTree_vtable** %vtmp3951
  %fptmp3952 = getelementptr %_BSTree_vtable* %vtable3950, i32 0, i32 5
  %method3953 = load void (%BSTree*, %BSTree*)** %fptmp3952
  %lhs_or_call3949 = load %BSTree** %ifnull_slot3947
  call void %method3953( %BSTree* %_this1, %BSTree* %lhs_or_call3949 )
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


define i32 @_BSTree_find (%BSTree* %_this1, %Number* %x3861){
__fresh1162:
  %x_slot3862 = alloca %Number*
  store %Number* %x3861, %Number** %x_slot3862
  %vdecl_slot3863 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3863
  %vdecl_slot3864 = alloca i32
  store i32 0, i32* %vdecl_slot3864
  br label %__cond1149

__cond1149:
  %lhs_or_call3865 = load i32* %vdecl_slot3864
  %bop3866 = icmp eq i32 %lhs_or_call3865, 0
  %lhs_or_call3867 = load %BSTree** %vdecl_slot3863
  %cast_op3868 = bitcast i8* null to %Object* 
  %cast_op3869 = bitcast %BSTree* %lhs_or_call3867 to %Object* 
  %ret3870 = call i1 @equals ( %Object* %cast_op3869, %Object* %cast_op3868 )
  %unop3871 = icmp eq i1 %ret3870, 0
  %bop3872 = and i1 %bop3866, %unop3871
  br i1 %bop3872, label %__body1148, label %__post1147

__fresh1163:
  br label %__body1148

__body1148:
  %lhs_or_call3873 = load %BSTree** %vdecl_slot3863
  %ifnull_slot3874 = alloca %BSTree*
  store %BSTree* %lhs_or_call3873, %BSTree** %ifnull_slot3874
  %ifnull_guard3875 = icmp ne %BSTree* %lhs_or_call3873, null
  br i1 %ifnull_guard3875, label %__then1161, label %__else1160

__fresh1164:
  br label %__then1161

__then1161:
  %lhs_or_call3876 = load %BSTree** %ifnull_slot3874
  %path3877 = getelementptr %BSTree* %lhs_or_call3876, i32 0, i32 2
  %lhs_or_call3878 = load %Number** %path3877
  %ifnull_slot3879 = alloca %Number*
  store %Number* %lhs_or_call3878, %Number** %ifnull_slot3879
  %ifnull_guard3880 = icmp ne %Number* %lhs_or_call3878, null
  br i1 %ifnull_guard3880, label %__then1158, label %__else1157

__fresh1165:
  br label %__then1158

__then1158:
  %lhs_or_call3882 = load %Number** %x_slot3862
  %vtmp3884 = getelementptr %Number* %lhs_or_call3882, i32 0, i32 0
  %vtable3883 = load %_Number_vtable** %vtmp3884
  %fptmp3885 = getelementptr %_Number_vtable* %vtable3883, i32 0, i32 2
  %method3886 = load i32 (%Number*, %Number*)** %fptmp3885
  %lhs_or_call3881 = load %Number** %ifnull_slot3879
  %ret3887 = call i32 %method3886 ( %Number* %lhs_or_call3882, %Number* %lhs_or_call3881 )
  %vdecl_slot3888 = alloca i32
  store i32 %ret3887, i32* %vdecl_slot3888
  %lhs_or_call3889 = load i32* %vdecl_slot3888
  %bop3890 = icmp eq i32 %lhs_or_call3889, 0
  br i1 %bop3890, label %__then1155, label %__else1154

__fresh1166:
  br label %__then1155

__then1155:
  store i32 1, i32* %vdecl_slot3864
  br label %__merge1153

__fresh1167:
  br label %__else1154

__else1154:
  %lhs_or_call3891 = load i32* %vdecl_slot3888
  %bop3892 = icmp slt i32 %lhs_or_call3891, 0
  br i1 %bop3892, label %__then1152, label %__else1151

__fresh1168:
  br label %__then1152

__then1152:
  %lhs_or_call3893 = load %BSTree** %ifnull_slot3874
  %path3894 = getelementptr %BSTree* %lhs_or_call3893, i32 0, i32 3
  %lhs_or_call3895 = load %BSTree** %path3894
  store %BSTree* %lhs_or_call3895, %BSTree** %vdecl_slot3863
  br label %__merge1150

__fresh1169:
  br label %__else1151

__else1151:
  %lhs_or_call3896 = load %BSTree** %ifnull_slot3874
  %path3897 = getelementptr %BSTree* %lhs_or_call3896, i32 0, i32 4
  %lhs_or_call3898 = load %BSTree** %path3897
  store %BSTree* %lhs_or_call3898, %BSTree** %vdecl_slot3863
  br label %__merge1150

__merge1150:
  br label %__merge1153

__merge1153:
  br label %__merge1156

__fresh1170:
  br label %__else1157

__else1157:
  %cast_op3899 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3899, %BSTree** %vdecl_slot3863
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
  %lhs_or_call3900 = load i32* %vdecl_slot3864
  ret i32 %lhs_or_call3900
}


define void @_BSTree_insert (%BSTree* %_this1, %Number* %x3790){
__fresh1132:
  %x_slot3791 = alloca %Number*
  store %Number* %x3790, %Number** %x_slot3791
  %vdecl_slot3792 = alloca %BSTree*
  store %BSTree* %_this1, %BSTree** %vdecl_slot3792
  %cast_op3793 = bitcast i8* null to %BSTree* 
  %vdecl_slot3794 = alloca %BSTree*
  store %BSTree* %cast_op3793, %BSTree** %vdecl_slot3794
  br label %__cond1113

__cond1113:
  %lhs_or_call3795 = load %BSTree** %vdecl_slot3792
  %cast_op3796 = bitcast i8* null to %Object* 
  %cast_op3797 = bitcast %BSTree* %lhs_or_call3795 to %Object* 
  %ret3798 = call i1 @equals ( %Object* %cast_op3797, %Object* %cast_op3796 )
  %unop3799 = icmp eq i1 %ret3798, 0
  br i1 %unop3799, label %__body1112, label %__post1111

__fresh1133:
  br label %__body1112

__body1112:
  %lhs_or_call3800 = load %BSTree** %vdecl_slot3792
  %ifnull_slot3801 = alloca %BSTree*
  store %BSTree* %lhs_or_call3800, %BSTree** %ifnull_slot3801
  %ifnull_guard3802 = icmp ne %BSTree* %lhs_or_call3800, null
  br i1 %ifnull_guard3802, label %__then1122, label %__else1121

__fresh1134:
  br label %__then1122

__then1122:
  %lhs_or_call3803 = load %BSTree** %ifnull_slot3801
  %path3804 = getelementptr %BSTree* %lhs_or_call3803, i32 0, i32 2
  %lhs_or_call3805 = load %Number** %path3804
  %ifnull_slot3806 = alloca %Number*
  store %Number* %lhs_or_call3805, %Number** %ifnull_slot3806
  %ifnull_guard3807 = icmp ne %Number* %lhs_or_call3805, null
  br i1 %ifnull_guard3807, label %__then1119, label %__else1118

__fresh1135:
  br label %__then1119

__then1119:
  %lhs_or_call3809 = load %Number** %x_slot3791
  %vtmp3811 = getelementptr %Number* %lhs_or_call3809, i32 0, i32 0
  %vtable3810 = load %_Number_vtable** %vtmp3811
  %fptmp3812 = getelementptr %_Number_vtable* %vtable3810, i32 0, i32 2
  %method3813 = load i32 (%Number*, %Number*)** %fptmp3812
  %lhs_or_call3808 = load %Number** %ifnull_slot3806
  %ret3814 = call i32 %method3813 ( %Number* %lhs_or_call3809, %Number* %lhs_or_call3808 )
  %vdecl_slot3815 = alloca i32
  store i32 %ret3814, i32* %vdecl_slot3815
  %lhs_or_call3816 = load i32* %vdecl_slot3815
  %bop3817 = icmp slt i32 %lhs_or_call3816, 0
  br i1 %bop3817, label %__then1116, label %__else1115

__fresh1136:
  br label %__then1116

__then1116:
  %lhs_or_call3818 = load %BSTree** %vdecl_slot3792
  store %BSTree* %lhs_or_call3818, %BSTree** %vdecl_slot3794
  %lhs_or_call3819 = load %BSTree** %ifnull_slot3801
  %path3820 = getelementptr %BSTree* %lhs_or_call3819, i32 0, i32 3
  %lhs_or_call3821 = load %BSTree** %path3820
  store %BSTree* %lhs_or_call3821, %BSTree** %vdecl_slot3792
  br label %__merge1114

__fresh1137:
  br label %__else1115

__else1115:
  %lhs_or_call3822 = load %BSTree** %vdecl_slot3792
  store %BSTree* %lhs_or_call3822, %BSTree** %vdecl_slot3794
  %lhs_or_call3823 = load %BSTree** %ifnull_slot3801
  %path3824 = getelementptr %BSTree* %lhs_or_call3823, i32 0, i32 4
  %lhs_or_call3825 = load %BSTree** %path3824
  store %BSTree* %lhs_or_call3825, %BSTree** %vdecl_slot3792
  br label %__merge1114

__merge1114:
  br label %__merge1117

__fresh1138:
  br label %__else1118

__else1118:
  %cast_op3826 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3826, %BSTree** %vdecl_slot3792
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
  %lhs_or_call3827 = load %BSTree** %vdecl_slot3794
  %ifnull_slot3828 = alloca %BSTree*
  store %BSTree* %lhs_or_call3827, %BSTree** %ifnull_slot3828
  %ifnull_guard3829 = icmp ne %BSTree* %lhs_or_call3827, null
  br i1 %ifnull_guard3829, label %__then1131, label %__else1130

__fresh1141:
  br label %__then1131

__then1131:
  %mem_ptr3830 = call i32* @oat_malloc ( i32 24 )
  %obj3831 = bitcast i32* %mem_ptr3830 to %BSTree* 
  %new_obj3832 = call %BSTree* @_BSTree_ctor ( %BSTree* %obj3831 )
  %vdecl_slot3833 = alloca %BSTree*
  store %BSTree* %new_obj3832, %BSTree** %vdecl_slot3833
  %lhs_or_call3834 = load %BSTree** %vdecl_slot3833
  %path3835 = getelementptr %BSTree* %lhs_or_call3834, i32 0, i32 2
  %lhs_or_call3836 = load %Number** %x_slot3791
  store %Number* %lhs_or_call3836, %Number** %path3835
  %lhs_or_call3837 = load %BSTree** %vdecl_slot3833
  %path3838 = getelementptr %BSTree* %lhs_or_call3837, i32 0, i32 5
  %lhs_or_call3839 = load %BSTree** %ifnull_slot3828
  store %BSTree* %lhs_or_call3839, %BSTree** %path3838
  %lhs_or_call3840 = load %BSTree** %ifnull_slot3828
  %path3841 = getelementptr %BSTree* %lhs_or_call3840, i32 0, i32 2
  %lhs_or_call3842 = load %Number** %path3841
  %ifnull_slot3843 = alloca %Number*
  store %Number* %lhs_or_call3842, %Number** %ifnull_slot3843
  %ifnull_guard3844 = icmp ne %Number* %lhs_or_call3842, null
  br i1 %ifnull_guard3844, label %__then1128, label %__else1127

__fresh1142:
  br label %__then1128

__then1128:
  %lhs_or_call3846 = load %Number** %x_slot3791
  %vtmp3848 = getelementptr %Number* %lhs_or_call3846, i32 0, i32 0
  %vtable3847 = load %_Number_vtable** %vtmp3848
  %fptmp3849 = getelementptr %_Number_vtable* %vtable3847, i32 0, i32 2
  %method3850 = load i32 (%Number*, %Number*)** %fptmp3849
  %lhs_or_call3845 = load %Number** %ifnull_slot3843
  %ret3851 = call i32 %method3850 ( %Number* %lhs_or_call3846, %Number* %lhs_or_call3845 )
  %bop3852 = icmp slt i32 %ret3851, 0
  br i1 %bop3852, label %__then1125, label %__else1124

__fresh1143:
  br label %__then1125

__then1125:
  %lhs_or_call3853 = load %BSTree** %ifnull_slot3828
  %path3854 = getelementptr %BSTree* %lhs_or_call3853, i32 0, i32 3
  %lhs_or_call3855 = load %BSTree** %vdecl_slot3833
  store %BSTree* %lhs_or_call3855, %BSTree** %path3854
  br label %__merge1123

__fresh1144:
  br label %__else1124

__else1124:
  %lhs_or_call3856 = load %BSTree** %ifnull_slot3828
  %path3857 = getelementptr %BSTree* %lhs_or_call3856, i32 0, i32 4
  %lhs_or_call3858 = load %BSTree** %vdecl_slot3833
  store %BSTree* %lhs_or_call3858, %BSTree** %path3857
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
  %path3859 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %lhs_or_call3860 = load %Number** %x_slot3791
  store %Number* %lhs_or_call3860, %Number** %path3859
  br label %__merge1129

__merge1129:
  ret void
}


define %BSTree* @_BSTree_ctor (%BSTree* %_this1){
__fresh1110:
  %cast_op3778 = bitcast %BSTree* %_this1 to %Object* 
  %dummy3779 = call %Object* @_Object_ctor ( %Object* %cast_op3778 )
  %path3780 = getelementptr %BSTree* %_this1, i32 0, i32 1
  store i8* @_const_str609, i8** %path3780
  %vt_slot3781 = getelementptr %BSTree* %_this1, i32 0, i32 0
  store %_BSTree_vtable* @_BSTree_vtable596, %_BSTree_vtable** %vt_slot3781
  %path3782 = getelementptr %BSTree* %_this1, i32 0, i32 2
  %cast_op3783 = bitcast i8* null to %Number* 
  store %Number* %cast_op3783, %Number** %path3782
  %path3784 = getelementptr %BSTree* %_this1, i32 0, i32 3
  %cast_op3785 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3785, %BSTree** %path3784
  %path3786 = getelementptr %BSTree* %_this1, i32 0, i32 4
  %cast_op3787 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3787, %BSTree** %path3786
  %path3788 = getelementptr %BSTree* %_this1, i32 0, i32 5
  %cast_op3789 = bitcast i8* null to %BSTree* 
  store %BSTree* %cast_op3789, %BSTree** %path3788
  ret %BSTree* %_this1
}


define i1 @ptr_eq (%Object* %a3765, %Object* %b3763){
__fresh1105:
  %a_slot3766 = alloca %Object*
  store %Object* %a3765, %Object** %a_slot3766
  %b_slot3764 = alloca %Object*
  store %Object* %b3763, %Object** %b_slot3764
  %vdecl_slot3767 = alloca i1
  store i1 0, i1* %vdecl_slot3767
  %lhs_or_call3768 = load %Object** %a_slot3766
  %ifnull_slot3769 = alloca %Object*
  store %Object* %lhs_or_call3768, %Object** %ifnull_slot3769
  %ifnull_guard3770 = icmp ne %Object* %lhs_or_call3768, null
  br i1 %ifnull_guard3770, label %__then1104, label %__else1103

__fresh1106:
  br label %__then1104

__then1104:
  %lhs_or_call3771 = load %Object** %b_slot3764
  %ifnull_slot3772 = alloca %Object*
  store %Object* %lhs_or_call3771, %Object** %ifnull_slot3772
  %ifnull_guard3773 = icmp ne %Object* %lhs_or_call3771, null
  br i1 %ifnull_guard3773, label %__then1101, label %__else1100

__fresh1107:
  br label %__then1101

__then1101:
  %lhs_or_call3774 = load %Object** %ifnull_slot3769
  %lhs_or_call3775 = load %Object** %ifnull_slot3772
  %bop3776 = icmp eq %Object* %lhs_or_call3774, %lhs_or_call3775
  store i1 %bop3776, i1* %vdecl_slot3767
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
  %lhs_or_call3777 = load i1* %vdecl_slot3767
  ret i1 %lhs_or_call3777
}


define i32 @abs (i32 %x3754){
__fresh1096:
  %x_slot3755 = alloca i32
  store i32 %x3754, i32* %x_slot3755
  %vdecl_slot3756 = alloca i32
  store i32 0, i32* %vdecl_slot3756
  %lhs_or_call3757 = load i32* %x_slot3755
  %bop3758 = icmp sge i32 %lhs_or_call3757, 0
  br i1 %bop3758, label %__then1095, label %__else1094

__fresh1097:
  br label %__then1095

__then1095:
  %lhs_or_call3759 = load i32* %x_slot3755
  store i32 %lhs_or_call3759, i32* %vdecl_slot3756
  br label %__merge1093

__fresh1098:
  br label %__else1094

__else1094:
  %lhs_or_call3760 = load i32* %x_slot3755
  %unop3761 = sub i32 0, %lhs_or_call3760
  store i32 %unop3761, i32* %vdecl_slot3756
  br label %__merge1093

__merge1093:
  %lhs_or_call3762 = load i32* %vdecl_slot3756
  ret i32 %lhs_or_call3762
}


define i32 @gcd (i32 %a3739, i32 %b3737){
__fresh1090:
  %a_slot3740 = alloca i32
  store i32 %a3739, i32* %a_slot3740
  %b_slot3738 = alloca i32
  store i32 %b3737, i32* %b_slot3738
  %lhs_or_call3741 = load i32* %a_slot3740
  %ret3742 = call i32 @abs ( i32 %lhs_or_call3741 )
  store i32 %ret3742, i32* %a_slot3740
  %lhs_or_call3743 = load i32* %b_slot3738
  %ret3744 = call i32 @abs ( i32 %lhs_or_call3743 )
  store i32 %ret3744, i32* %b_slot3738
  br label %__cond1089

__cond1089:
  %lhs_or_call3745 = load i32* %b_slot3738
  %bop3746 = icmp ne i32 %lhs_or_call3745, 0
  br i1 %bop3746, label %__body1088, label %__post1087

__fresh1091:
  br label %__body1088

__body1088:
  %lhs_or_call3747 = load i32* %b_slot3738
  %lhs_or_call3748 = load i32* %a_slot3740
  %ret3749 = call i32 @oat_mod ( i32 %lhs_or_call3748, i32 %lhs_or_call3747 )
  %vdecl_slot3750 = alloca i32
  store i32 %ret3749, i32* %vdecl_slot3750
  %lhs_or_call3751 = load i32* %b_slot3738
  store i32 %lhs_or_call3751, i32* %a_slot3740
  %lhs_or_call3752 = load i32* %vdecl_slot3750
  store i32 %lhs_or_call3752, i32* %b_slot3738
  br label %__cond1089

__fresh1092:
  br label %__post1087

__post1087:
  %lhs_or_call3753 = load i32* %a_slot3740
  ret i32 %lhs_or_call3753
}


define i8* @_Zero_toString (%Zero* %_this1){
__fresh1086:
  ret i8* @_const_str608
}


define %Quotient* @_Zero_add (%Zero* %_this1, %Quotient* %a3726){
__fresh1085:
  %a_slot3727 = alloca %Quotient*
  store %Quotient* %a3726, %Quotient** %a_slot3727
  %lhs_or_call3728 = load %Quotient** %a_slot3727
  %path3729 = getelementptr %Quotient* %lhs_or_call3728, i32 0, i32 3
  %lhs_or_call3730 = load i32* %path3729
  %lhs_or_call3731 = load %Quotient** %a_slot3727
  %path3732 = getelementptr %Quotient* %lhs_or_call3731, i32 0, i32 2
  %lhs_or_call3733 = load i32* %path3732
  %mem_ptr3734 = call i32* @oat_malloc ( i32 16 )
  %obj3735 = bitcast i32* %mem_ptr3734 to %Quotient* 
  %new_obj3736 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj3735, i32 %lhs_or_call3733, i32 %lhs_or_call3730 )
  ret %Quotient* %new_obj3736
}


define %Zero* @_Zero_ctor (%Zero* %_this1){
__fresh1084:
  %cast_op3722 = bitcast %Zero* %_this1 to %Integer* 
  %dummy3723 = call %Integer* @_Integer_ctor ( %Integer* %cast_op3722, i32 0 )
  %path3724 = getelementptr %Zero* %_this1, i32 0, i32 1
  store i8* @_const_str607, i8** %path3724
  %vt_slot3725 = getelementptr %Zero* %_this1, i32 0, i32 0
  store %_Zero_vtable* @_Zero_vtable595, %_Zero_vtable** %vt_slot3725
  ret %Zero* %_this1
}


define i8* @_Integer_toString (%Integer* %_this1){
__fresh1083:
  %path3719 = getelementptr %Integer* %_this1, i32 0, i32 2
  %lhs_or_call3720 = load i32* %path3719
  %ret3721 = call i8* @string_of_int ( i32 %lhs_or_call3720 )
  ret i8* %ret3721
}


define i32 @_Integer_compareTo (%Integer* %_this1, %Number* %x3693){
__fresh1078:
  %x_slot3694 = alloca %Number*
  store %Number* %x3693, %Number** %x_slot3694
  %vdecl_slot3695 = alloca i32
  store i32 0, i32* %vdecl_slot3695
  %lhs_or_call3696 = load %Number** %x_slot3694
  %cast_op3697 = bitcast %Number* %lhs_or_call3696 to %Integer* 
  %cast_op3698 = bitcast %Integer* %cast_op3697 to i8** 
  %cast_op3699 = bitcast %_Integer_vtable* @_Integer_vtable594 to i8* 
  %vt_ptr_slot3700 = alloca i8*
  %tmp03702 = load i8** %cast_op3698
  store i8* %tmp03702, i8** %vt_ptr_slot3700
  br label %__loop1077

__loop1077:
  %tmp13703 = load i8** %vt_ptr_slot3700
  %guard13707 = icmp eq i8* %tmp13703, %cast_op3699
  br i1 %guard13707, label %__then1074, label %__fall11076

__fresh1079:
  br label %__fall11076

__fall11076:
  %guard23708 = icmp eq i8* %tmp13703, null
  br i1 %guard23708, label %__else1073, label %__fall21075

__fresh1080:
  br label %__fall21075

__fall21075:
  %tmp23704 = load i8** %vt_ptr_slot3700
  %tmp33705 = bitcast i8* %tmp23704 to i8** 
  %tmp43706 = load i8** %tmp33705
  store i8* %tmp43706, i8** %vt_ptr_slot3700
  br label %__loop1077

__fresh1081:
  br label %__then1074

__then1074:
  %var_slot3701 = alloca %Integer*
  store %Integer* %cast_op3697, %Integer** %var_slot3701
  %path3712 = getelementptr %Integer* %_this1, i32 0, i32 2
  %lhs_or_call3713 = load i32* %path3712
  %lhs_or_call3714 = load %Integer** %var_slot3701
  %path3715 = getelementptr %Integer* %lhs_or_call3714, i32 0, i32 2
  %lhs_or_call3716 = load i32* %path3715
  %bop3717 = sub i32 %lhs_or_call3713, %lhs_or_call3716
  store i32 %bop3717, i32* %vdecl_slot3695
  br label %__done1072

__fresh1082:
  br label %__else1073

__else1073:
  %lhs_or_call3709 = load %Number** %x_slot3694
  %cast_op3710 = bitcast %Integer* %_this1 to %Quotient* 
  %ret3711 = call i32 @_Quotient_compareTo ( %Quotient* %cast_op3710, %Number* %lhs_or_call3709 )
  store i32 %ret3711, i32* %vdecl_slot3695
  br label %__done1072

__done1072:
  %lhs_or_call3718 = load i32* %vdecl_slot3695
  ret i32 %lhs_or_call3718
}


define i32 @_Integer_val (%Integer* %_this1){
__fresh1071:
  %vtmp3688 = getelementptr %Integer* %_this1, i32 0, i32 0
  %vtable3687 = load %_Integer_vtable** %vtmp3688
  %fptmp3689 = getelementptr %_Integer_vtable* %vtable3687, i32 0, i32 4
  %method3690 = load i32 (%Quotient*)** %fptmp3689
  %cast_op3691 = bitcast %Integer* %_this1 to %Quotient* 
  %ret3692 = call i32 %method3690 ( %Quotient* %cast_op3691 )
  ret i32 %ret3692
}


define %Integer* @_Integer_ctor (%Integer* %_this1, i32 %x3680){
__fresh1070:
  %x_slot3681 = alloca i32
  store i32 %x3680, i32* %x_slot3681
  %lhs_or_call3682 = load i32* %x_slot3681
  %cast_op3683 = bitcast %Integer* %_this1 to %Quotient* 
  %dummy3684 = call %Quotient* @_Quotient_ctor ( %Quotient* %cast_op3683, i32 %lhs_or_call3682, i32 1 )
  %path3685 = getelementptr %Integer* %_this1, i32 0, i32 1
  store i8* @_const_str606, i8** %path3685
  %vt_slot3686 = getelementptr %Integer* %_this1, i32 0, i32 0
  store %_Integer_vtable* @_Integer_vtable594, %_Integer_vtable** %vt_slot3686
  ret %Integer* %_this1
}


define i8* @_Quotient_toString (%Quotient* %_this1){
__fresh1069:
  %path3672 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3673 = load i32* %path3672
  %ret3674 = call i8* @string_of_int ( i32 %lhs_or_call3673 )
  %path3675 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3676 = load i32* %path3675
  %ret3677 = call i8* @string_of_int ( i32 %lhs_or_call3676 )
  %ret3678 = call i8* @string_cat ( i8* %ret3677, i8* @_const_str605 )
  %ret3679 = call i8* @string_cat ( i8* %ret3678, i8* %ret3674 )
  ret i8* %ret3679
}


define i32 @_Quotient_compareTo (%Quotient* %_this1, %Number* %x3639){
__fresh1064:
  %x_slot3640 = alloca %Number*
  store %Number* %x3639, %Number** %x_slot3640
  %vdecl_slot3641 = alloca i32
  store i32 0, i32* %vdecl_slot3641
  %lhs_or_call3642 = load %Number** %x_slot3640
  %cast_op3643 = bitcast %Number* %lhs_or_call3642 to %Quotient* 
  %cast_op3644 = bitcast %Quotient* %cast_op3643 to i8** 
  %cast_op3645 = bitcast %_Quotient_vtable* @_Quotient_vtable593 to i8* 
  %vt_ptr_slot3646 = alloca i8*
  %tmp03648 = load i8** %cast_op3644
  store i8* %tmp03648, i8** %vt_ptr_slot3646
  br label %__loop1063

__loop1063:
  %tmp13649 = load i8** %vt_ptr_slot3646
  %guard13653 = icmp eq i8* %tmp13649, %cast_op3645
  br i1 %guard13653, label %__then1060, label %__fall11062

__fresh1065:
  br label %__fall11062

__fall11062:
  %guard23654 = icmp eq i8* %tmp13649, null
  br i1 %guard23654, label %__else1059, label %__fall21061

__fresh1066:
  br label %__fall21061

__fall21061:
  %tmp23650 = load i8** %vt_ptr_slot3646
  %tmp33651 = bitcast i8* %tmp23650 to i8** 
  %tmp43652 = load i8** %tmp33651
  store i8* %tmp43652, i8** %vt_ptr_slot3646
  br label %__loop1063

__fresh1067:
  br label %__then1060

__then1060:
  %var_slot3647 = alloca %Quotient*
  store %Quotient* %cast_op3643, %Quotient** %var_slot3647
  %path3658 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3659 = load i32* %path3658
  %lhs_or_call3660 = load %Quotient** %var_slot3647
  %path3661 = getelementptr %Quotient* %lhs_or_call3660, i32 0, i32 3
  %lhs_or_call3662 = load i32* %path3661
  %bop3663 = mul i32 %lhs_or_call3659, %lhs_or_call3662
  %path3664 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3665 = load i32* %path3664
  %lhs_or_call3666 = load %Quotient** %var_slot3647
  %path3667 = getelementptr %Quotient* %lhs_or_call3666, i32 0, i32 2
  %lhs_or_call3668 = load i32* %path3667
  %bop3669 = mul i32 %lhs_or_call3665, %lhs_or_call3668
  %bop3670 = sub i32 %bop3663, %bop3669
  store i32 %bop3670, i32* %vdecl_slot3641
  br label %__done1058

__fresh1068:
  br label %__else1059

__else1059:
  %lhs_or_call3655 = load %Number** %x_slot3640
  %cast_op3656 = bitcast %Quotient* %_this1 to %Number* 
  %ret3657 = call i32 @_Number_compareTo ( %Number* %cast_op3656, %Number* %lhs_or_call3655 )
  store i32 %ret3657, i32* %vdecl_slot3641
  br label %__done1058

__done1058:
  %lhs_or_call3671 = load i32* %vdecl_slot3641
  ret i32 %lhs_or_call3671
}


define i32 @_Quotient_mod (%Quotient* %_this1){
__fresh1057:
  %vtmp3629 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3628 = load %_Quotient_vtable** %vtmp3629
  %fptmp3630 = getelementptr %_Quotient_vtable* %vtable3628, i32 0, i32 5
  %method3631 = load i32 (%Quotient*)** %fptmp3630
  %ret3632 = call i32 %method3631 ( %Quotient* %_this1 )
  %vtmp3634 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3633 = load %_Quotient_vtable** %vtmp3634
  %fptmp3635 = getelementptr %_Quotient_vtable* %vtable3633, i32 0, i32 4
  %method3636 = load i32 (%Quotient*)** %fptmp3635
  %ret3637 = call i32 %method3636 ( %Quotient* %_this1 )
  %ret3638 = call i32 @oat_mod ( i32 %ret3637, i32 %ret3632 )
  ret i32 %ret3638
}


define i32 @_Quotient_div (%Quotient* %_this1){
__fresh1056:
  %vtmp3618 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3617 = load %_Quotient_vtable** %vtmp3618
  %fptmp3619 = getelementptr %_Quotient_vtable* %vtable3617, i32 0, i32 5
  %method3620 = load i32 (%Quotient*)** %fptmp3619
  %ret3621 = call i32 %method3620 ( %Quotient* %_this1 )
  %vtmp3623 = getelementptr %Quotient* %_this1, i32 0, i32 0
  %vtable3622 = load %_Quotient_vtable** %vtmp3623
  %fptmp3624 = getelementptr %_Quotient_vtable* %vtable3622, i32 0, i32 4
  %method3625 = load i32 (%Quotient*)** %fptmp3624
  %ret3626 = call i32 %method3625 ( %Quotient* %_this1 )
  %ret3627 = call i32 @oat_div ( i32 %ret3626, i32 %ret3621 )
  ret i32 %ret3627
}


define %Quotient* @_Quotient_add (%Quotient* %_this1, %Quotient* %a3580){
__fresh1055:
  %a_slot3581 = alloca %Quotient*
  store %Quotient* %a3580, %Quotient** %a_slot3581
  %lhs_or_call3582 = load %Quotient** %a_slot3581
  %path3583 = getelementptr %Quotient* %lhs_or_call3582, i32 0, i32 3
  %lhs_or_call3584 = load i32* %path3583
  %path3585 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3586 = load i32* %path3585
  %ret3587 = call i32 @gcd ( i32 %lhs_or_call3586, i32 %lhs_or_call3584 )
  %vdecl_slot3588 = alloca i32
  store i32 %ret3587, i32* %vdecl_slot3588
  %lhs_or_call3589 = load i32* %vdecl_slot3588
  %lhs_or_call3590 = load %Quotient** %a_slot3581
  %path3591 = getelementptr %Quotient* %lhs_or_call3590, i32 0, i32 3
  %lhs_or_call3592 = load i32* %path3591
  %ret3593 = call i32 @oat_div ( i32 %lhs_or_call3592, i32 %lhs_or_call3589 )
  %path3594 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3595 = load i32* %path3594
  %bop3596 = mul i32 %ret3593, %lhs_or_call3595
  %lhs_or_call3597 = load i32* %vdecl_slot3588
  %lhs_or_call3598 = load %Quotient** %a_slot3581
  %path3599 = getelementptr %Quotient* %lhs_or_call3598, i32 0, i32 3
  %lhs_or_call3600 = load i32* %path3599
  %ret3601 = call i32 @oat_div ( i32 %lhs_or_call3600, i32 %lhs_or_call3597 )
  %path3602 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3603 = load i32* %path3602
  %bop3604 = mul i32 %ret3601, %lhs_or_call3603
  %lhs_or_call3605 = load i32* %vdecl_slot3588
  %path3606 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3607 = load i32* %path3606
  %ret3608 = call i32 @oat_div ( i32 %lhs_or_call3607, i32 %lhs_or_call3605 )
  %lhs_or_call3609 = load %Quotient** %a_slot3581
  %path3610 = getelementptr %Quotient* %lhs_or_call3609, i32 0, i32 2
  %lhs_or_call3611 = load i32* %path3610
  %bop3612 = mul i32 %ret3608, %lhs_or_call3611
  %bop3613 = add i32 %bop3604, %bop3612
  %mem_ptr3614 = call i32* @oat_malloc ( i32 16 )
  %obj3615 = bitcast i32* %mem_ptr3614 to %Quotient* 
  %new_obj3616 = call %Quotient* @_Quotient_ctor ( %Quotient* %obj3615, i32 %bop3613, i32 %bop3596 )
  ret %Quotient* %new_obj3616
}


define i32 @_Quotient_denom (%Quotient* %_this1){
__fresh1054:
  %path3578 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3579 = load i32* %path3578
  ret i32 %lhs_or_call3579
}


define i32 @_Quotient_num (%Quotient* %_this1){
__fresh1053:
  %path3576 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3577 = load i32* %path3576
  ret i32 %lhs_or_call3577
}


define %Quotient* @_Quotient_ctor (%Quotient* %_this1, i32 %n3548, i32 %d3546){
__fresh1048:
  %n_slot3549 = alloca i32
  store i32 %n3548, i32* %n_slot3549
  %d_slot3547 = alloca i32
  store i32 %d3546, i32* %d_slot3547
  %cast_op3550 = bitcast %Quotient* %_this1 to %Number* 
  %dummy3551 = call %Number* @_Number_ctor ( %Number* %cast_op3550 )
  %path3552 = getelementptr %Quotient* %_this1, i32 0, i32 1
  store i8* @_const_str603, i8** %path3552
  %vt_slot3553 = getelementptr %Quotient* %_this1, i32 0, i32 0
  store %_Quotient_vtable* @_Quotient_vtable593, %_Quotient_vtable** %vt_slot3553
  %lhs_or_call3554 = load i32* %d_slot3547
  %lhs_or_call3555 = load i32* %n_slot3549
  %ret3556 = call i32 @gcd ( i32 %lhs_or_call3555, i32 %lhs_or_call3554 )
  %vdecl_slot3557 = alloca i32
  store i32 %ret3556, i32* %vdecl_slot3557
  %lhs_or_call3558 = load i32* %d_slot3547
  %bop3559 = icmp eq i32 %lhs_or_call3558, 0
  br i1 %bop3559, label %__then1044, label %__else1043

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
  %lhs_or_call3560 = load i32* %vdecl_slot3557
  %lhs_or_call3561 = load i32* %n_slot3549
  %ret3562 = call i32 @oat_div ( i32 %lhs_or_call3561, i32 %lhs_or_call3560 )
  store i32 %ret3562, i32* %n_slot3549
  %lhs_or_call3563 = load i32* %vdecl_slot3557
  %lhs_or_call3564 = load i32* %d_slot3547
  %ret3565 = call i32 @oat_div ( i32 %lhs_or_call3564, i32 %lhs_or_call3563 )
  store i32 %ret3565, i32* %d_slot3547
  %lhs_or_call3566 = load i32* %d_slot3547
  %bop3567 = icmp slt i32 %lhs_or_call3566, 0
  br i1 %bop3567, label %__then1047, label %__else1046

__fresh1051:
  br label %__then1047

__then1047:
  %lhs_or_call3568 = load i32* %n_slot3549
  %unop3569 = sub i32 0, %lhs_or_call3568
  store i32 %unop3569, i32* %n_slot3549
  %lhs_or_call3570 = load i32* %d_slot3547
  %unop3571 = sub i32 0, %lhs_or_call3570
  store i32 %unop3571, i32* %d_slot3547
  br label %__merge1045

__fresh1052:
  br label %__else1046

__else1046:
  br label %__merge1045

__merge1045:
  %path3572 = getelementptr %Quotient* %_this1, i32 0, i32 2
  %lhs_or_call3573 = load i32* %n_slot3549
  store i32 %lhs_or_call3573, i32* %path3572
  %path3574 = getelementptr %Quotient* %_this1, i32 0, i32 3
  %lhs_or_call3575 = load i32* %d_slot3547
  store i32 %lhs_or_call3575, i32* %path3574
  ret %Quotient* %_this1
}


define i8* @_Number_toString (%Number* %_this1){
__fresh1041:
  call void @print_string( i8* @_const_str601 )
  call void @oat_abort( i32 -1 )
  ret i8* @_const_str602
}


define i32 @_Number_compareTo (%Number* %_this1, %Number* %a3544){
__fresh1040:
  %a_slot3545 = alloca %Number*
  store %Number* %a3544, %Number** %a_slot3545
  call void @print_string( i8* @_const_str600 )
  call void @oat_abort( i32 -1 )
  ret i32 0
}


define %Number* @_Number_ctor (%Number* %_this1){
__fresh1039:
  %cast_op3540 = bitcast %Number* %_this1 to %Object* 
  %dummy3541 = call %Object* @_Object_ctor ( %Object* %cast_op3540 )
  %path3542 = getelementptr %Number* %_this1, i32 0, i32 1
  store i8* @_const_str599, i8** %path3542
  %vt_slot3543 = getelementptr %Number* %_this1, i32 0, i32 0
  store %_Number_vtable* @_Number_vtable592, %_Number_vtable** %vt_slot3543
  ret %Number* %_this1
}


define i1 @equals (%Object* %o13535, %Object* %o23533){
__fresh1038:
  %o1_slot3536 = alloca %Object*
  store %Object* %o13535, %Object** %o1_slot3536
  %o2_slot3534 = alloca %Object*
  store %Object* %o23533, %Object** %o2_slot3534
  %lhs_or_call3537 = load %Object** %o1_slot3536
  %lhs_or_call3538 = load %Object** %o2_slot3534
  %bop3539 = icmp eq %Object* %lhs_or_call3537, %lhs_or_call3538
  ret i1 %bop3539
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1037:
  %path3531 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3532 = load i8** %path3531
  ret i8* %lhs_or_call3532
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1036:
  %path3529 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str598, i8** %path3529
  %vt_slot3530 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable591, %_Object_vtable** %vt_slot3530
  ret %Object* %_this1
}



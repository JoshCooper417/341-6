%Point = type { %_Point_vtable*, i8*, i32, i32 }
%_Point_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Point* (%Point*, i32, i32)* }
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
@_const_str523.str. = private unnamed_addr constant [ 6 x i8 ] c "Point\00", align 4
@_const_str523 = alias bitcast([ 6 x i8 ]* @_const_str523.str. to i8*)@_const_str522.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str522 = alias bitcast([ 7 x i8 ]* @_const_str522.str. to i8*)@_Point_vtable521 = private constant %_Point_vtable {%_Object_vtable* @_Object_vtable520, i8* (%Object*)* @_Object_get_name, %Point* (%Point*, i32, i32)* @_Point_move}, align 4
@_Object_vtable520 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh800:
  ret void
}


define i32 @program (i32 %argc2902, { i32, [ 0 x i8* ] }* %argv2900){
__fresh799:
  %argc_slot2903 = alloca i32
  store i32 %argc2902, i32* %argc_slot2903
  %argv_slot2901 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2900, { i32, [ 0 x i8* ] }** %argv_slot2901
  %mem_ptr2904 = call i32* @oat_malloc ( i32 16 )
  %obj2905 = bitcast i32* %mem_ptr2904 to %Point* 
  %new_obj2906 = call %Point* @_Point_ctor ( %Point* %obj2905 )
  %vdecl_slot2907 = alloca %Point*
  store %Point* %new_obj2906, %Point** %vdecl_slot2907
  %lhs_or_call2908 = load %Point** %vdecl_slot2907
  %vtmp2910 = getelementptr %Point* %lhs_or_call2908, i32 0, i32 0
  %vtable2909 = load %_Point_vtable** %vtmp2910
  %fptmp2911 = getelementptr %_Point_vtable* %vtable2909, i32 0, i32 2
  %method2912 = load %Point* (%Point*, i32, i32)** %fptmp2911
  %ret2913 = call %Point* %method2912 ( %Point* %lhs_or_call2908, i32 3, i32 4 )
  %vdecl_slot2914 = alloca %Point*
  store %Point* %ret2913, %Point** %vdecl_slot2914
  %lhs_or_call2915 = load %Point** %vdecl_slot2914
  %path2916 = getelementptr %Point* %lhs_or_call2915, i32 0, i32 2
  %lhs_or_call2917 = load i32* %path2916
  ret i32 %lhs_or_call2917
}


define %Point* @_Point_move (%Point* %_this1, i32 %dx2888, i32 %dy2886){
__fresh798:
  %dx_slot2889 = alloca i32
  store i32 %dx2888, i32* %dx_slot2889
  %dy_slot2887 = alloca i32
  store i32 %dy2886, i32* %dy_slot2887
  %path2890 = getelementptr %Point* %_this1, i32 0, i32 2
  %path2891 = getelementptr %Point* %_this1, i32 0, i32 2
  %lhs_or_call2892 = load i32* %path2891
  %lhs_or_call2893 = load i32* %dx_slot2889
  %bop2894 = add i32 %lhs_or_call2892, %lhs_or_call2893
  store i32 %bop2894, i32* %path2890
  %path2895 = getelementptr %Point* %_this1, i32 0, i32 3
  %path2896 = getelementptr %Point* %_this1, i32 0, i32 3
  %lhs_or_call2897 = load i32* %path2896
  %lhs_or_call2898 = load i32* %dy_slot2887
  %bop2899 = add i32 %lhs_or_call2897, %lhs_or_call2898
  store i32 %bop2899, i32* %path2895
  ret %Point* %_this1
}


define %Point* @_Point_ctor (%Point* %_this1){
__fresh797:
  %cast_op2880 = bitcast %Point* %_this1 to %Object* 
  %dummy2881 = call %Object* @_Object_ctor ( %Object* %cast_op2880 )
  %path2882 = getelementptr %Point* %_this1, i32 0, i32 1
  store i8* @_const_str523, i8** %path2882
  %vt_slot2883 = getelementptr %Point* %_this1, i32 0, i32 0
  store %_Point_vtable* @_Point_vtable521, %_Point_vtable** %vt_slot2883
  %path2884 = getelementptr %Point* %_this1, i32 0, i32 2
  store i32 0, i32* %path2884
  %path2885 = getelementptr %Point* %_this1, i32 0, i32 3
  store i32 0, i32* %path2885
  ret %Point* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh796:
  %path2878 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2879 = load i8** %path2878
  ret i8* %lhs_or_call2879
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh795:
  %path2876 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str522, i8** %path2876
  %vt_slot2877 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable520, %_Object_vtable** %vt_slot2877
  ret %Object* %_this1
}



%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str544 = alias bitcast([ 2 x i8 ]* @_const_str544.str. to i8*)@_const_str543.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str543 = alias bitcast([ 2 x i8 ]* @_const_str543.str. to i8*)@_const_str542.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str542 = alias bitcast([ 7 x i8 ]* @_const_str542.str. to i8*)@_C_vtable541 = private constant %_C_vtable {%_B_vtable* @_B_vtable540, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable540 = private constant %_B_vtable {%_A_vtable* @_A_vtable539, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable539 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable538, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable538 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh910:
  ret void
}


define i32 @program (i32 %argc3111, { i32, [ 0 x i8* ] }* %argv3109){
__fresh909:
  %argc_slot3112 = alloca i32
  store i32 %argc3111, i32* %argc_slot3112
  %argv_slot3110 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3109, { i32, [ 0 x i8* ] }** %argv_slot3110
  %mem_ptr3113 = call i32* @oat_malloc ( i32 8 )
  %obj3114 = bitcast i32* %mem_ptr3113 to %C* 
  %new_obj3115 = call %C* @_C_ctor ( %C* %obj3114 )
  %vdecl_slot3116 = alloca %C*
  store %C* %new_obj3115, %C** %vdecl_slot3116
  %lhs_or_call3117 = load %C** %vdecl_slot3116
  %vtmp3119 = getelementptr %C* %lhs_or_call3117, i32 0, i32 0
  %vtable3118 = load %_C_vtable** %vtmp3119
  %fptmp3120 = getelementptr %_C_vtable* %vtable3118, i32 0, i32 2
  %method3121 = load i32 (%C*)** %fptmp3120
  %ret3122 = call i32 %method3121 ( %C* %lhs_or_call3117 )
  ret i32 %ret3122
}


define i32 @_C_six (%C* %_this1){
__fresh908:
  %cast_op3106 = bitcast %C* %_this1 to %B* 
  %ret3107 = call i32 @_B_six ( %B* %cast_op3106 )
  %bop3108 = add i32 %ret3107, 3
  ret i32 %bop3108
}


define %C* @_C_ctor (%C* %_this1){
__fresh907:
  %cast_op3102 = bitcast %C* %_this1 to %B* 
  %dummy3103 = call %B* @_B_ctor ( %B* %cast_op3102 )
  %path3104 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str545, i8** %path3104
  %vt_slot3105 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable541, %_C_vtable** %vt_slot3105
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh906:
  %cast_op3099 = bitcast %B* %_this1 to %A* 
  %ret3100 = call i32 @_A_six ( %A* %cast_op3099 )
  %bop3101 = add i32 %ret3100, 2
  ret i32 %bop3101
}


define %B* @_B_ctor (%B* %_this1){
__fresh905:
  %cast_op3095 = bitcast %B* %_this1 to %A* 
  %dummy3096 = call %A* @_A_ctor ( %A* %cast_op3095 )
  %path3097 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %path3097
  %vt_slot3098 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable540, %_B_vtable** %vt_slot3098
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh904:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh903:
  %cast_op3091 = bitcast %A* %_this1 to %Object* 
  %dummy3092 = call %Object* @_Object_ctor ( %Object* %cast_op3091 )
  %path3093 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %path3093
  %vt_slot3094 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable539, %_A_vtable** %vt_slot3094
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh902:
  %path3089 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3090 = load i8** %path3089
  ret i8* %lhs_or_call3090
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh901:
  %path3087 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str542, i8** %path3087
  %vt_slot3088 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable538, %_Object_vtable** %vt_slot3088
  ret %Object* %_this1
}



%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)*, void (%A*)* }
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
@_const_str556.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str556 = alias bitcast([ 2 x i8 ]* @_const_str556.str. to i8*)@_const_str555.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str555 = alias bitcast([ 2 x i8 ]* @_const_str555.str. to i8*)@_const_str554.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str554 = alias bitcast([ 2 x i8 ]* @_const_str554.str. to i8*)@_const_str553.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str553 = alias bitcast([ 2 x i8 ]* @_const_str553.str. to i8*)@_const_str552.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str552 = alias bitcast([ 2 x i8 ]* @_const_str552.str. to i8*)@_const_str551.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str551 = alias bitcast([ 2 x i8 ]* @_const_str551.str. to i8*)@_const_str550.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str550 = alias bitcast([ 7 x i8 ]* @_const_str550.str. to i8*)@_C_vtable549 = private constant %_C_vtable {%_B_vtable* @_B_vtable548, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six, void (%C*)* @_C_f}, align 4
@_B_vtable548 = private constant %_B_vtable {%_A_vtable* @_A_vtable547, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six, void (%B*)* @_B_f}, align 4
@_A_vtable547 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable546, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six, void (%A*)* @_A_f}, align 4
@_Object_vtable546 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh923:
  ret void
}


define i32 @program (i32 %argc3147, { i32, [ 0 x i8* ] }* %argv3145){
__fresh922:
  %argc_slot3148 = alloca i32
  store i32 %argc3147, i32* %argc_slot3148
  %argv_slot3146 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3145, { i32, [ 0 x i8* ] }** %argv_slot3146
  %mem_ptr3149 = call i32* @oat_malloc ( i32 8 )
  %obj3150 = bitcast i32* %mem_ptr3149 to %C* 
  %new_obj3151 = call %C* @_C_ctor ( %C* %obj3150 )
  %vdecl_slot3152 = alloca %C*
  store %C* %new_obj3151, %C** %vdecl_slot3152
  %lhs_or_call3153 = load %C** %vdecl_slot3152
  %vtmp3155 = getelementptr %C* %lhs_or_call3153, i32 0, i32 0
  %vtable3154 = load %_C_vtable** %vtmp3155
  %fptmp3156 = getelementptr %_C_vtable* %vtable3154, i32 0, i32 2
  %method3157 = load i32 (%C*)** %fptmp3156
  %ret3158 = call i32 %method3157 ( %C* %lhs_or_call3153 )
  %vdecl_slot3159 = alloca i32
  store i32 %ret3158, i32* %vdecl_slot3159
  %lhs_or_call3160 = load %C** %vdecl_slot3152
  %vtmp3162 = getelementptr %C* %lhs_or_call3160, i32 0, i32 0
  %vtable3161 = load %_C_vtable** %vtmp3162
  %fptmp3163 = getelementptr %_C_vtable* %vtable3161, i32 0, i32 3
  %method3164 = load void (%C*)** %fptmp3163
  call void %method3164( %C* %lhs_or_call3160 )
  %lhs_or_call3165 = load i32* %vdecl_slot3159
  ret i32 %lhs_or_call3165
}


define void @_C_f (%C* %_this1){
__fresh921:
  call void @print_string( i8* @_const_str556 )
  ret void
}


define i32 @_C_six (%C* %_this1){
__fresh920:
  %cast_op3142 = bitcast %C* %_this1 to %B* 
  %ret3143 = call i32 @_B_six ( %B* %cast_op3142 )
  %bop3144 = add i32 %ret3143, 3
  ret i32 %bop3144
}


define %C* @_C_ctor (%C* %_this1){
__fresh919:
  %cast_op3138 = bitcast %C* %_this1 to %B* 
  %dummy3139 = call %B* @_B_ctor ( %B* %cast_op3138 )
  %path3140 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str555, i8** %path3140
  %vt_slot3141 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable549, %_C_vtable** %vt_slot3141
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh918:
  call void @print_string( i8* @_const_str554 )
  ret void
}


define i32 @_B_six (%B* %_this1){
__fresh917:
  %cast_op3135 = bitcast %B* %_this1 to %A* 
  %ret3136 = call i32 @_A_six ( %A* %cast_op3135 )
  %bop3137 = add i32 %ret3136, 2
  ret i32 %bop3137
}


define %B* @_B_ctor (%B* %_this1){
__fresh916:
  %cast_op3131 = bitcast %B* %_this1 to %A* 
  %dummy3132 = call %A* @_A_ctor ( %A* %cast_op3131 )
  %path3133 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str553, i8** %path3133
  %vt_slot3134 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable548, %_B_vtable** %vt_slot3134
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh915:
  call void @print_string( i8* @_const_str552 )
  ret void
}


define i32 @_A_six (%A* %_this1){
__fresh914:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh913:
  %cast_op3127 = bitcast %A* %_this1 to %Object* 
  %dummy3128 = call %Object* @_Object_ctor ( %Object* %cast_op3127 )
  %path3129 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str551, i8** %path3129
  %vt_slot3130 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable547, %_A_vtable** %vt_slot3130
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh912:
  %path3125 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3126 = load i8** %path3125
  ret i8* %lhs_or_call3126
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh911:
  %path3123 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str550, i8** %path3123
  %vt_slot3124 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable546, %_Object_vtable** %vt_slot3124
  ret %Object* %_this1
}



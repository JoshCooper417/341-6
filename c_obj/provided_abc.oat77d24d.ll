%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str566.str. = private unnamed_addr constant [ 3 x i8 ] c "C2\00", align 4
@_const_str566 = alias bitcast([ 3 x i8 ]* @_const_str566.str. to i8*)@_const_str565.str. = private unnamed_addr constant [ 3 x i8 ] c "C1\00", align 4
@_const_str565 = alias bitcast([ 3 x i8 ]* @_const_str565.str. to i8*)@_const_str564.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str564 = alias bitcast([ 2 x i8 ]* @_const_str564.str. to i8*)@_const_str563.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str563 = alias bitcast([ 2 x i8 ]* @_const_str563.str. to i8*)@_const_str562.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str562 = alias bitcast([ 7 x i8 ]* @_const_str562.str. to i8*)@_C2_vtable561 = private constant %_C2_vtable {%_B_vtable* @_B_vtable559, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable560 = private constant %_C1_vtable {%_B_vtable* @_B_vtable559, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable559 = private constant %_B_vtable {%_A_vtable* @_A_vtable558, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable558 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable557, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable557 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh931:
  ret void
}


define i32 @program (i32 %argc3188, { i32, [ 0 x i8* ] }* %argv3186){
__fresh930:
  %argc_slot3189 = alloca i32
  store i32 %argc3188, i32* %argc_slot3189
  %argv_slot3187 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3186, { i32, [ 0 x i8* ] }** %argv_slot3187
  %mem_ptr3190 = call i32* @oat_malloc ( i32 8 )
  %obj3191 = bitcast i32* %mem_ptr3190 to %A* 
  %new_obj3192 = call %A* @_A_ctor ( %A* %obj3191 )
  %vdecl_slot3193 = alloca %A*
  store %A* %new_obj3192, %A** %vdecl_slot3193
  %mem_ptr3194 = call i32* @oat_malloc ( i32 8 )
  %obj3195 = bitcast i32* %mem_ptr3194 to %B* 
  %new_obj3196 = call %B* @_B_ctor ( %B* %obj3195 )
  %vdecl_slot3197 = alloca %B*
  store %B* %new_obj3196, %B** %vdecl_slot3197
  %mem_ptr3198 = call i32* @oat_malloc ( i32 8 )
  %obj3199 = bitcast i32* %mem_ptr3198 to %C1* 
  %new_obj3200 = call %C1* @_C1_ctor ( %C1* %obj3199 )
  %vdecl_slot3201 = alloca %C1*
  store %C1* %new_obj3200, %C1** %vdecl_slot3201
  %mem_ptr3202 = call i32* @oat_malloc ( i32 8 )
  %obj3203 = bitcast i32* %mem_ptr3202 to %C2* 
  %new_obj3204 = call %C2* @_C2_ctor ( %C2* %obj3203 )
  %vdecl_slot3205 = alloca %C2*
  store %C2* %new_obj3204, %C2** %vdecl_slot3205
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh929:
  %cast_op3182 = bitcast %C2* %_this1 to %B* 
  %dummy3183 = call %B* @_B_ctor ( %B* %cast_op3182 )
  %path3184 = getelementptr %C2* %_this1, i32 0, i32 1
  store i8* @_const_str566, i8** %path3184
  %vt_slot3185 = getelementptr %C2* %_this1, i32 0, i32 0
  store %_C2_vtable* @_C2_vtable561, %_C2_vtable** %vt_slot3185
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh928:
  %cast_op3178 = bitcast %C1* %_this1 to %B* 
  %dummy3179 = call %B* @_B_ctor ( %B* %cast_op3178 )
  %path3180 = getelementptr %C1* %_this1, i32 0, i32 1
  store i8* @_const_str565, i8** %path3180
  %vt_slot3181 = getelementptr %C1* %_this1, i32 0, i32 0
  store %_C1_vtable* @_C1_vtable560, %_C1_vtable** %vt_slot3181
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh927:
  %cast_op3174 = bitcast %B* %_this1 to %A* 
  %dummy3175 = call %A* @_A_ctor ( %A* %cast_op3174 )
  %path3176 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str564, i8** %path3176
  %vt_slot3177 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable559, %_B_vtable** %vt_slot3177
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh926:
  %cast_op3170 = bitcast %A* %_this1 to %Object* 
  %dummy3171 = call %Object* @_Object_ctor ( %Object* %cast_op3170 )
  %path3172 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str563, i8** %path3172
  %vt_slot3173 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable558, %_A_vtable** %vt_slot3173
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh925:
  %path3168 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3169 = load i8** %path3168
  ret i8* %lhs_or_call3169
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh924:
  %path3166 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str562, i8** %path3166
  %vt_slot3167 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable557, %_Object_vtable** %vt_slot3167
  ret %Object* %_this1
}



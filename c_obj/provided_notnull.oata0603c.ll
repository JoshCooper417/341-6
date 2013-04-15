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
@_const_str584.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_const_str584 = alias bitcast([ 6 x i8 ]* @_const_str584.str. to i8*)@_const_str583.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str583 = alias bitcast([ 7 x i8 ]* @_const_str583.str. to i8*)@_Object_vtable582 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh995:
  ret void
}


define i32 @program (i32 %argc3322, { i32, [ 0 x i8* ] }* %argv3320){
__fresh990:
  %argc_slot3323 = alloca i32
  store i32 %argc3322, i32* %argc_slot3323
  %argv_slot3321 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3320, { i32, [ 0 x i8* ] }** %argv_slot3321
  %vdecl_slot3324 = alloca i8*
  store i8* null, i8** %vdecl_slot3324
  %vdecl_slot3325 = alloca i8*
  store i8* @_const_str584, i8** %vdecl_slot3325
  %vdecl_slot3326 = alloca i8*
  store i8* null, i8** %vdecl_slot3326
  %vdecl_slot3327 = alloca i32
  store i32 0, i32* %vdecl_slot3327
  %lhs_or_call3328 = load i8** %vdecl_slot3324
  %ifnull_slot3329 = alloca i8*
  store i8* %lhs_or_call3328, i8** %ifnull_slot3329
  %ifnull_guard3330 = icmp ne i8* %lhs_or_call3328, null
  br i1 %ifnull_guard3330, label %__then986, label %__else985

__fresh991:
  br label %__then986

__then986:
  %lhs_or_call3331 = load i8** %ifnull_slot3329
  call void @print_string( i8* %lhs_or_call3331 )
  %lhs_or_call3332 = load i32* %vdecl_slot3327
  %bop3333 = add i32 %lhs_or_call3332, 2
  store i32 %bop3333, i32* %vdecl_slot3327
  %lhs_or_call3334 = load i8** %vdecl_slot3324
  store i8* %lhs_or_call3334, i8** %vdecl_slot3326
  br label %__merge984

__fresh992:
  br label %__else985

__else985:
  br label %__merge984

__merge984:
  %lhs_or_call3335 = load i8** %vdecl_slot3325
  %ifnull_slot3336 = alloca i8*
  store i8* %lhs_or_call3335, i8** %ifnull_slot3336
  %ifnull_guard3337 = icmp ne i8* %lhs_or_call3335, null
  br i1 %ifnull_guard3337, label %__then989, label %__else988

__fresh993:
  br label %__then989

__then989:
  %lhs_or_call3338 = load i8** %ifnull_slot3336
  call void @print_string( i8* %lhs_or_call3338 )
  %lhs_or_call3339 = load i32* %vdecl_slot3327
  %bop3340 = add i32 %lhs_or_call3339, 40
  store i32 %bop3340, i32* %vdecl_slot3327
  %lhs_or_call3341 = load i8** %vdecl_slot3324
  store i8* %lhs_or_call3341, i8** %vdecl_slot3326
  br label %__merge987

__fresh994:
  br label %__else988

__else988:
  br label %__merge987

__merge987:
  %lhs_or_call3342 = load i32* %vdecl_slot3327
  ret i32 %lhs_or_call3342
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh983:
  %path3318 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3319 = load i8** %path3318
  ret i8* %lhs_or_call3319
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh982:
  %path3316 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str583, i8** %path3316
  %vt_slot3317 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable582, %_Object_vtable** %vt_slot3317
  ret %Object* %_this1
}



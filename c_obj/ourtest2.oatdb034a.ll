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
@_const_str2.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str2 = alias bitcast([ 7 x i8 ]* @_const_str2.str. to i8*)@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh3:
  ret void
}


define i32 @program (i32 %argc8, { i32, [ 0 x i8* ] }* %argv6){
__fresh2:
  %argc_slot9 = alloca i32
  store i32 %argc8, i32* %argc_slot9
  %argv_slot7 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6, { i32, [ 0 x i8* ] }** %argv_slot7
  %vdecl_slot10 = alloca i1
  store i1 1, i1* %vdecl_slot10
  ret i32 4
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %path4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %path4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %path2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str2, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}



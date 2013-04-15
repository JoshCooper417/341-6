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
@_const_str707.str. = private unnamed_addr constant [ 10 x i8 ] c "Dead code\00", align 4
@_const_str707 = alias bitcast([ 10 x i8 ]* @_const_str707.str. to i8*)@_const_str706.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str706 = alias bitcast([ 7 x i8 ]* @_const_str706.str. to i8*)@_Object_vtable705 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1999:
  ret void
}


define i32 @program (i32 %argc6162, { i32, [ 0 x i8* ] }* %argv6160){
__fresh1996:
  %argc_slot6163 = alloca i32
  store i32 %argc6162, i32* %argc_slot6163
  %argv_slot6161 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6160, { i32, [ 0 x i8* ] }** %argv_slot6161
  %vdecl_slot6164 = alloca i32
  store i32 1, i32* %vdecl_slot6164
  br i1 0, label %__then1995, label %__else1994

__fresh1997:
  br label %__then1995

__then1995:
  call void @print_string( i8* @_const_str707 )
  call void @oat_abort( i32 -1 )
  br label %__merge1993

__fresh1998:
  br label %__else1994

__else1994:
  br label %__merge1993

__merge1993:
  ret i32 4
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1992:
  %path6158 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call6159 = load i8** %path6158
  ret i8* %lhs_or_call6159
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1991:
  %path6156 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str706, i8** %path6156
  %vt_slot6157 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable705, %_Object_vtable** %vt_slot6157
  ret %Object* %_this1
}



%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_const_str7.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str7 = alias bitcast([ 7 x i8 ]* @_const_str7.str. to i8*)@global26 = global i32 0, align 4
@global15 = global i32 0, align 4
@global4 = global i32 0, align 4
@_const_str3.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str3 = alias bitcast([ 7 x i8 ]* @_const_str3.str. to i8*)@_Fields_vtable2 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh5:
  ret void
}


define i32 @program (i32 %argc18, { i32, [ 0 x i8* ] }* %argv16){
__fresh4:
  %argc_slot19 = alloca i32
  store i32 %argc18, i32* %argc_slot19
  %argv_slot17 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv16, { i32, [ 0 x i8* ] }** %argv_slot17
  %mem_ptr20 = call i32* @oat_malloc ( i32 20 )
  %obj21 = bitcast i32* %mem_ptr20 to %Fields* 
  %new_obj22 = call %Fields* @_Fields_ctor ( %Fields* %obj21 )
  %vdecl_slot23 = alloca %Fields*
  store %Fields* %new_obj22, %Fields** %vdecl_slot23
  %lhs_or_call24 = load %Fields** %vdecl_slot23
  %vtmp26 = getelementptr %Fields* %lhs_or_call24, i32 0, i32 0
  %vtable25 = load %_Fields_vtable** %vtmp26
  %fptmp27 = getelementptr %_Fields_vtable* %vtable25, i32 0, i32 2
  %method28 = load %Fields* (%Fields*)** %fptmp27
  %ret29 = call %Fields* %method28 ( %Fields* %lhs_or_call24 )
  %vdecl_slot30 = alloca %Fields*
  store %Fields* %ret29, %Fields** %vdecl_slot30
  %lhs_or_call31 = load %Fields** %vdecl_slot30
  %path32 = getelementptr %Fields* %lhs_or_call31, i32 0, i32 3
  %lhs_or_call33 = load i32* %path32
  ret i32 %lhs_or_call33
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh3:
  %path12 = getelementptr %Fields* %_this1, i32 0, i32 3
  %path13 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call14 = load i32* %path13
  %bop15 = add i32 1, %lhs_or_call14
  store i32 %bop15, i32* %path12
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh2:
  %cast_op6 = bitcast %Fields* %_this1 to %Object* 
  %dummy7 = call %Object* @_Object_ctor ( %Object* %cast_op6 )
  %path8 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str7, i8** %path8
  %vt_slot9 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable2, %_Fields_vtable** %vt_slot9
  %path10 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call11 = load i32* @global4
  store i32 %lhs_or_call11, i32* %path10
  ret %Fields* %_this1
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
  store i8* @_const_str3, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}



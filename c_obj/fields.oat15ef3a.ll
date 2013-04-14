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
@_const_str6.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str6 = alias bitcast([ 7 x i8 ]* @_const_str6.str. to i8*)@global25 = global i32 0, align 4
@global4 = global i32 0, align 4
@_const_str3.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str3 = alias bitcast([ 7 x i8 ]* @_const_str3.str. to i8*)@_Fields_vtable2 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh6:
  ret void
}


define i32 @program (i32 %argc25, { i32, [ 0 x i8* ] }* %argv23){
__fresh5:
  %argc_slot26 = alloca i32
  store i32 %argc25, i32* %argc_slot26
  %argv_slot24 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv23, { i32, [ 0 x i8* ] }** %argv_slot24
  %mem_ptr27 = call i32* @oat_malloc ( i32 20 )
  %obj28 = bitcast i32* %mem_ptr27 to %Fields* 
  %new_obj29 = call %Fields* @_Fields_ctor ( %Fields* %obj28 )
  %vdecl_slot30 = alloca %Fields*
  store %Fields* %new_obj29, %Fields** %vdecl_slot30
  %lhs_or_call31 = load %Fields** %vdecl_slot30
  %vtmp33 = getelementptr %Fields* %lhs_or_call31, i32 0, i32 0
  %vtable32 = load %_Fields_vtable** %vtmp33
  %fptmp34 = getelementptr %_Fields_vtable* %vtable32, i32 0, i32 2
  %method35 = load %Fields* (%Fields*)** %fptmp34
  %ret36 = call %Fields* %method35 ( %Fields* %lhs_or_call31 )
  %vdecl_slot37 = alloca %Fields*
  store %Fields* %ret36, %Fields** %vdecl_slot37
  %lhs_or_call38 = load %Fields** %vdecl_slot37
  %path39 = getelementptr %Fields* %lhs_or_call38, i32 0, i32 3
  %lhs_or_call40 = load i32* %path39
  ret i32 %lhs_or_call40
}


define i32 @method (){
__fresh4:
  %lhs_or_call16 = load i32* @global4
  %bop17 = add i32 %lhs_or_call16, 4
  %vdecl_slot18 = alloca i32
  store i32 %bop17, i32* %vdecl_slot18
  %lhs_or_call19 = load i32* %vdecl_slot18
  %lhs_or_call20 = load i32* %vdecl_slot18
  %bop21 = add i32 %lhs_or_call19, %lhs_or_call20
  %vdecl_slot22 = alloca i32
  store i32 %bop21, i32* %vdecl_slot22
  ret i32 4
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
  store i8* @_const_str6, i8** %path8
  %vt_slot9 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable2, %_Fields_vtable** %vt_slot9
  store i32 4, i32* @global4
  %path10 = getelementptr %Fields* %_this1, i32 0, i32 2
  %ret11 = call i32 @method (  )
  store i32 %ret11, i32* %path10
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



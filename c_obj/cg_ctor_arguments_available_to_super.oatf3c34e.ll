%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str348.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str348 = alias bitcast([ 2 x i8 ]* @_const_str348.str. to i8*)@_const_str347.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str347 = alias bitcast([ 2 x i8 ]* @_const_str347.str. to i8*)@_const_str346.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str346 = alias bitcast([ 7 x i8 ]* @_const_str346.str. to i8*)@_B_vtable345 = private constant %_B_vtable {%_A_vtable* @_A_vtable344, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable344 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable343, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable343 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh570:
  ret void
}


define i32 @program (i32 %argc2062, { i32, [ 0 x i8* ] }* %argv2060){
__fresh569:
  %argc_slot2063 = alloca i32
  store i32 %argc2062, i32* %argc_slot2063
  %argv_slot2061 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2060, { i32, [ 0 x i8* ] }** %argv_slot2061
  %mem_ptr2064 = call i32* @oat_malloc ( i32 12 )
  %obj2065 = bitcast i32* %mem_ptr2064 to %B* 
  %new_obj2066 = call %B* @_B_ctor ( %B* %obj2065, i32 1, i32 2 )
  %vdecl_slot2067 = alloca %B*
  store %B* %new_obj2066, %B** %vdecl_slot2067
  %lhs_or_call2068 = load %B** %vdecl_slot2067
  %path2069 = getelementptr %B* %lhs_or_call2068, i32 0, i32 2
  %lhs_or_call2070 = load i32* %path2069
  ret i32 %lhs_or_call2070
}


define %B* @_B_ctor (%B* %_this1, i32 %a2050, i32 %b2048){
__fresh568:
  %a_slot2051 = alloca i32
  store i32 %a2050, i32* %a_slot2051
  %b_slot2049 = alloca i32
  store i32 %b2048, i32* %b_slot2049
  %lhs_or_call2052 = load i32* %a_slot2051
  %bop2053 = mul i32 %lhs_or_call2052, 10
  %lhs_or_call2054 = load i32* %b_slot2049
  %bop2055 = add i32 %bop2053, %lhs_or_call2054
  %cast_op2056 = bitcast %B* %_this1 to %A* 
  %dummy2057 = call %A* @_A_ctor ( %A* %cast_op2056, i32 %bop2055 )
  %path2058 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str348, i8** %path2058
  %vt_slot2059 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable345, %_B_vtable** %vt_slot2059
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1, i32 %x2040){
__fresh567:
  %x_slot2041 = alloca i32
  store i32 %x2040, i32* %x_slot2041
  %cast_op2042 = bitcast %A* %_this1 to %Object* 
  %dummy2043 = call %Object* @_Object_ctor ( %Object* %cast_op2042 )
  %path2044 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str347, i8** %path2044
  %vt_slot2045 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable344, %_A_vtable** %vt_slot2045
  %path2046 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2047 = load i32* %x_slot2041
  store i32 %lhs_or_call2047, i32* %path2046
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh566:
  %path2038 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2039 = load i8** %path2038
  ret i8* %lhs_or_call2039
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh565:
  %path2036 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str346, i8** %path2036
  %vt_slot2037 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable343, %_Object_vtable** %vt_slot2037
  ret %Object* %_this1
}



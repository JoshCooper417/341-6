%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
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
@_const_str202.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str202 = alias bitcast([ 3 x i8 ]* @_const_str202.str. to i8*)@_const_str203.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str203 = alias bitcast([ 4 x i8 ]* @_const_str203.str. to i8*)@_const_str201.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str201 = alias bitcast([ 2 x i8 ]* @_const_str201.str. to i8*)@_const_str200.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str200 = alias bitcast([ 2 x i8 ]* @_const_str200.str. to i8*)@_const_str199.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str199 = alias bitcast([ 2 x i8 ]* @_const_str199.str. to i8*)@_const_str198.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str198 = alias bitcast([ 7 x i8 ]* @_const_str198.str. to i8*)@_C_vtable197 = private constant %_C_vtable {%_B_vtable* @_B_vtable196, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable196 = private constant %_B_vtable {%_A_vtable* @_A_vtable195, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable195 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable194, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable194 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh326:
  ret void
}


define i32 @program (i32 %argc1022, { i32, [ 0 x i8* ] }* %argv1020){
__fresh321:
  %argc_slot1023 = alloca i32
  store i32 %argc1022, i32* %argc_slot1023
  %argv_slot1021 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1020, { i32, [ 0 x i8* ] }** %argv_slot1021
  %mem_ptr1024 = call i32* @oat_malloc ( i32 12 )
  %obj1025 = bitcast i32* %mem_ptr1024 to %B* 
  %new_obj1026 = call %B* @_B_ctor ( %B* %obj1025 )
  %cast_op1027 = bitcast %B* %new_obj1026 to %A* 
  %vdecl_slot1028 = alloca %A*
  store %A* %cast_op1027, %A** %vdecl_slot1028
  %vdecl_slot1029 = alloca i32
  store i32 -1, i32* %vdecl_slot1029
  %lhs_or_call1030 = load %A** %vdecl_slot1028
  %cast_op1031 = bitcast %A* %lhs_or_call1030 to %B* 
  %cast_op1032 = bitcast %B* %cast_op1031 to i8** 
  %cast_op1033 = bitcast %_B_vtable* @_B_vtable196 to i8* 
  %vt_ptr_slot1034 = alloca i8*
  %tmp01036 = load i8** %cast_op1032
  store i8* %tmp01036, i8** %vt_ptr_slot1034
  br label %__loop320

__loop320:
  %tmp11037 = load i8** %vt_ptr_slot1034
  %guard11041 = icmp eq i8* %tmp11037, %cast_op1033
  br i1 %guard11041, label %__then317, label %__fall1319

__fresh322:
  br label %__fall1319

__fall1319:
  %guard21042 = icmp eq i8* %tmp11037, null
  br i1 %guard21042, label %__else316, label %__fall2318

__fresh323:
  br label %__fall2318

__fall2318:
  %tmp21038 = load i8** %vt_ptr_slot1034
  %tmp31039 = bitcast i8* %tmp21038 to i8** 
  %tmp41040 = load i8** %tmp31039
  store i8* %tmp41040, i8** %vt_ptr_slot1034
  br label %__loop320

__fresh324:
  br label %__then317

__then317:
  %var_slot1035 = alloca %B*
  store %B* %cast_op1031, %B** %var_slot1035
  call void @print_string( i8* @_const_str203 )
  %lhs_or_call1046 = load %B** %var_slot1035
  %path1047 = getelementptr %B* %lhs_or_call1046, i32 0, i32 2
  %lhs_or_call1048 = load i32* %path1047
  store i32 %lhs_or_call1048, i32* %vdecl_slot1029
  br label %__done315

__fresh325:
  br label %__else316

__else316:
  call void @print_string( i8* @_const_str202 )
  %lhs_or_call1043 = load %A** %vdecl_slot1028
  %path1044 = getelementptr %A* %lhs_or_call1043, i32 0, i32 2
  %lhs_or_call1045 = load i32* %path1044
  store i32 %lhs_or_call1045, i32* %vdecl_slot1029
  br label %__done315

__done315:
  %lhs_or_call1049 = load i32* %vdecl_slot1029
  ret i32 %lhs_or_call1049
}


define %C* @_C_ctor (%C* %_this1){
__fresh314:
  %cast_op1015 = bitcast %C* %_this1 to %B* 
  %dummy1016 = call %B* @_B_ctor ( %B* %cast_op1015 )
  %path1017 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str201, i8** %path1017
  %vt_slot1018 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable197, %_C_vtable** %vt_slot1018
  %path1019 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1019
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh313:
  %cast_op1010 = bitcast %B* %_this1 to %A* 
  %dummy1011 = call %A* @_A_ctor ( %A* %cast_op1010 )
  %path1012 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str200, i8** %path1012
  %vt_slot1013 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable196, %_B_vtable** %vt_slot1013
  %path1014 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1014
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh312:
  %cast_op1005 = bitcast %A* %_this1 to %Object* 
  %dummy1006 = call %Object* @_Object_ctor ( %Object* %cast_op1005 )
  %path1007 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str199, i8** %path1007
  %vt_slot1008 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable195, %_A_vtable** %vt_slot1008
  %path1009 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1009
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh311:
  %path1003 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1004 = load i8** %path1003
  ret i8* %lhs_or_call1004
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh310:
  %path1001 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str198, i8** %path1001
  %vt_slot1002 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable194, %_Object_vtable** %vt_slot1002
  ret %Object* %_this1
}



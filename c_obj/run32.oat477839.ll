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
@_const_str212.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str212 = alias bitcast([ 3 x i8 ]* @_const_str212.str. to i8*)@_const_str213.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str213 = alias bitcast([ 4 x i8 ]* @_const_str213.str. to i8*)@_const_str211.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str211 = alias bitcast([ 2 x i8 ]* @_const_str211.str. to i8*)@_const_str210.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str210 = alias bitcast([ 2 x i8 ]* @_const_str210.str. to i8*)@_const_str209.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str209 = alias bitcast([ 2 x i8 ]* @_const_str209.str. to i8*)@_const_str208.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str208 = alias bitcast([ 7 x i8 ]* @_const_str208.str. to i8*)@_C_vtable207 = private constant %_C_vtable {%_B_vtable* @_B_vtable206, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable206 = private constant %_B_vtable {%_A_vtable* @_A_vtable205, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable205 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable204, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable204 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh343:
  ret void
}


define i32 @program (i32 %argc1071, { i32, [ 0 x i8* ] }* %argv1069){
__fresh338:
  %argc_slot1072 = alloca i32
  store i32 %argc1071, i32* %argc_slot1072
  %argv_slot1070 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1069, { i32, [ 0 x i8* ] }** %argv_slot1070
  %mem_ptr1073 = call i32* @oat_malloc ( i32 12 )
  %obj1074 = bitcast i32* %mem_ptr1073 to %C* 
  %new_obj1075 = call %C* @_C_ctor ( %C* %obj1074 )
  %cast_op1076 = bitcast %C* %new_obj1075 to %A* 
  %vdecl_slot1077 = alloca %A*
  store %A* %cast_op1076, %A** %vdecl_slot1077
  %vdecl_slot1078 = alloca i32
  store i32 -1, i32* %vdecl_slot1078
  %lhs_or_call1079 = load %A** %vdecl_slot1077
  %cast_op1080 = bitcast %A* %lhs_or_call1079 to %B* 
  %cast_op1081 = bitcast %B* %cast_op1080 to i8** 
  %cast_op1082 = bitcast %_B_vtable* @_B_vtable206 to i8* 
  %vt_ptr_slot1083 = alloca i8*
  %tmp01085 = load i8** %cast_op1081
  store i8* %tmp01085, i8** %vt_ptr_slot1083
  br label %__loop337

__loop337:
  %tmp11086 = load i8** %vt_ptr_slot1083
  %guard11090 = icmp eq i8* %tmp11086, %cast_op1082
  br i1 %guard11090, label %__then334, label %__fall1336

__fresh339:
  br label %__fall1336

__fall1336:
  %guard21091 = icmp eq i8* %tmp11086, null
  br i1 %guard21091, label %__else333, label %__fall2335

__fresh340:
  br label %__fall2335

__fall2335:
  %tmp21087 = load i8** %vt_ptr_slot1083
  %tmp31088 = bitcast i8* %tmp21087 to i8** 
  %tmp41089 = load i8** %tmp31088
  store i8* %tmp41089, i8** %vt_ptr_slot1083
  br label %__loop337

__fresh341:
  br label %__then334

__then334:
  %var_slot1084 = alloca %B*
  store %B* %cast_op1080, %B** %var_slot1084
  call void @print_string( i8* @_const_str213 )
  %lhs_or_call1095 = load %B** %var_slot1084
  %path1096 = getelementptr %B* %lhs_or_call1095, i32 0, i32 2
  %lhs_or_call1097 = load i32* %path1096
  store i32 %lhs_or_call1097, i32* %vdecl_slot1078
  br label %__done332

__fresh342:
  br label %__else333

__else333:
  call void @print_string( i8* @_const_str212 )
  %lhs_or_call1092 = load %A** %vdecl_slot1077
  %path1093 = getelementptr %A* %lhs_or_call1092, i32 0, i32 2
  %lhs_or_call1094 = load i32* %path1093
  store i32 %lhs_or_call1094, i32* %vdecl_slot1078
  br label %__done332

__done332:
  %lhs_or_call1098 = load i32* %vdecl_slot1078
  ret i32 %lhs_or_call1098
}


define %C* @_C_ctor (%C* %_this1){
__fresh331:
  %cast_op1064 = bitcast %C* %_this1 to %B* 
  %dummy1065 = call %B* @_B_ctor ( %B* %cast_op1064 )
  %path1066 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str211, i8** %path1066
  %vt_slot1067 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable207, %_C_vtable** %vt_slot1067
  %path1068 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1068
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh330:
  %cast_op1059 = bitcast %B* %_this1 to %A* 
  %dummy1060 = call %A* @_A_ctor ( %A* %cast_op1059 )
  %path1061 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str210, i8** %path1061
  %vt_slot1062 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable206, %_B_vtable** %vt_slot1062
  %path1063 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1063
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh329:
  %cast_op1054 = bitcast %A* %_this1 to %Object* 
  %dummy1055 = call %Object* @_Object_ctor ( %Object* %cast_op1054 )
  %path1056 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str209, i8** %path1056
  %vt_slot1057 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable205, %_A_vtable** %vt_slot1057
  %path1058 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1058
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh328:
  %path1052 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1053 = load i8** %path1052
  ret i8* %lhs_or_call1053
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh327:
  %path1050 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str208, i8** %path1050
  %vt_slot1051 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable204, %_Object_vtable** %vt_slot1051
  ret %Object* %_this1
}



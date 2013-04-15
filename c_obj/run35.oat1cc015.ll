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
@_const_str222.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str222 = alias bitcast([ 3 x i8 ]* @_const_str222.str. to i8*)@_const_str223.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str223 = alias bitcast([ 4 x i8 ]* @_const_str223.str. to i8*)@_const_str221.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str221 = alias bitcast([ 2 x i8 ]* @_const_str221.str. to i8*)@_const_str220.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str220 = alias bitcast([ 2 x i8 ]* @_const_str220.str. to i8*)@_const_str219.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str219 = alias bitcast([ 2 x i8 ]* @_const_str219.str. to i8*)@_const_str218.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str218 = alias bitcast([ 7 x i8 ]* @_const_str218.str. to i8*)@_C_vtable217 = private constant %_C_vtable {%_B_vtable* @_B_vtable216, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable216 = private constant %_B_vtable {%_A_vtable* @_A_vtable215, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable215 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable214, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable214 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh360:
  ret void
}


define i32 @program (i32 %argc1120, { i32, [ 0 x i8* ] }* %argv1118){
__fresh355:
  %argc_slot1121 = alloca i32
  store i32 %argc1120, i32* %argc_slot1121
  %argv_slot1119 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1118, { i32, [ 0 x i8* ] }** %argv_slot1119
  %mem_ptr1122 = call i32* @oat_malloc ( i32 12 )
  %obj1123 = bitcast i32* %mem_ptr1122 to %A* 
  %new_obj1124 = call %A* @_A_ctor ( %A* %obj1123 )
  %vdecl_slot1125 = alloca %A*
  store %A* %new_obj1124, %A** %vdecl_slot1125
  %vdecl_slot1126 = alloca i32
  store i32 -1, i32* %vdecl_slot1126
  %lhs_or_call1127 = load %A** %vdecl_slot1125
  %cast_op1128 = bitcast %A* %lhs_or_call1127 to i8** 
  %cast_op1129 = bitcast %_A_vtable* @_A_vtable215 to i8* 
  %vt_ptr_slot1130 = alloca i8*
  %tmp01132 = load i8** %cast_op1128
  store i8* %tmp01132, i8** %vt_ptr_slot1130
  br label %__loop354

__loop354:
  %tmp11133 = load i8** %vt_ptr_slot1130
  %guard11137 = icmp eq i8* %tmp11133, %cast_op1129
  br i1 %guard11137, label %__then351, label %__fall1353

__fresh356:
  br label %__fall1353

__fall1353:
  %guard21138 = icmp eq i8* %tmp11133, null
  br i1 %guard21138, label %__else350, label %__fall2352

__fresh357:
  br label %__fall2352

__fall2352:
  %tmp21134 = load i8** %vt_ptr_slot1130
  %tmp31135 = bitcast i8* %tmp21134 to i8** 
  %tmp41136 = load i8** %tmp31135
  store i8* %tmp41136, i8** %vt_ptr_slot1130
  br label %__loop354

__fresh358:
  br label %__then351

__then351:
  %var_slot1131 = alloca %A*
  store %A* %lhs_or_call1127, %A** %var_slot1131
  call void @print_string( i8* @_const_str223 )
  %lhs_or_call1142 = load %A** %var_slot1131
  %path1143 = getelementptr %A* %lhs_or_call1142, i32 0, i32 2
  %lhs_or_call1144 = load i32* %path1143
  store i32 %lhs_or_call1144, i32* %vdecl_slot1126
  br label %__done349

__fresh359:
  br label %__else350

__else350:
  call void @print_string( i8* @_const_str222 )
  %lhs_or_call1139 = load %A** %vdecl_slot1125
  %path1140 = getelementptr %A* %lhs_or_call1139, i32 0, i32 2
  %lhs_or_call1141 = load i32* %path1140
  store i32 %lhs_or_call1141, i32* %vdecl_slot1126
  br label %__done349

__done349:
  %lhs_or_call1145 = load i32* %vdecl_slot1126
  ret i32 %lhs_or_call1145
}


define %C* @_C_ctor (%C* %_this1){
__fresh348:
  %cast_op1113 = bitcast %C* %_this1 to %B* 
  %dummy1114 = call %B* @_B_ctor ( %B* %cast_op1113 )
  %path1115 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str221, i8** %path1115
  %vt_slot1116 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable217, %_C_vtable** %vt_slot1116
  %path1117 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1117
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh347:
  %cast_op1108 = bitcast %B* %_this1 to %A* 
  %dummy1109 = call %A* @_A_ctor ( %A* %cast_op1108 )
  %path1110 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str220, i8** %path1110
  %vt_slot1111 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable216, %_B_vtable** %vt_slot1111
  %path1112 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1112
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh346:
  %cast_op1103 = bitcast %A* %_this1 to %Object* 
  %dummy1104 = call %Object* @_Object_ctor ( %Object* %cast_op1103 )
  %path1105 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str219, i8** %path1105
  %vt_slot1106 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable215, %_A_vtable** %vt_slot1106
  %path1107 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1107
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh345:
  %path1101 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1102 = load i8** %path1101
  ret i8* %lhs_or_call1102
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh344:
  %path1099 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str218, i8** %path1099
  %vt_slot1100 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable214, %_Object_vtable** %vt_slot1100
  ret %Object* %_this1
}



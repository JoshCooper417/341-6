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
@_const_str242.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str242 = alias bitcast([ 3 x i8 ]* @_const_str242.str. to i8*)@_const_str243.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str243 = alias bitcast([ 4 x i8 ]* @_const_str243.str. to i8*)@_const_str241.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str241 = alias bitcast([ 2 x i8 ]* @_const_str241.str. to i8*)@_const_str240.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str240 = alias bitcast([ 2 x i8 ]* @_const_str240.str. to i8*)@_const_str239.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str239 = alias bitcast([ 2 x i8 ]* @_const_str239.str. to i8*)@_const_str238.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str238 = alias bitcast([ 7 x i8 ]* @_const_str238.str. to i8*)@_C_vtable237 = private constant %_C_vtable {%_B_vtable* @_B_vtable236, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable236 = private constant %_B_vtable {%_A_vtable* @_A_vtable235, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable235 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable234, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable234 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh394:
  ret void
}


define i32 @program (i32 %argc1215, { i32, [ 0 x i8* ] }* %argv1213){
__fresh389:
  %argc_slot1216 = alloca i32
  store i32 %argc1215, i32* %argc_slot1216
  %argv_slot1214 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1213, { i32, [ 0 x i8* ] }** %argv_slot1214
  %mem_ptr1217 = call i32* @oat_malloc ( i32 12 )
  %obj1218 = bitcast i32* %mem_ptr1217 to %C* 
  %new_obj1219 = call %C* @_C_ctor ( %C* %obj1218 )
  %cast_op1220 = bitcast %C* %new_obj1219 to %A* 
  %vdecl_slot1221 = alloca %A*
  store %A* %cast_op1220, %A** %vdecl_slot1221
  %vdecl_slot1222 = alloca i32
  store i32 -1, i32* %vdecl_slot1222
  %lhs_or_call1223 = load %A** %vdecl_slot1221
  %cast_op1224 = bitcast %A* %lhs_or_call1223 to i8** 
  %cast_op1225 = bitcast %_A_vtable* @_A_vtable235 to i8* 
  %vt_ptr_slot1226 = alloca i8*
  %tmp01228 = load i8** %cast_op1224
  store i8* %tmp01228, i8** %vt_ptr_slot1226
  br label %__loop388

__loop388:
  %tmp11229 = load i8** %vt_ptr_slot1226
  %guard11233 = icmp eq i8* %tmp11229, %cast_op1225
  br i1 %guard11233, label %__then385, label %__fall1387

__fresh390:
  br label %__fall1387

__fall1387:
  %guard21234 = icmp eq i8* %tmp11229, null
  br i1 %guard21234, label %__else384, label %__fall2386

__fresh391:
  br label %__fall2386

__fall2386:
  %tmp21230 = load i8** %vt_ptr_slot1226
  %tmp31231 = bitcast i8* %tmp21230 to i8** 
  %tmp41232 = load i8** %tmp31231
  store i8* %tmp41232, i8** %vt_ptr_slot1226
  br label %__loop388

__fresh392:
  br label %__then385

__then385:
  %var_slot1227 = alloca %A*
  store %A* %lhs_or_call1223, %A** %var_slot1227
  call void @print_string( i8* @_const_str243 )
  %lhs_or_call1238 = load %A** %var_slot1227
  %path1239 = getelementptr %A* %lhs_or_call1238, i32 0, i32 2
  %lhs_or_call1240 = load i32* %path1239
  store i32 %lhs_or_call1240, i32* %vdecl_slot1222
  br label %__done383

__fresh393:
  br label %__else384

__else384:
  call void @print_string( i8* @_const_str242 )
  %lhs_or_call1235 = load %A** %vdecl_slot1221
  %path1236 = getelementptr %A* %lhs_or_call1235, i32 0, i32 2
  %lhs_or_call1237 = load i32* %path1236
  store i32 %lhs_or_call1237, i32* %vdecl_slot1222
  br label %__done383

__done383:
  %lhs_or_call1241 = load i32* %vdecl_slot1222
  ret i32 %lhs_or_call1241
}


define %C* @_C_ctor (%C* %_this1){
__fresh382:
  %cast_op1208 = bitcast %C* %_this1 to %B* 
  %dummy1209 = call %B* @_B_ctor ( %B* %cast_op1208 )
  %path1210 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str241, i8** %path1210
  %vt_slot1211 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable237, %_C_vtable** %vt_slot1211
  %path1212 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1212
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh381:
  %cast_op1203 = bitcast %B* %_this1 to %A* 
  %dummy1204 = call %A* @_A_ctor ( %A* %cast_op1203 )
  %path1205 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str240, i8** %path1205
  %vt_slot1206 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable236, %_B_vtable** %vt_slot1206
  %path1207 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1207
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh380:
  %cast_op1198 = bitcast %A* %_this1 to %Object* 
  %dummy1199 = call %Object* @_Object_ctor ( %Object* %cast_op1198 )
  %path1200 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str239, i8** %path1200
  %vt_slot1201 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable235, %_A_vtable** %vt_slot1201
  %path1202 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1202
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh379:
  %path1196 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1197 = load i8** %path1196
  ret i8* %lhs_or_call1197
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh378:
  %path1194 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str238, i8** %path1194
  %vt_slot1195 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable234, %_Object_vtable** %vt_slot1195
  ret %Object* %_this1
}



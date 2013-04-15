%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str254.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str254 = alias bitcast([ 2 x i8 ]* @_const_str254.str. to i8*)@_const_str253.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str253 = alias bitcast([ 2 x i8 ]* @_const_str253.str. to i8*)@_const_str252.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str252 = alias bitcast([ 2 x i8 ]* @_const_str252.str. to i8*)@_const_str251.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str251 = alias bitcast([ 2 x i8 ]* @_const_str251.str. to i8*)@_const_str250.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str250 = alias bitcast([ 2 x i8 ]* @_const_str250.str. to i8*)@_const_str249.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str249 = alias bitcast([ 2 x i8 ]* @_const_str249.str. to i8*)@_const_str248.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str248 = alias bitcast([ 7 x i8 ]* @_const_str248.str. to i8*)@_C_vtable247 = private constant %_C_vtable {%_B_vtable* @_B_vtable246, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable246 = private constant %_B_vtable {%_A_vtable* @_A_vtable245, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable245 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable244, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable244 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh435:
  ret void
}


define i32 @program (i32 %argc1315, { i32, [ 0 x i8* ] }* %argv1313){
__fresh434:
  %argc_slot1316 = alloca i32
  store i32 %argc1315, i32* %argc_slot1316
  %argv_slot1314 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1313, { i32, [ 0 x i8* ] }** %argv_slot1314
  %mem_ptr1317 = call i32* @oat_malloc ( i32 8 )
  %obj1318 = bitcast i32* %mem_ptr1317 to %A* 
  %new_obj1319 = call %A* @_A_ctor ( %A* %obj1318 )
  call void @f( %A* %new_obj1319 )
  %mem_ptr1320 = call i32* @oat_malloc ( i32 8 )
  %obj1321 = bitcast i32* %mem_ptr1320 to %B* 
  %new_obj1322 = call %B* @_B_ctor ( %B* %obj1321 )
  %cast_op1323 = bitcast %B* %new_obj1322 to %A* 
  call void @f( %A* %cast_op1323 )
  %mem_ptr1324 = call i32* @oat_malloc ( i32 8 )
  %obj1325 = bitcast i32* %mem_ptr1324 to %C* 
  %new_obj1326 = call %C* @_C_ctor ( %C* %obj1325 )
  %cast_op1327 = bitcast %C* %new_obj1326 to %A* 
  call void @f( %A* %cast_op1327 )
  ret i32 0
}


define void @f (%A* %x1258){
__fresh421:
  %x_slot1259 = alloca %A*
  store %A* %x1258, %A** %x_slot1259
  %lhs_or_call1260 = load %A** %x_slot1259
  %cast_op1261 = bitcast %A* %lhs_or_call1260 to %C* 
  %cast_op1262 = bitcast %C* %cast_op1261 to i8** 
  %cast_op1263 = bitcast %_C_vtable* @_C_vtable247 to i8* 
  %vt_ptr_slot1264 = alloca i8*
  %tmp01266 = load i8** %cast_op1262
  store i8* %tmp01266, i8** %vt_ptr_slot1264
  br label %__loop408

__loop408:
  %tmp11267 = load i8** %vt_ptr_slot1264
  %guard11271 = icmp eq i8* %tmp11267, %cast_op1263
  br i1 %guard11271, label %__then405, label %__fall1407

__fresh422:
  br label %__fall1407

__fall1407:
  %guard21272 = icmp eq i8* %tmp11267, null
  br i1 %guard21272, label %__else404, label %__fall2406

__fresh423:
  br label %__fall2406

__fall2406:
  %tmp21268 = load i8** %vt_ptr_slot1264
  %tmp31269 = bitcast i8* %tmp21268 to i8** 
  %tmp41270 = load i8** %tmp31269
  store i8* %tmp41270, i8** %vt_ptr_slot1264
  br label %__loop408

__fresh424:
  br label %__then405

__then405:
  %var_slot1265 = alloca %C*
  store %C* %cast_op1261, %C** %var_slot1265
  %lhs_or_call1273 = load %C** %var_slot1265
  %vtmp1275 = getelementptr %C* %lhs_or_call1273, i32 0, i32 0
  %vtable1274 = load %_C_vtable** %vtmp1275
  %fptmp1276 = getelementptr %_C_vtable* %vtable1274, i32 0, i32 2
  %method1277 = load void (%C*)** %fptmp1276
  call void %method1277( %C* %lhs_or_call1273 )
  br label %__done403

__fresh425:
  br label %__else404

__else404:
  br label %__done403

__done403:
  %lhs_or_call1278 = load %A** %x_slot1259
  %cast_op1279 = bitcast %A* %lhs_or_call1278 to %B* 
  %cast_op1280 = bitcast %B* %cast_op1279 to i8** 
  %cast_op1281 = bitcast %_B_vtable* @_B_vtable246 to i8* 
  %vt_ptr_slot1282 = alloca i8*
  %tmp01284 = load i8** %cast_op1280
  store i8* %tmp01284, i8** %vt_ptr_slot1282
  br label %__loop414

__loop414:
  %tmp11285 = load i8** %vt_ptr_slot1282
  %guard11289 = icmp eq i8* %tmp11285, %cast_op1281
  br i1 %guard11289, label %__then411, label %__fall1413

__fresh426:
  br label %__fall1413

__fall1413:
  %guard21290 = icmp eq i8* %tmp11285, null
  br i1 %guard21290, label %__else410, label %__fall2412

__fresh427:
  br label %__fall2412

__fall2412:
  %tmp21286 = load i8** %vt_ptr_slot1282
  %tmp31287 = bitcast i8* %tmp21286 to i8** 
  %tmp41288 = load i8** %tmp31287
  store i8* %tmp41288, i8** %vt_ptr_slot1282
  br label %__loop414

__fresh428:
  br label %__then411

__then411:
  %var_slot1283 = alloca %B*
  store %B* %cast_op1279, %B** %var_slot1283
  %lhs_or_call1291 = load %B** %var_slot1283
  %vtmp1293 = getelementptr %B* %lhs_or_call1291, i32 0, i32 0
  %vtable1292 = load %_B_vtable** %vtmp1293
  %fptmp1294 = getelementptr %_B_vtable* %vtable1292, i32 0, i32 2
  %method1295 = load void (%B*)** %fptmp1294
  call void %method1295( %B* %lhs_or_call1291 )
  br label %__done409

__fresh429:
  br label %__else410

__else410:
  br label %__done409

__done409:
  %lhs_or_call1296 = load %A** %x_slot1259
  %cast_op1297 = bitcast %A* %lhs_or_call1296 to i8** 
  %cast_op1298 = bitcast %_A_vtable* @_A_vtable245 to i8* 
  %vt_ptr_slot1299 = alloca i8*
  %tmp01301 = load i8** %cast_op1297
  store i8* %tmp01301, i8** %vt_ptr_slot1299
  br label %__loop420

__loop420:
  %tmp11302 = load i8** %vt_ptr_slot1299
  %guard11306 = icmp eq i8* %tmp11302, %cast_op1298
  br i1 %guard11306, label %__then417, label %__fall1419

__fresh430:
  br label %__fall1419

__fall1419:
  %guard21307 = icmp eq i8* %tmp11302, null
  br i1 %guard21307, label %__else416, label %__fall2418

__fresh431:
  br label %__fall2418

__fall2418:
  %tmp21303 = load i8** %vt_ptr_slot1299
  %tmp31304 = bitcast i8* %tmp21303 to i8** 
  %tmp41305 = load i8** %tmp31304
  store i8* %tmp41305, i8** %vt_ptr_slot1299
  br label %__loop420

__fresh432:
  br label %__then417

__then417:
  %var_slot1300 = alloca %A*
  store %A* %lhs_or_call1296, %A** %var_slot1300
  %lhs_or_call1308 = load %A** %var_slot1300
  %vtmp1310 = getelementptr %A* %lhs_or_call1308, i32 0, i32 0
  %vtable1309 = load %_A_vtable** %vtmp1310
  %fptmp1311 = getelementptr %_A_vtable* %vtable1309, i32 0, i32 2
  %method1312 = load void (%A*)** %fptmp1311
  call void %method1312( %A* %lhs_or_call1308 )
  br label %__done415

__fresh433:
  br label %__else416

__else416:
  br label %__done415

__done415:
  ret void
}


define void @_C_f (%C* %_this1){
__fresh402:
  call void @print_string( i8* @_const_str254 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh401:
  %cast_op1254 = bitcast %C* %_this1 to %B* 
  %dummy1255 = call %B* @_B_ctor ( %B* %cast_op1254 )
  %path1256 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str253, i8** %path1256
  %vt_slot1257 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable247, %_C_vtable** %vt_slot1257
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh400:
  call void @print_string( i8* @_const_str252 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh399:
  %cast_op1250 = bitcast %B* %_this1 to %A* 
  %dummy1251 = call %A* @_A_ctor ( %A* %cast_op1250 )
  %path1252 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str251, i8** %path1252
  %vt_slot1253 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable246, %_B_vtable** %vt_slot1253
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh398:
  call void @print_string( i8* @_const_str250 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh397:
  %cast_op1246 = bitcast %A* %_this1 to %Object* 
  %dummy1247 = call %Object* @_Object_ctor ( %Object* %cast_op1246 )
  %path1248 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str249, i8** %path1248
  %vt_slot1249 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable245, %_A_vtable** %vt_slot1249
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh396:
  %path1244 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1245 = load i8** %path1244
  ret i8* %lhs_or_call1245
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh395:
  %path1242 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str248, i8** %path1242
  %vt_slot1243 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable244, %_Object_vtable** %vt_slot1243
  ret %Object* %_this1
}



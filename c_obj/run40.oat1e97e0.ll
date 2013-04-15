%C = type { %_C_vtable*, i8*, %B* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8*, %A* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%B*)* }
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
@_const_str272.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str272 = alias bitcast([ 2 x i8 ]* @_const_str272.str. to i8*)@_const_str271.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str271 = alias bitcast([ 2 x i8 ]* @_const_str271.str. to i8*)@_const_str270.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str270 = alias bitcast([ 2 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str269 = alias bitcast([ 2 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str268 = alias bitcast([ 2 x i8 ]* @_const_str268.str. to i8*)@_const_str267.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str267 = alias bitcast([ 2 x i8 ]* @_const_str267.str. to i8*)@_const_str266.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str266 = alias bitcast([ 7 x i8 ]* @_const_str266.str. to i8*)@_C_vtable265 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_f}, align 4
@_B_vtable264 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_f}, align 4
@_A_vtable263 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable262, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable262 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh458:
  ret void
}


define i32 @program (i32 %argc1373, { i32, [ 0 x i8* ] }* %argv1371){
__fresh457:
  %argc_slot1374 = alloca i32
  store i32 %argc1373, i32* %argc_slot1374
  %argv_slot1372 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1371, { i32, [ 0 x i8* ] }** %argv_slot1372
  %mem_ptr1375 = call i32* @oat_malloc ( i32 12 )
  %obj1376 = bitcast i32* %mem_ptr1375 to %C* 
  %new_obj1377 = call %C* @_C_ctor ( %C* %obj1376 )
  %vdecl_slot1378 = alloca %C*
  store %C* %new_obj1377, %C** %vdecl_slot1378
  %lhs_or_call1379 = load %C** %vdecl_slot1378
  %vtmp1381 = getelementptr %C* %lhs_or_call1379, i32 0, i32 0
  %vtable1380 = load %_C_vtable** %vtmp1381
  %fptmp1382 = getelementptr %_C_vtable* %vtable1380, i32 0, i32 2
  %method1383 = load void (%C*)** %fptmp1382
  call void %method1383( %C* %lhs_or_call1379 )
  %lhs_or_call1384 = load %C** %vdecl_slot1378
  %path1385 = getelementptr %C* %lhs_or_call1384, i32 0, i32 2
  %lhs_or_call1386 = load %B** %path1385
  %vtmp1388 = getelementptr %B* %lhs_or_call1386, i32 0, i32 0
  %vtable1387 = load %_B_vtable** %vtmp1388
  %fptmp1389 = getelementptr %_B_vtable* %vtable1387, i32 0, i32 2
  %method1390 = load void (%B*)** %fptmp1389
  call void %method1390( %B* %lhs_or_call1386 )
  %lhs_or_call1391 = load %C** %vdecl_slot1378
  %path1392 = getelementptr %C* %lhs_or_call1391, i32 0, i32 2
  %lhs_or_call1393 = load %B** %path1392
  %path1394 = getelementptr %B* %lhs_or_call1393, i32 0, i32 2
  %lhs_or_call1395 = load %A** %path1394
  %vtmp1397 = getelementptr %A* %lhs_or_call1395, i32 0, i32 0
  %vtable1396 = load %_A_vtable** %vtmp1397
  %fptmp1398 = getelementptr %_A_vtable* %vtable1396, i32 0, i32 2
  %method1399 = load void (%A*)** %fptmp1398
  call void %method1399( %A* %lhs_or_call1395 )
  ret i32 0
}


define void @_C_f (%C* %_this1){
__fresh456:
  call void @print_string( i8* @_const_str272 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh455:
  %cast_op1363 = bitcast %C* %_this1 to %Object* 
  %dummy1364 = call %Object* @_Object_ctor ( %Object* %cast_op1363 )
  %path1365 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str271, i8** %path1365
  %path1366 = getelementptr %C* %_this1, i32 0, i32 2
  %mem_ptr1367 = call i32* @oat_malloc ( i32 12 )
  %obj1368 = bitcast i32* %mem_ptr1367 to %B* 
  %new_obj1369 = call %B* @_B_ctor ( %B* %obj1368 )
  store %B* %new_obj1369, %B** %path1366
  %vt_slot1370 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable265, %_C_vtable** %vt_slot1370
  ret %C* %_this1
}


define void @_B_f (%B* %_this1){
__fresh454:
  call void @print_string( i8* @_const_str270 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh453:
  %cast_op1355 = bitcast %B* %_this1 to %Object* 
  %dummy1356 = call %Object* @_Object_ctor ( %Object* %cast_op1355 )
  %path1357 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %path1357
  %path1358 = getelementptr %B* %_this1, i32 0, i32 2
  %mem_ptr1359 = call i32* @oat_malloc ( i32 8 )
  %obj1360 = bitcast i32* %mem_ptr1359 to %A* 
  %new_obj1361 = call %A* @_A_ctor ( %A* %obj1360 )
  store %A* %new_obj1361, %A** %path1358
  %vt_slot1362 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable264, %_B_vtable** %vt_slot1362
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh452:
  call void @print_string( i8* @_const_str268 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh451:
  %cast_op1351 = bitcast %A* %_this1 to %Object* 
  %dummy1352 = call %Object* @_Object_ctor ( %Object* %cast_op1351 )
  %path1353 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str267, i8** %path1353
  %vt_slot1354 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable263, %_A_vtable** %vt_slot1354
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh450:
  %path1349 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1350 = load i8** %path1349
  ret i8* %lhs_or_call1350
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh449:
  %path1347 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str266, i8** %path1347
  %vt_slot1348 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable262, %_Object_vtable** %vt_slot1348
  ret %Object* %_this1
}



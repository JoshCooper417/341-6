%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str280.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str280 = alias bitcast([ 2 x i8 ]* @_const_str280.str. to i8*)@_const_str279.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str279 = alias bitcast([ 2 x i8 ]* @_const_str279.str. to i8*)@_const_str278.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str278 = alias bitcast([ 2 x i8 ]* @_const_str278.str. to i8*)@_const_str277.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str277 = alias bitcast([ 7 x i8 ]* @_const_str277.str. to i8*)@_C_vtable276 = private constant %_C_vtable {%_A_vtable* @_A_vtable274, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable275 = private constant %_B_vtable {%_A_vtable* @_A_vtable274, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable274 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable273, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable273 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh470:
  ret void
}


define i32 @program (i32 %argc1421, { i32, [ 0 x i8* ] }* %argv1419){
__fresh467:
  %argc_slot1422 = alloca i32
  store i32 %argc1421, i32* %argc_slot1422
  %argv_slot1420 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1419, { i32, [ 0 x i8* ] }** %argv_slot1420
  %array_ptr1423 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1424 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1423 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1425 = call i32* @oat_malloc ( i32 12 )
  %obj1426 = bitcast i32* %mem_ptr1425 to %A* 
  %new_obj1427 = call %A* @_A_ctor ( %A* %obj1426 )
  %index_ptr1428 = getelementptr { i32, [ 0 x %A* ] }* %array1424, i32 0, i32 1, i32 0
  store %A* %new_obj1427, %A** %index_ptr1428
  %mem_ptr1429 = call i32* @oat_malloc ( i32 12 )
  %obj1430 = bitcast i32* %mem_ptr1429 to %B* 
  %new_obj1431 = call %B* @_B_ctor ( %B* %obj1430 )
  %cast_op1432 = bitcast %B* %new_obj1431 to %A* 
  %index_ptr1433 = getelementptr { i32, [ 0 x %A* ] }* %array1424, i32 0, i32 1, i32 1
  store %A* %cast_op1432, %A** %index_ptr1433
  %mem_ptr1434 = call i32* @oat_malloc ( i32 12 )
  %obj1435 = bitcast i32* %mem_ptr1434 to %C* 
  %new_obj1436 = call %C* @_C_ctor ( %C* %obj1435 )
  %cast_op1437 = bitcast %C* %new_obj1436 to %A* 
  %index_ptr1438 = getelementptr { i32, [ 0 x %A* ] }* %array1424, i32 0, i32 1, i32 2
  store %A* %cast_op1437, %A** %index_ptr1438
  %vdecl_slot1439 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1424, { i32, [ 0 x %A* ] }** %vdecl_slot1439
  %vdecl_slot1440 = alloca i32
  store i32 0, i32* %vdecl_slot1440
  br label %__cond466

__cond466:
  %lhs_or_call1441 = load i32* %vdecl_slot1440
  %lhs_or_call1442 = load { i32, [ 0 x %A* ] }** %vdecl_slot1439
  %len_ptr1443 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1442, i32 0, i32 0
  %len1444 = load i32* %len_ptr1443
  %bop1445 = icmp slt i32 %lhs_or_call1441, %len1444
  br i1 %bop1445, label %__body465, label %__post464

__fresh468:
  br label %__body465

__body465:
  %lhs_or_call1446 = load { i32, [ 0 x %A* ] }** %vdecl_slot1439
  %lhs_or_call1447 = load i32* %vdecl_slot1440
  %bound_ptr1449 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1446, i32 0, i32 0
  %bound1450 = load i32* %bound_ptr1449
  call void @oat_array_bounds_check( i32 %bound1450, i32 %lhs_or_call1447 )
  %elt1448 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1446, i32 0, i32 1, i32 %lhs_or_call1447
  %lhs_or_call1451 = load %A** %elt1448
  %path1452 = getelementptr %A* %lhs_or_call1451, i32 0, i32 2
  %lhs_or_call1453 = load i32* %path1452
  call void @print_int( i32 %lhs_or_call1453 )
  %lhs_or_call1454 = load i32* %vdecl_slot1440
  %bop1455 = add i32 %lhs_or_call1454, 1
  store i32 %bop1455, i32* %vdecl_slot1440
  br label %__cond466

__fresh469:
  br label %__post464

__post464:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh463:
  %cast_op1414 = bitcast %C* %_this1 to %A* 
  %dummy1415 = call %A* @_A_ctor ( %A* %cast_op1414 )
  %path1416 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str280, i8** %path1416
  %vt_slot1417 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable276, %_C_vtable** %vt_slot1417
  %path1418 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1418
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh462:
  %cast_op1409 = bitcast %B* %_this1 to %A* 
  %dummy1410 = call %A* @_A_ctor ( %A* %cast_op1409 )
  %path1411 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str279, i8** %path1411
  %vt_slot1412 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable275, %_B_vtable** %vt_slot1412
  %path1413 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1413
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh461:
  %cast_op1404 = bitcast %A* %_this1 to %Object* 
  %dummy1405 = call %Object* @_Object_ctor ( %Object* %cast_op1404 )
  %path1406 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str278, i8** %path1406
  %vt_slot1407 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable274, %_A_vtable** %vt_slot1407
  %path1408 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1408
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh460:
  %path1402 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1403 = load i8** %path1402
  ret i8* %lhs_or_call1403
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh459:
  %path1400 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str277, i8** %path1400
  %vt_slot1401 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable273, %_Object_vtable** %vt_slot1401
  ret %Object* %_this1
}



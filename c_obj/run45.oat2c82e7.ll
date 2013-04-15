%A = type { %_A_vtable*, i8*, i32, i32, %O*, { i32, [ 0 x %A* ] }* }
%_A_vtable = type { %_O_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, i32 (%A*)* }
%O = type { %_O_vtable*, i8* }
%_O_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str286.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str286 = alias bitcast([ 2 x i8 ]* @_const_str286.str. to i8*)@_const_str285.str. = private unnamed_addr constant [ 2 x i8 ] c "O\00", align 4
@_const_str285 = alias bitcast([ 2 x i8 ]* @_const_str285.str. to i8*)@_const_str284.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str284 = alias bitcast([ 7 x i8 ]* @_const_str284.str. to i8*)@_A_vtable283 = private constant %_A_vtable {%_O_vtable* @_O_vtable282, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_init, void (%A*)* @_A_incr, i32 (%A*)* @_A_sum}, align 4
@_O_vtable282 = private constant %_O_vtable {%_Object_vtable* @_Object_vtable281, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable281 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh514:
  ret void
}


define i32 @program (i32 %argc1573, { i32, [ 0 x i8* ] }* %argv1571){
__fresh513:
  %argc_slot1574 = alloca i32
  store i32 %argc1573, i32* %argc_slot1574
  %argv_slot1572 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1571, { i32, [ 0 x i8* ] }** %argv_slot1572
  %mem_ptr1575 = call i32* @oat_malloc ( i32 24 )
  %obj1576 = bitcast i32* %mem_ptr1575 to %A* 
  %new_obj1577 = call %A* @_A_ctor ( %A* %obj1576 )
  %vdecl_slot1578 = alloca %A*
  store %A* %new_obj1577, %A** %vdecl_slot1578
  %lhs_or_call1579 = load %A** %vdecl_slot1578
  %vtmp1581 = getelementptr %A* %lhs_or_call1579, i32 0, i32 0
  %vtable1580 = load %_A_vtable** %vtmp1581
  %fptmp1582 = getelementptr %_A_vtable* %vtable1580, i32 0, i32 2
  %method1583 = load void (%A*)** %fptmp1582
  call void %method1583( %A* %lhs_or_call1579 )
  %lhs_or_call1584 = load %A** %vdecl_slot1578
  %vtmp1586 = getelementptr %A* %lhs_or_call1584, i32 0, i32 0
  %vtable1585 = load %_A_vtable** %vtmp1586
  %fptmp1587 = getelementptr %_A_vtable* %vtable1585, i32 0, i32 4
  %method1588 = load i32 (%A*)** %fptmp1587
  %ret1589 = call i32 %method1588 ( %A* %lhs_or_call1584 )
  ret i32 %ret1589
}


define i32 @_A_sum (%A* %_this1){
__fresh506:
  %vdecl_slot1519 = alloca i32
  store i32 0, i32* %vdecl_slot1519
  %path1520 = getelementptr %A* %_this1, i32 0, i32 5
  %lhs_or_call1521 = load { i32, [ 0 x %A* ] }** %path1520
  %ifnull_slot1522 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %lhs_or_call1521, { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %ifnull_guard1523 = icmp ne { i32, [ 0 x %A* ] }* %lhs_or_call1521, null
  br i1 %ifnull_guard1523, label %__then505, label %__else504

__fresh507:
  br label %__then505

__then505:
  %vdecl_slot1524 = alloca i32
  store i32 0, i32* %vdecl_slot1524
  br label %__cond499

__cond499:
  %lhs_or_call1525 = load i32* %vdecl_slot1524
  %lhs_or_call1526 = load { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %len_ptr1527 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1526, i32 0, i32 0
  %len1528 = load i32* %len_ptr1527
  %bop1529 = icmp slt i32 %lhs_or_call1525, %len1528
  br i1 %bop1529, label %__body498, label %__post497

__fresh508:
  br label %__body498

__body498:
  %lhs_or_call1530 = load { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %lhs_or_call1531 = load i32* %vdecl_slot1524
  %bound_ptr1533 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1530, i32 0, i32 0
  %bound1534 = load i32* %bound_ptr1533
  call void @oat_array_bounds_check( i32 %bound1534, i32 %lhs_or_call1531 )
  %elt1532 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1530, i32 0, i32 1, i32 %lhs_or_call1531
  %lhs_or_call1535 = load %A** %elt1532
  %vtmp1537 = getelementptr %A* %lhs_or_call1535, i32 0, i32 0
  %vtable1536 = load %_A_vtable** %vtmp1537
  %fptmp1538 = getelementptr %_A_vtable* %vtable1536, i32 0, i32 3
  %method1539 = load void (%A*)** %fptmp1538
  call void %method1539( %A* %lhs_or_call1535 )
  %lhs_or_call1540 = load i32* %vdecl_slot1524
  %bop1541 = add i32 %lhs_or_call1540, 1
  store i32 %bop1541, i32* %vdecl_slot1524
  br label %__cond499

__fresh509:
  br label %__post497

__post497:
  %vdecl_slot1542 = alloca i32
  store i32 0, i32* %vdecl_slot1542
  br label %__cond502

__cond502:
  %lhs_or_call1543 = load i32* %vdecl_slot1542
  %lhs_or_call1544 = load { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %len_ptr1545 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1544, i32 0, i32 0
  %len1546 = load i32* %len_ptr1545
  %bop1547 = icmp slt i32 %lhs_or_call1543, %len1546
  br i1 %bop1547, label %__body501, label %__post500

__fresh510:
  br label %__body501

__body501:
  %lhs_or_call1548 = load i32* %vdecl_slot1519
  %lhs_or_call1549 = load { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %lhs_or_call1550 = load i32* %vdecl_slot1542
  %bound_ptr1552 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1549, i32 0, i32 0
  %bound1553 = load i32* %bound_ptr1552
  call void @oat_array_bounds_check( i32 %bound1553, i32 %lhs_or_call1550 )
  %elt1551 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1549, i32 0, i32 1, i32 %lhs_or_call1550
  %lhs_or_call1554 = load %A** %elt1551
  %path1555 = getelementptr %A* %lhs_or_call1554, i32 0, i32 2
  %lhs_or_call1556 = load i32* %path1555
  %bop1557 = add i32 %lhs_or_call1548, %lhs_or_call1556
  store i32 %bop1557, i32* %vdecl_slot1519
  %lhs_or_call1558 = load i32* %vdecl_slot1519
  %lhs_or_call1559 = load { i32, [ 0 x %A* ] }** %ifnull_slot1522
  %lhs_or_call1560 = load i32* %vdecl_slot1542
  %bound_ptr1562 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1559, i32 0, i32 0
  %bound1563 = load i32* %bound_ptr1562
  call void @oat_array_bounds_check( i32 %bound1563, i32 %lhs_or_call1560 )
  %elt1561 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1559, i32 0, i32 1, i32 %lhs_or_call1560
  %lhs_or_call1564 = load %A** %elt1561
  %path1565 = getelementptr %A* %lhs_or_call1564, i32 0, i32 3
  %lhs_or_call1566 = load i32* %path1565
  %bop1567 = add i32 %lhs_or_call1558, %lhs_or_call1566
  store i32 %bop1567, i32* %vdecl_slot1519
  %lhs_or_call1568 = load i32* %vdecl_slot1542
  %bop1569 = add i32 %lhs_or_call1568, 1
  store i32 %bop1569, i32* %vdecl_slot1542
  br label %__cond502

__fresh511:
  br label %__post500

__post500:
  br label %__merge503

__fresh512:
  br label %__else504

__else504:
  br label %__merge503

__merge503:
  %lhs_or_call1570 = load i32* %vdecl_slot1519
  ret i32 %lhs_or_call1570
}


define void @_A_incr (%A* %_this1){
__fresh496:
  %path1511 = getelementptr %A* %_this1, i32 0, i32 2
  %path1512 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1513 = load i32* %path1512
  %bop1514 = add i32 %lhs_or_call1513, 1
  store i32 %bop1514, i32* %path1511
  %path1515 = getelementptr %A* %_this1, i32 0, i32 3
  %path1516 = getelementptr %A* %_this1, i32 0, i32 3
  %lhs_or_call1517 = load i32* %path1516
  %bop1518 = add i32 %lhs_or_call1517, 1
  store i32 %bop1518, i32* %path1515
  ret void
}


define void @_A_init (%A* %_this1){
__fresh487:
  %path1470 = getelementptr %A* %_this1, i32 0, i32 4
  %mem_ptr1471 = call i32* @oat_malloc ( i32 24 )
  %obj1472 = bitcast i32* %mem_ptr1471 to %A* 
  %new_obj1473 = call %A* @_A_ctor ( %A* %obj1472 )
  %cast_op1474 = bitcast %A* %new_obj1473 to %O* 
  store %O* %cast_op1474, %O** %path1470
  %path1475 = getelementptr %A* %_this1, i32 0, i32 4
  %lhs_or_call1476 = load %O** %path1475
  %ifnull_slot1477 = alloca %O*
  store %O* %lhs_or_call1476, %O** %ifnull_slot1477
  %ifnull_guard1478 = icmp ne %O* %lhs_or_call1476, null
  br i1 %ifnull_guard1478, label %__then483, label %__else482

__fresh488:
  br label %__then483

__then483:
  %lhs_or_call1479 = load %O** %ifnull_slot1477
  %cast_op1480 = bitcast %O* %lhs_or_call1479 to %A* 
  %cast_op1481 = bitcast %A* %cast_op1480 to i8** 
  %cast_op1482 = bitcast %_A_vtable* @_A_vtable283 to i8* 
  %vt_ptr_slot1483 = alloca i8*
  %tmp01485 = load i8** %cast_op1481
  store i8* %tmp01485, i8** %vt_ptr_slot1483
  br label %__loop480

__loop480:
  %tmp11486 = load i8** %vt_ptr_slot1483
  %guard11490 = icmp eq i8* %tmp11486, %cast_op1482
  br i1 %guard11490, label %__then477, label %__fall1479

__fresh489:
  br label %__fall1479

__fall1479:
  %guard21491 = icmp eq i8* %tmp11486, null
  br i1 %guard21491, label %__else476, label %__fall2478

__fresh490:
  br label %__fall2478

__fall2478:
  %tmp21487 = load i8** %vt_ptr_slot1483
  %tmp31488 = bitcast i8* %tmp21487 to i8** 
  %tmp41489 = load i8** %tmp31488
  store i8* %tmp41489, i8** %vt_ptr_slot1483
  br label %__loop480

__fresh491:
  br label %__then477

__then477:
  %var_slot1484 = alloca %A*
  store %A* %cast_op1480, %A** %var_slot1484
  br label %__done475

__fresh492:
  br label %__else476

__else476:
  br label %__done475

__done475:
  br label %__merge481

__fresh493:
  br label %__else482

__else482:
  br label %__merge481

__merge481:
  %path1492 = getelementptr %A* %_this1, i32 0, i32 5
  %array_ptr1493 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1494 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1493 to { i32, [ 0 x %A* ] }* 
  %_tmp2891495 = alloca i32
  store i32 2, i32* %_tmp2891495
  %_tmp2901496 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1494, { i32, [ 0 x %A* ] }** %_tmp2901496
  %vdecl_slot1497 = alloca i32
  store i32 0, i32* %vdecl_slot1497
  br label %__cond486

__cond486:
  %lhs_or_call1498 = load i32* %vdecl_slot1497
  %lhs_or_call1499 = load i32* %_tmp2891495
  %bop1500 = icmp slt i32 %lhs_or_call1498, %lhs_or_call1499
  br i1 %bop1500, label %__body485, label %__post484

__fresh494:
  br label %__body485

__body485:
  %lhs_or_call1501 = load { i32, [ 0 x %A* ] }** %_tmp2901496
  %lhs_or_call1502 = load i32* %vdecl_slot1497
  %bound_ptr1504 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1501, i32 0, i32 0
  %bound1505 = load i32* %bound_ptr1504
  call void @oat_array_bounds_check( i32 %bound1505, i32 %lhs_or_call1502 )
  %elt1503 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1501, i32 0, i32 1, i32 %lhs_or_call1502
  %mem_ptr1506 = call i32* @oat_malloc ( i32 24 )
  %obj1507 = bitcast i32* %mem_ptr1506 to %A* 
  %new_obj1508 = call %A* @_A_ctor ( %A* %obj1507 )
  store %A* %new_obj1508, %A** %elt1503
  %lhs_or_call1509 = load i32* %vdecl_slot1497
  %bop1510 = add i32 %lhs_or_call1509, 1
  store i32 %bop1510, i32* %vdecl_slot1497
  br label %__cond486

__fresh495:
  br label %__post484

__post484:
  store { i32, [ 0 x %A* ] }* %array1494, { i32, [ 0 x %A* ] }** %path1492
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh474:
  %cast_op1464 = bitcast %A* %_this1 to %O* 
  %dummy1465 = call %O* @_O_ctor ( %O* %cast_op1464 )
  %path1466 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str286, i8** %path1466
  %path1467 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %path1467
  %path1468 = getelementptr %A* %_this1, i32 0, i32 3
  store i32 2, i32* %path1468
  %vt_slot1469 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable283, %_A_vtable** %vt_slot1469
  ret %A* %_this1
}


define %O* @_O_ctor (%O* %_this1){
__fresh473:
  %cast_op1460 = bitcast %O* %_this1 to %Object* 
  %dummy1461 = call %Object* @_Object_ctor ( %Object* %cast_op1460 )
  %path1462 = getelementptr %O* %_this1, i32 0, i32 1
  store i8* @_const_str285, i8** %path1462
  %vt_slot1463 = getelementptr %O* %_this1, i32 0, i32 0
  store %_O_vtable* @_O_vtable282, %_O_vtable** %vt_slot1463
  ret %O* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh472:
  %path1458 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1459 = load i8** %path1458
  ret i8* %lhs_or_call1459
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh471:
  %path1456 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str284, i8** %path1456
  %vt_slot1457 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable281, %_Object_vtable** %vt_slot1457
  ret %Object* %_this1
}



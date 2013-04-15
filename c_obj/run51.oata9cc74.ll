%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, %C* (%B*)*, void (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Object* (%A*)*, void (%A*)* }
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
@_const_str305.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str305 = alias bitcast([ 2 x i8 ]* @_const_str305.str. to i8*)@_const_str304.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str304 = alias bitcast([ 2 x i8 ]* @_const_str304.str. to i8*)@_const_str303.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str303 = alias bitcast([ 2 x i8 ]* @_const_str303.str. to i8*)@_const_str302.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str302 = alias bitcast([ 2 x i8 ]* @_const_str302.str. to i8*)@_const_str301.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str301 = alias bitcast([ 2 x i8 ]* @_const_str301.str. to i8*)@_const_str300.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str300 = alias bitcast([ 2 x i8 ]* @_const_str300.str. to i8*)@_const_str299.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str299 = alias bitcast([ 7 x i8 ]* @_const_str299.str. to i8*)@_C_vtable298 = private constant %_C_vtable {%_Object_vtable* @_Object_vtable295, i8* (%Object*)* @_Object_get_name, void (%C*)* @_C_print}, align 4
@_B_vtable297 = private constant %_B_vtable {%_A_vtable* @_A_vtable296, i8* (%Object*)* @_Object_get_name, %C* (%B*)* @_B_f, void (%B*)* @_B_print}, align 4
@_A_vtable296 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable295, i8* (%Object*)* @_Object_get_name, %Object* (%A*)* @_A_f, void (%A*)* @_A_print}, align 4
@_Object_vtable295 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh532:
  ret void
}


define i32 @program (i32 %argc1639, { i32, [ 0 x i8* ] }* %argv1637){
__fresh531:
  %argc_slot1640 = alloca i32
  store i32 %argc1639, i32* %argc_slot1640
  %argv_slot1638 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1637, { i32, [ 0 x i8* ] }** %argv_slot1638
  %mem_ptr1641 = call i32* @oat_malloc ( i32 8 )
  %obj1642 = bitcast i32* %mem_ptr1641 to %A* 
  %new_obj1643 = call %A* @_A_ctor ( %A* %obj1642 )
  %vdecl_slot1644 = alloca %A*
  store %A* %new_obj1643, %A** %vdecl_slot1644
  %mem_ptr1645 = call i32* @oat_malloc ( i32 8 )
  %obj1646 = bitcast i32* %mem_ptr1645 to %B* 
  %new_obj1647 = call %B* @_B_ctor ( %B* %obj1646 )
  %vdecl_slot1648 = alloca %B*
  store %B* %new_obj1647, %B** %vdecl_slot1648
  %mem_ptr1649 = call i32* @oat_malloc ( i32 8 )
  %obj1650 = bitcast i32* %mem_ptr1649 to %C* 
  %new_obj1651 = call %C* @_C_ctor ( %C* %obj1650 )
  %vdecl_slot1652 = alloca %C*
  store %C* %new_obj1651, %C** %vdecl_slot1652
  %lhs_or_call1653 = load %A** %vdecl_slot1644
  %vtmp1655 = getelementptr %A* %lhs_or_call1653, i32 0, i32 0
  %vtable1654 = load %_A_vtable** %vtmp1655
  %fptmp1656 = getelementptr %_A_vtable* %vtable1654, i32 0, i32 3
  %method1657 = load void (%A*)** %fptmp1656
  call void %method1657( %A* %lhs_or_call1653 )
  %lhs_or_call1658 = load %B** %vdecl_slot1648
  %vtmp1660 = getelementptr %B* %lhs_or_call1658, i32 0, i32 0
  %vtable1659 = load %_B_vtable** %vtmp1660
  %fptmp1661 = getelementptr %_B_vtable* %vtable1659, i32 0, i32 3
  %method1662 = load void (%B*)** %fptmp1661
  call void %method1662( %B* %lhs_or_call1658 )
  %lhs_or_call1663 = load %B** %vdecl_slot1648
  %vtmp1665 = getelementptr %B* %lhs_or_call1663, i32 0, i32 0
  %vtable1664 = load %_B_vtable** %vtmp1665
  %fptmp1666 = getelementptr %_B_vtable* %vtable1664, i32 0, i32 2
  %method1667 = load %C* (%B*)** %fptmp1666
  %ret1668 = call %C* %method1667 ( %B* %lhs_or_call1663 )
  %vtmp1670 = getelementptr %C* %ret1668, i32 0, i32 0
  %vtable1669 = load %_C_vtable** %vtmp1670
  %fptmp1671 = getelementptr %_C_vtable* %vtable1669, i32 0, i32 2
  %method1672 = load void (%C*)** %fptmp1671
  call void %method1672( %C* %ret1668 )
  %lhs_or_call1673 = load %C** %vdecl_slot1652
  %vtmp1675 = getelementptr %C* %lhs_or_call1673, i32 0, i32 0
  %vtable1674 = load %_C_vtable** %vtmp1675
  %fptmp1676 = getelementptr %_C_vtable* %vtable1674, i32 0, i32 2
  %method1677 = load void (%C*)** %fptmp1676
  call void %method1677( %C* %lhs_or_call1673 )
  ret i32 0
}


define void @_C_print (%C* %_this1){
__fresh530:
  call void @print_string( i8* @_const_str305 )
  ret void
}


define %C* @_C_ctor (%C* %_this1){
__fresh529:
  %cast_op1633 = bitcast %C* %_this1 to %Object* 
  %dummy1634 = call %Object* @_Object_ctor ( %Object* %cast_op1633 )
  %path1635 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str304, i8** %path1635
  %vt_slot1636 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable298, %_C_vtable** %vt_slot1636
  ret %C* %_this1
}


define void @_B_print (%B* %_this1){
__fresh528:
  call void @print_string( i8* @_const_str303 )
  ret void
}


define %C* @_B_f (%B* %_this1){
__fresh527:
  %mem_ptr1630 = call i32* @oat_malloc ( i32 8 )
  %obj1631 = bitcast i32* %mem_ptr1630 to %C* 
  %new_obj1632 = call %C* @_C_ctor ( %C* %obj1631 )
  ret %C* %new_obj1632
}


define %B* @_B_ctor (%B* %_this1){
__fresh526:
  %cast_op1626 = bitcast %B* %_this1 to %A* 
  %dummy1627 = call %A* @_A_ctor ( %A* %cast_op1626 )
  %path1628 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str302, i8** %path1628
  %vt_slot1629 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable297, %_B_vtable** %vt_slot1629
  ret %B* %_this1
}


define void @_A_print (%A* %_this1){
__fresh525:
  call void @print_string( i8* @_const_str301 )
  ret void
}


define %Object* @_A_f (%A* %_this1){
__fresh524:
  %mem_ptr1622 = call i32* @oat_malloc ( i32 8 )
  %obj1623 = bitcast i32* %mem_ptr1622 to %B* 
  %new_obj1624 = call %B* @_B_ctor ( %B* %obj1623 )
  %cast_op1625 = bitcast %B* %new_obj1624 to %Object* 
  ret %Object* %cast_op1625
}


define %A* @_A_ctor (%A* %_this1){
__fresh523:
  %cast_op1618 = bitcast %A* %_this1 to %Object* 
  %dummy1619 = call %Object* @_Object_ctor ( %Object* %cast_op1618 )
  %path1620 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str300, i8** %path1620
  %vt_slot1621 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable296, %_A_vtable** %vt_slot1621
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh522:
  %path1616 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1617 = load i8** %path1616
  ret i8* %lhs_or_call1617
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh521:
  %path1614 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str299, i8** %path1614
  %vt_slot1615 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable295, %_Object_vtable** %vt_slot1615
  ret %Object* %_this1
}



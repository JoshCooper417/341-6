%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, %B* }
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
@_const_str294.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str294 = alias bitcast([ 2 x i8 ]* @_const_str294.str. to i8*)@_const_str293.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str293 = alias bitcast([ 2 x i8 ]* @_const_str293.str. to i8*)@_const_str292.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str292 = alias bitcast([ 2 x i8 ]* @_const_str292.str. to i8*)@_const_str291.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str291 = alias bitcast([ 2 x i8 ]* @_const_str291.str. to i8*)@_const_str290.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str290 = alias bitcast([ 7 x i8 ]* @_const_str290.str. to i8*)@_B_vtable289 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable287, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable288 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable287, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable287 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh520:
  ret void
}


define i32 @program (i32 %argc1608, { i32, [ 0 x i8* ] }* %argv1606){
__fresh519:
  %argc_slot1609 = alloca i32
  store i32 %argc1608, i32* %argc_slot1609
  %argv_slot1607 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1606, { i32, [ 0 x i8* ] }** %argv_slot1607
  %mem_ptr1610 = call i32* @oat_malloc ( i32 12 )
  %obj1611 = bitcast i32* %mem_ptr1610 to %A* 
  %new_obj1612 = call %A* @_A_ctor ( %A* %obj1611 )
  %vdecl_slot1613 = alloca %A*
  store %A* %new_obj1612, %A** %vdecl_slot1613
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh518:
  %cast_op1602 = bitcast %B* %_this1 to %Object* 
  %dummy1603 = call %Object* @_Object_ctor ( %Object* %cast_op1602 )
  %path1604 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str293, i8** %path1604
  %vt_slot1605 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable289, %_B_vtable** %vt_slot1605
  call void @print_string( i8* @_const_str294 )
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh517:
  %cast_op1594 = bitcast %A* %_this1 to %Object* 
  %dummy1595 = call %Object* @_Object_ctor ( %Object* %cast_op1594 )
  %path1596 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str291, i8** %path1596
  %path1597 = getelementptr %A* %_this1, i32 0, i32 2
  %mem_ptr1598 = call i32* @oat_malloc ( i32 8 )
  %obj1599 = bitcast i32* %mem_ptr1598 to %B* 
  %new_obj1600 = call %B* @_B_ctor ( %B* %obj1599 )
  store %B* %new_obj1600, %B** %path1597
  %vt_slot1601 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable288, %_A_vtable** %vt_slot1601
  call void @print_string( i8* @_const_str292 )
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh516:
  %path1592 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1593 = load i8** %path1592
  ret i8* %lhs_or_call1593
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh515:
  %path1590 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str290, i8** %path1590
  %vt_slot1591 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable287, %_Object_vtable** %vt_slot1591
  ret %Object* %_this1
}



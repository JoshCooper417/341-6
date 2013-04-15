%Stack = type { %_Stack_vtable*, i8*, %Node* }
%_Stack_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Stack*, i32)*, i32 (%Stack*)* }
%Node = type { %_Node_vtable*, i8*, i32, %Node* }
%_Node_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Node*, %Node*)*, i32 (%Node*)* }
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
@s660 = global %Stack* zeroinitializer, align 4		; initialized by @s660.init661
@_const_str659.str. = private unnamed_addr constant [ 26 x i8 ] c "Empty Stack! Returned -1
\00", align 4
@_const_str659 = alias bitcast([ 26 x i8 ]* @_const_str659.str. to i8*)@_const_str658.str. = private unnamed_addr constant [ 6 x i8 ] c "Stack\00", align 4
@_const_str658 = alias bitcast([ 6 x i8 ]* @_const_str658.str. to i8*)@_const_str657.str. = private unnamed_addr constant [ 5 x i8 ] c "Node\00", align 4
@_const_str657 = alias bitcast([ 5 x i8 ]* @_const_str657.str. to i8*)@_const_str656.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str656 = alias bitcast([ 7 x i8 ]* @_const_str656.str. to i8*)@_Stack_vtable655 = private constant %_Stack_vtable {%_Object_vtable* @_Object_vtable653, i8* (%Object*)* @_Object_get_name, void (%Stack*, i32)* @_Stack_push, i32 (%Stack*)* @_Stack_pop}, align 4
@_Node_vtable654 = private constant %_Node_vtable {%_Object_vtable* @_Object_vtable653, i8* (%Object*)* @_Object_get_name, void (%Node*, %Node*)* @_Node_setnext, i32 (%Node*)* @_Node_getitem}, align 4
@_Object_vtable653 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1860:
  call void @s660.init661(  )
  ret void
}


define i32 @program (i32 %argc5647, { i32, [ 0 x i8* ] }* %argv5645){
__fresh1859:
  %argc_slot5648 = alloca i32
  store i32 %argc5647, i32* %argc_slot5648
  %argv_slot5646 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5645, { i32, [ 0 x i8* ] }** %argv_slot5646
  %vdecl_slot5649 = alloca i32
  store i32 0, i32* %vdecl_slot5649
  %lhs_or_call5650 = load %Stack** @s660
  %vtmp5652 = getelementptr %Stack* %lhs_or_call5650, i32 0, i32 0
  %vtable5651 = load %_Stack_vtable** %vtmp5652
  %fptmp5653 = getelementptr %_Stack_vtable* %vtable5651, i32 0, i32 2
  %method5654 = load void (%Stack*, i32)** %fptmp5653
  call void %method5654( %Stack* %lhs_or_call5650, i32 7 )
  %lhs_or_call5655 = load %Stack** @s660
  %vtmp5657 = getelementptr %Stack* %lhs_or_call5655, i32 0, i32 0
  %vtable5656 = load %_Stack_vtable** %vtmp5657
  %fptmp5658 = getelementptr %_Stack_vtable* %vtable5656, i32 0, i32 2
  %method5659 = load void (%Stack*, i32)** %fptmp5658
  call void %method5659( %Stack* %lhs_or_call5655, i32 3 )
  %lhs_or_call5660 = load %Stack** @s660
  %vtmp5662 = getelementptr %Stack* %lhs_or_call5660, i32 0, i32 0
  %vtable5661 = load %_Stack_vtable** %vtmp5662
  %fptmp5663 = getelementptr %_Stack_vtable* %vtable5661, i32 0, i32 2
  %method5664 = load void (%Stack*, i32)** %fptmp5663
  call void %method5664( %Stack* %lhs_or_call5660, i32 9 )
  %lhs_or_call5665 = load i32* %vdecl_slot5649
  %lhs_or_call5666 = load %Stack** @s660
  %vtmp5668 = getelementptr %Stack* %lhs_or_call5666, i32 0, i32 0
  %vtable5667 = load %_Stack_vtable** %vtmp5668
  %fptmp5669 = getelementptr %_Stack_vtable* %vtable5667, i32 0, i32 3
  %method5670 = load i32 (%Stack*)** %fptmp5669
  %ret5671 = call i32 %method5670 ( %Stack* %lhs_or_call5666 )
  %bop5672 = add i32 %lhs_or_call5665, %ret5671
  store i32 %bop5672, i32* %vdecl_slot5649
  %lhs_or_call5673 = load %Stack** @s660
  %vtmp5675 = getelementptr %Stack* %lhs_or_call5673, i32 0, i32 0
  %vtable5674 = load %_Stack_vtable** %vtmp5675
  %fptmp5676 = getelementptr %_Stack_vtable* %vtable5674, i32 0, i32 2
  %method5677 = load void (%Stack*, i32)** %fptmp5676
  call void %method5677( %Stack* %lhs_or_call5673, i32 3 )
  %lhs_or_call5678 = load %Stack** @s660
  %vtmp5680 = getelementptr %Stack* %lhs_or_call5678, i32 0, i32 0
  %vtable5679 = load %_Stack_vtable** %vtmp5680
  %fptmp5681 = getelementptr %_Stack_vtable* %vtable5679, i32 0, i32 2
  %method5682 = load void (%Stack*, i32)** %fptmp5681
  call void %method5682( %Stack* %lhs_or_call5678, i32 17 )
  %lhs_or_call5683 = load %Stack** @s660
  %vtmp5685 = getelementptr %Stack* %lhs_or_call5683, i32 0, i32 0
  %vtable5684 = load %_Stack_vtable** %vtmp5685
  %fptmp5686 = getelementptr %_Stack_vtable* %vtable5684, i32 0, i32 2
  %method5687 = load void (%Stack*, i32)** %fptmp5686
  call void %method5687( %Stack* %lhs_or_call5683, i32 2 )
  %lhs_or_call5688 = load i32* %vdecl_slot5649
  %lhs_or_call5689 = load %Stack** @s660
  %vtmp5691 = getelementptr %Stack* %lhs_or_call5689, i32 0, i32 0
  %vtable5690 = load %_Stack_vtable** %vtmp5691
  %fptmp5692 = getelementptr %_Stack_vtable* %vtable5690, i32 0, i32 3
  %method5693 = load i32 (%Stack*)** %fptmp5692
  %ret5694 = call i32 %method5693 ( %Stack* %lhs_or_call5689 )
  %bop5695 = add i32 %lhs_or_call5688, %ret5694
  store i32 %bop5695, i32* %vdecl_slot5649
  %lhs_or_call5696 = load %Stack** @s660
  %vtmp5698 = getelementptr %Stack* %lhs_or_call5696, i32 0, i32 0
  %vtable5697 = load %_Stack_vtable** %vtmp5698
  %fptmp5699 = getelementptr %_Stack_vtable* %vtable5697, i32 0, i32 2
  %method5700 = load void (%Stack*, i32)** %fptmp5699
  call void %method5700( %Stack* %lhs_or_call5696, i32 1 )
  %lhs_or_call5701 = load %Stack** @s660
  %vtmp5703 = getelementptr %Stack* %lhs_or_call5701, i32 0, i32 0
  %vtable5702 = load %_Stack_vtable** %vtmp5703
  %fptmp5704 = getelementptr %_Stack_vtable* %vtable5702, i32 0, i32 2
  %method5705 = load void (%Stack*, i32)** %fptmp5704
  call void %method5705( %Stack* %lhs_or_call5701, i32 98 )
  %lhs_or_call5706 = load i32* %vdecl_slot5649
  %lhs_or_call5707 = load %Stack** @s660
  %vtmp5709 = getelementptr %Stack* %lhs_or_call5707, i32 0, i32 0
  %vtable5708 = load %_Stack_vtable** %vtmp5709
  %fptmp5710 = getelementptr %_Stack_vtable* %vtable5708, i32 0, i32 3
  %method5711 = load i32 (%Stack*)** %fptmp5710
  %ret5712 = call i32 %method5711 ( %Stack* %lhs_or_call5707 )
  %bop5713 = add i32 %lhs_or_call5706, %ret5712
  store i32 %bop5713, i32* %vdecl_slot5649
  %lhs_or_call5714 = load %Stack** @s660
  %vtmp5716 = getelementptr %Stack* %lhs_or_call5714, i32 0, i32 0
  %vtable5715 = load %_Stack_vtable** %vtmp5716
  %fptmp5717 = getelementptr %_Stack_vtable* %vtable5715, i32 0, i32 2
  %method5718 = load void (%Stack*, i32)** %fptmp5717
  call void %method5718( %Stack* %lhs_or_call5714, i32 43 )
  %lhs_or_call5719 = load %Stack** @s660
  %vtmp5721 = getelementptr %Stack* %lhs_or_call5719, i32 0, i32 0
  %vtable5720 = load %_Stack_vtable** %vtmp5721
  %fptmp5722 = getelementptr %_Stack_vtable* %vtable5720, i32 0, i32 2
  %method5723 = load void (%Stack*, i32)** %fptmp5722
  call void %method5723( %Stack* %lhs_or_call5719, i32 11 )
  %lhs_or_call5724 = load i32* %vdecl_slot5649
  %lhs_or_call5725 = load %Stack** @s660
  %vtmp5727 = getelementptr %Stack* %lhs_or_call5725, i32 0, i32 0
  %vtable5726 = load %_Stack_vtable** %vtmp5727
  %fptmp5728 = getelementptr %_Stack_vtable* %vtable5726, i32 0, i32 3
  %method5729 = load i32 (%Stack*)** %fptmp5728
  %ret5730 = call i32 %method5729 ( %Stack* %lhs_or_call5725 )
  %bop5731 = add i32 %lhs_or_call5724, %ret5730
  store i32 %bop5731, i32* %vdecl_slot5649
  %lhs_or_call5732 = load i32* %vdecl_slot5649
  ret i32 %lhs_or_call5732
}


define void @s660.init661 (){
__fresh1858:
  %mem_ptr5642 = call i32* @oat_malloc ( i32 12 )
  %obj5643 = bitcast i32* %mem_ptr5642 to %Stack* 
  %new_obj5644 = call %Stack* @_Stack_ctor ( %Stack* %obj5643 )
  store %Stack* %new_obj5644, %Stack** @s660
  ret void
}


define i32 @_Stack_pop (%Stack* %_this1){
__fresh1855:
  %unop5623 = sub i32 0, 1
  %vdecl_slot5624 = alloca i32
  store i32 %unop5623, i32* %vdecl_slot5624
  %path5625 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5626 = load %Node** %path5625
  %ifnull_slot5627 = alloca %Node*
  store %Node* %lhs_or_call5626, %Node** %ifnull_slot5627
  %ifnull_guard5628 = icmp ne %Node* %lhs_or_call5626, null
  br i1 %ifnull_guard5628, label %__then1854, label %__else1853

__fresh1856:
  br label %__then1854

__then1854:
  %lhs_or_call5629 = load %Node** %ifnull_slot5627
  %vtmp5631 = getelementptr %Node* %lhs_or_call5629, i32 0, i32 0
  %vtable5630 = load %_Node_vtable** %vtmp5631
  %fptmp5632 = getelementptr %_Node_vtable* %vtable5630, i32 0, i32 3
  %method5633 = load i32 (%Node*)** %fptmp5632
  %ret5634 = call i32 %method5633 ( %Node* %lhs_or_call5629 )
  %vdecl_slot5635 = alloca i32
  store i32 %ret5634, i32* %vdecl_slot5635
  %path5636 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5637 = load %Node** %ifnull_slot5627
  %path5638 = getelementptr %Node* %lhs_or_call5637, i32 0, i32 3
  %lhs_or_call5639 = load %Node** %path5638
  store %Node* %lhs_or_call5639, %Node** %path5636
  %lhs_or_call5640 = load i32* %vdecl_slot5635
  store i32 %lhs_or_call5640, i32* %vdecl_slot5624
  br label %__merge1852

__fresh1857:
  br label %__else1853

__else1853:
  call void @print_string( i8* @_const_str659 )
  br label %__merge1852

__merge1852:
  %lhs_or_call5641 = load i32* %vdecl_slot5624
  ret i32 %lhs_or_call5641
}


define void @_Stack_push (%Stack* %_this1, i32 %n5607){
__fresh1851:
  %n_slot5608 = alloca i32
  store i32 %n5607, i32* %n_slot5608
  %lhs_or_call5609 = load i32* %n_slot5608
  %mem_ptr5610 = call i32* @oat_malloc ( i32 16 )
  %obj5611 = bitcast i32* %mem_ptr5610 to %Node* 
  %new_obj5612 = call %Node* @_Node_ctor ( %Node* %obj5611, i32 %lhs_or_call5609 )
  %vdecl_slot5613 = alloca %Node*
  store %Node* %new_obj5612, %Node** %vdecl_slot5613
  %lhs_or_call5616 = load %Node** %vdecl_slot5613
  %vtmp5618 = getelementptr %Node* %lhs_or_call5616, i32 0, i32 0
  %vtable5617 = load %_Node_vtable** %vtmp5618
  %fptmp5619 = getelementptr %_Node_vtable* %vtable5617, i32 0, i32 2
  %method5620 = load void (%Node*, %Node*)** %fptmp5619
  %path5614 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5615 = load %Node** %path5614
  call void %method5620( %Node* %lhs_or_call5616, %Node* %lhs_or_call5615 )
  %path5621 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5622 = load %Node** %vdecl_slot5613
  store %Node* %lhs_or_call5622, %Node** %path5621
  ret void
}


define %Stack* @_Stack_ctor (%Stack* %_this1){
__fresh1850:
  %cast_op5601 = bitcast %Stack* %_this1 to %Object* 
  %dummy5602 = call %Object* @_Object_ctor ( %Object* %cast_op5601 )
  %path5603 = getelementptr %Stack* %_this1, i32 0, i32 1
  store i8* @_const_str658, i8** %path5603
  %vt_slot5604 = getelementptr %Stack* %_this1, i32 0, i32 0
  store %_Stack_vtable* @_Stack_vtable655, %_Stack_vtable** %vt_slot5604
  %path5605 = getelementptr %Stack* %_this1, i32 0, i32 2
  %cast_op5606 = bitcast i8* null to %Node* 
  store %Node* %cast_op5606, %Node** %path5605
  ret %Stack* %_this1
}


define i32 @_Node_getitem (%Node* %_this1){
__fresh1849:
  %path5599 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5600 = load i32* %path5599
  ret i32 %lhs_or_call5600
}


define void @_Node_setnext (%Node* %_this1, %Node* %t5595){
__fresh1848:
  %t_slot5596 = alloca %Node*
  store %Node* %t5595, %Node** %t_slot5596
  %path5597 = getelementptr %Node* %_this1, i32 0, i32 3
  %lhs_or_call5598 = load %Node** %t_slot5596
  store %Node* %lhs_or_call5598, %Node** %path5597
  ret void
}


define %Node* @_Node_ctor (%Node* %_this1, i32 %val5585){
__fresh1847:
  %val_slot5586 = alloca i32
  store i32 %val5585, i32* %val_slot5586
  %cast_op5587 = bitcast %Node* %_this1 to %Object* 
  %dummy5588 = call %Object* @_Object_ctor ( %Object* %cast_op5587 )
  %path5589 = getelementptr %Node* %_this1, i32 0, i32 1
  store i8* @_const_str657, i8** %path5589
  %vt_slot5590 = getelementptr %Node* %_this1, i32 0, i32 0
  store %_Node_vtable* @_Node_vtable654, %_Node_vtable** %vt_slot5590
  %path5591 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5592 = load i32* %val_slot5586
  store i32 %lhs_or_call5592, i32* %path5591
  %path5593 = getelementptr %Node* %_this1, i32 0, i32 3
  %cast_op5594 = bitcast i8* null to %Node* 
  store %Node* %cast_op5594, %Node** %path5593
  ret %Node* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1846:
  %path5583 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5584 = load i8** %path5583
  ret i8* %lhs_or_call5584
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1845:
  %path5581 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str656, i8** %path5581
  %vt_slot5582 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable653, %_Object_vtable** %vt_slot5582
  ret %Object* %_this1
}



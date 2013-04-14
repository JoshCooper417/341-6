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


define i32 @program (i32 %argc5656, { i32, [ 0 x i8* ] }* %argv5654){
__fresh1859:
  %argc_slot5657 = alloca i32
  store i32 %argc5656, i32* %argc_slot5657
  %argv_slot5655 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5654, { i32, [ 0 x i8* ] }** %argv_slot5655
  %vdecl_slot5658 = alloca i32
  store i32 0, i32* %vdecl_slot5658
  %lhs_or_call5659 = load %Stack** @s660
  %vtmp5661 = getelementptr %Stack* %lhs_or_call5659, i32 0, i32 0
  %vtable5660 = load %_Stack_vtable** %vtmp5661
  %fptmp5662 = getelementptr %_Stack_vtable* %vtable5660, i32 0, i32 2
  %method5663 = load void (%Stack*, i32)** %fptmp5662
  call void %method5663( %Stack* %lhs_or_call5659, i32 7 )
  %lhs_or_call5664 = load %Stack** @s660
  %vtmp5666 = getelementptr %Stack* %lhs_or_call5664, i32 0, i32 0
  %vtable5665 = load %_Stack_vtable** %vtmp5666
  %fptmp5667 = getelementptr %_Stack_vtable* %vtable5665, i32 0, i32 2
  %method5668 = load void (%Stack*, i32)** %fptmp5667
  call void %method5668( %Stack* %lhs_or_call5664, i32 3 )
  %lhs_or_call5669 = load %Stack** @s660
  %vtmp5671 = getelementptr %Stack* %lhs_or_call5669, i32 0, i32 0
  %vtable5670 = load %_Stack_vtable** %vtmp5671
  %fptmp5672 = getelementptr %_Stack_vtable* %vtable5670, i32 0, i32 2
  %method5673 = load void (%Stack*, i32)** %fptmp5672
  call void %method5673( %Stack* %lhs_or_call5669, i32 9 )
  %lhs_or_call5674 = load i32* %vdecl_slot5658
  %lhs_or_call5675 = load %Stack** @s660
  %vtmp5677 = getelementptr %Stack* %lhs_or_call5675, i32 0, i32 0
  %vtable5676 = load %_Stack_vtable** %vtmp5677
  %fptmp5678 = getelementptr %_Stack_vtable* %vtable5676, i32 0, i32 3
  %method5679 = load i32 (%Stack*)** %fptmp5678
  %ret5680 = call i32 %method5679 ( %Stack* %lhs_or_call5675 )
  %bop5681 = add i32 %lhs_or_call5674, %ret5680
  store i32 %bop5681, i32* %vdecl_slot5658
  %lhs_or_call5682 = load %Stack** @s660
  %vtmp5684 = getelementptr %Stack* %lhs_or_call5682, i32 0, i32 0
  %vtable5683 = load %_Stack_vtable** %vtmp5684
  %fptmp5685 = getelementptr %_Stack_vtable* %vtable5683, i32 0, i32 2
  %method5686 = load void (%Stack*, i32)** %fptmp5685
  call void %method5686( %Stack* %lhs_or_call5682, i32 3 )
  %lhs_or_call5687 = load %Stack** @s660
  %vtmp5689 = getelementptr %Stack* %lhs_or_call5687, i32 0, i32 0
  %vtable5688 = load %_Stack_vtable** %vtmp5689
  %fptmp5690 = getelementptr %_Stack_vtable* %vtable5688, i32 0, i32 2
  %method5691 = load void (%Stack*, i32)** %fptmp5690
  call void %method5691( %Stack* %lhs_or_call5687, i32 17 )
  %lhs_or_call5692 = load %Stack** @s660
  %vtmp5694 = getelementptr %Stack* %lhs_or_call5692, i32 0, i32 0
  %vtable5693 = load %_Stack_vtable** %vtmp5694
  %fptmp5695 = getelementptr %_Stack_vtable* %vtable5693, i32 0, i32 2
  %method5696 = load void (%Stack*, i32)** %fptmp5695
  call void %method5696( %Stack* %lhs_or_call5692, i32 2 )
  %lhs_or_call5697 = load i32* %vdecl_slot5658
  %lhs_or_call5698 = load %Stack** @s660
  %vtmp5700 = getelementptr %Stack* %lhs_or_call5698, i32 0, i32 0
  %vtable5699 = load %_Stack_vtable** %vtmp5700
  %fptmp5701 = getelementptr %_Stack_vtable* %vtable5699, i32 0, i32 3
  %method5702 = load i32 (%Stack*)** %fptmp5701
  %ret5703 = call i32 %method5702 ( %Stack* %lhs_or_call5698 )
  %bop5704 = add i32 %lhs_or_call5697, %ret5703
  store i32 %bop5704, i32* %vdecl_slot5658
  %lhs_or_call5705 = load %Stack** @s660
  %vtmp5707 = getelementptr %Stack* %lhs_or_call5705, i32 0, i32 0
  %vtable5706 = load %_Stack_vtable** %vtmp5707
  %fptmp5708 = getelementptr %_Stack_vtable* %vtable5706, i32 0, i32 2
  %method5709 = load void (%Stack*, i32)** %fptmp5708
  call void %method5709( %Stack* %lhs_or_call5705, i32 1 )
  %lhs_or_call5710 = load %Stack** @s660
  %vtmp5712 = getelementptr %Stack* %lhs_or_call5710, i32 0, i32 0
  %vtable5711 = load %_Stack_vtable** %vtmp5712
  %fptmp5713 = getelementptr %_Stack_vtable* %vtable5711, i32 0, i32 2
  %method5714 = load void (%Stack*, i32)** %fptmp5713
  call void %method5714( %Stack* %lhs_or_call5710, i32 98 )
  %lhs_or_call5715 = load i32* %vdecl_slot5658
  %lhs_or_call5716 = load %Stack** @s660
  %vtmp5718 = getelementptr %Stack* %lhs_or_call5716, i32 0, i32 0
  %vtable5717 = load %_Stack_vtable** %vtmp5718
  %fptmp5719 = getelementptr %_Stack_vtable* %vtable5717, i32 0, i32 3
  %method5720 = load i32 (%Stack*)** %fptmp5719
  %ret5721 = call i32 %method5720 ( %Stack* %lhs_or_call5716 )
  %bop5722 = add i32 %lhs_or_call5715, %ret5721
  store i32 %bop5722, i32* %vdecl_slot5658
  %lhs_or_call5723 = load %Stack** @s660
  %vtmp5725 = getelementptr %Stack* %lhs_or_call5723, i32 0, i32 0
  %vtable5724 = load %_Stack_vtable** %vtmp5725
  %fptmp5726 = getelementptr %_Stack_vtable* %vtable5724, i32 0, i32 2
  %method5727 = load void (%Stack*, i32)** %fptmp5726
  call void %method5727( %Stack* %lhs_or_call5723, i32 43 )
  %lhs_or_call5728 = load %Stack** @s660
  %vtmp5730 = getelementptr %Stack* %lhs_or_call5728, i32 0, i32 0
  %vtable5729 = load %_Stack_vtable** %vtmp5730
  %fptmp5731 = getelementptr %_Stack_vtable* %vtable5729, i32 0, i32 2
  %method5732 = load void (%Stack*, i32)** %fptmp5731
  call void %method5732( %Stack* %lhs_or_call5728, i32 11 )
  %lhs_or_call5733 = load i32* %vdecl_slot5658
  %lhs_or_call5734 = load %Stack** @s660
  %vtmp5736 = getelementptr %Stack* %lhs_or_call5734, i32 0, i32 0
  %vtable5735 = load %_Stack_vtable** %vtmp5736
  %fptmp5737 = getelementptr %_Stack_vtable* %vtable5735, i32 0, i32 3
  %method5738 = load i32 (%Stack*)** %fptmp5737
  %ret5739 = call i32 %method5738 ( %Stack* %lhs_or_call5734 )
  %bop5740 = add i32 %lhs_or_call5733, %ret5739
  store i32 %bop5740, i32* %vdecl_slot5658
  %lhs_or_call5741 = load i32* %vdecl_slot5658
  ret i32 %lhs_or_call5741
}


define void @s660.init661 (){
__fresh1858:
  %mem_ptr5651 = call i32* @oat_malloc ( i32 12 )
  %obj5652 = bitcast i32* %mem_ptr5651 to %Stack* 
  %new_obj5653 = call %Stack* @_Stack_ctor ( %Stack* %obj5652 )
  store %Stack* %new_obj5653, %Stack** @s660
  ret void
}


define i32 @_Stack_pop (%Stack* %_this1){
__fresh1855:
  %unop5632 = sub i32 0, 1
  %vdecl_slot5633 = alloca i32
  store i32 %unop5632, i32* %vdecl_slot5633
  %path5634 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5635 = load %Node** %path5634
  %ifnull_slot5636 = alloca %Node*
  store %Node* %lhs_or_call5635, %Node** %ifnull_slot5636
  %ifnull_guard5637 = icmp ne %Node* %lhs_or_call5635, null
  br i1 %ifnull_guard5637, label %__then1854, label %__else1853

__fresh1856:
  br label %__then1854

__then1854:
  %lhs_or_call5638 = load %Node** %ifnull_slot5636
  %vtmp5640 = getelementptr %Node* %lhs_or_call5638, i32 0, i32 0
  %vtable5639 = load %_Node_vtable** %vtmp5640
  %fptmp5641 = getelementptr %_Node_vtable* %vtable5639, i32 0, i32 3
  %method5642 = load i32 (%Node*)** %fptmp5641
  %ret5643 = call i32 %method5642 ( %Node* %lhs_or_call5638 )
  %vdecl_slot5644 = alloca i32
  store i32 %ret5643, i32* %vdecl_slot5644
  %path5645 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5646 = load %Node** %ifnull_slot5636
  %path5647 = getelementptr %Node* %lhs_or_call5646, i32 0, i32 3
  %lhs_or_call5648 = load %Node** %path5647
  store %Node* %lhs_or_call5648, %Node** %path5645
  %lhs_or_call5649 = load i32* %vdecl_slot5644
  store i32 %lhs_or_call5649, i32* %vdecl_slot5633
  br label %__merge1852

__fresh1857:
  br label %__else1853

__else1853:
  call void @print_string( i8* @_const_str659 )
  br label %__merge1852

__merge1852:
  %lhs_or_call5650 = load i32* %vdecl_slot5633
  ret i32 %lhs_or_call5650
}


define void @_Stack_push (%Stack* %_this1, i32 %n5616){
__fresh1851:
  %n_slot5617 = alloca i32
  store i32 %n5616, i32* %n_slot5617
  %lhs_or_call5618 = load i32* %n_slot5617
  %mem_ptr5619 = call i32* @oat_malloc ( i32 16 )
  %obj5620 = bitcast i32* %mem_ptr5619 to %Node* 
  %new_obj5621 = call %Node* @_Node_ctor ( %Node* %obj5620, i32 %lhs_or_call5618 )
  %vdecl_slot5622 = alloca %Node*
  store %Node* %new_obj5621, %Node** %vdecl_slot5622
  %lhs_or_call5625 = load %Node** %vdecl_slot5622
  %vtmp5627 = getelementptr %Node* %lhs_or_call5625, i32 0, i32 0
  %vtable5626 = load %_Node_vtable** %vtmp5627
  %fptmp5628 = getelementptr %_Node_vtable* %vtable5626, i32 0, i32 2
  %method5629 = load void (%Node*, %Node*)** %fptmp5628
  %path5623 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5624 = load %Node** %path5623
  call void %method5629( %Node* %lhs_or_call5625, %Node* %lhs_or_call5624 )
  %path5630 = getelementptr %Stack* %_this1, i32 0, i32 2
  %lhs_or_call5631 = load %Node** %vdecl_slot5622
  store %Node* %lhs_or_call5631, %Node** %path5630
  ret void
}


define %Stack* @_Stack_ctor (%Stack* %_this1){
__fresh1850:
  %cast_op5610 = bitcast %Stack* %_this1 to %Object* 
  %dummy5611 = call %Object* @_Object_ctor ( %Object* %cast_op5610 )
  %path5612 = getelementptr %Stack* %_this1, i32 0, i32 1
  store i8* @_const_str658, i8** %path5612
  %vt_slot5613 = getelementptr %Stack* %_this1, i32 0, i32 0
  store %_Stack_vtable* @_Stack_vtable655, %_Stack_vtable** %vt_slot5613
  %path5614 = getelementptr %Stack* %_this1, i32 0, i32 2
  %cast_op5615 = bitcast i8* null to %Node* 
  store %Node* %cast_op5615, %Node** %path5614
  ret %Stack* %_this1
}


define i32 @_Node_getitem (%Node* %_this1){
__fresh1849:
  %path5608 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5609 = load i32* %path5608
  ret i32 %lhs_or_call5609
}


define void @_Node_setnext (%Node* %_this1, %Node* %t5604){
__fresh1848:
  %t_slot5605 = alloca %Node*
  store %Node* %t5604, %Node** %t_slot5605
  %path5606 = getelementptr %Node* %_this1, i32 0, i32 3
  %lhs_or_call5607 = load %Node** %t_slot5605
  store %Node* %lhs_or_call5607, %Node** %path5606
  ret void
}


define %Node* @_Node_ctor (%Node* %_this1, i32 %val5594){
__fresh1847:
  %val_slot5595 = alloca i32
  store i32 %val5594, i32* %val_slot5595
  %cast_op5596 = bitcast %Node* %_this1 to %Object* 
  %dummy5597 = call %Object* @_Object_ctor ( %Object* %cast_op5596 )
  %path5598 = getelementptr %Node* %_this1, i32 0, i32 1
  store i8* @_const_str657, i8** %path5598
  %vt_slot5599 = getelementptr %Node* %_this1, i32 0, i32 0
  store %_Node_vtable* @_Node_vtable654, %_Node_vtable** %vt_slot5599
  %path5600 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5601 = load i32* %val_slot5595
  store i32 %lhs_or_call5601, i32* %path5600
  %path5602 = getelementptr %Node* %_this1, i32 0, i32 3
  %cast_op5603 = bitcast i8* null to %Node* 
  store %Node* %cast_op5603, %Node** %path5602
  ret %Node* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1846:
  %path5592 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5593 = load i8** %path5592
  ret i8* %lhs_or_call5593
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1845:
  %path5590 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str656, i8** %path5590
  %vt_slot5591 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable653, %_Object_vtable** %vt_slot5591
  ret %Object* %_this1
}



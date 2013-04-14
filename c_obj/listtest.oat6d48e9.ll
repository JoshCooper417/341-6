%Foo = type { %_Foo_vtable*, i8*, i32 }
%_Foo_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Foo*)* }
%List = type { %_List_vtable*, i8*, %ListItem* }
%_List_vtable = type { %_Object_vtable*, i8* (%Object*)*, i1 (%List*)*, void (%List*, %Object*)*, void (%List*, %ListItem*)* }
%ListItem = type { %_ListItem_vtable*, i8*, %Object*, %ListItem*, %ListItem* }
%_ListItem_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@l651 = global %List* zeroinitializer, align 4		; initialized by @l651.init652
@_const_str650.str. = private unnamed_addr constant [ 12 x i8 ] c "failed null\00", align 4
@_const_str650 = alias bitcast([ 12 x i8 ]* @_const_str650.str. to i8*)@_const_str649.str. = private unnamed_addr constant [ 12 x i8 ] c "failed cast\00", align 4
@_const_str649 = alias bitcast([ 12 x i8 ]* @_const_str649.str. to i8*)@_const_str648.str. = private unnamed_addr constant [ 4 x i8 ] c "Foo\00", align 4
@_const_str648 = alias bitcast([ 4 x i8 ]* @_const_str648.str. to i8*)@_const_str647.str. = private unnamed_addr constant [ 13 x i8 ] c "invalid list\00", align 4
@_const_str647 = alias bitcast([ 13 x i8 ]* @_const_str647.str. to i8*)@_const_str646.str. = private unnamed_addr constant [ 5 x i8 ] c "List\00", align 4
@_const_str646 = alias bitcast([ 5 x i8 ]* @_const_str646.str. to i8*)@_const_str645.str. = private unnamed_addr constant [ 9 x i8 ] c "ListItem\00", align 4
@_const_str645 = alias bitcast([ 9 x i8 ]* @_const_str645.str. to i8*)@_const_str644.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str644 = alias bitcast([ 7 x i8 ]* @_const_str644.str. to i8*)@_Foo_vtable643 = private constant %_Foo_vtable {%_Object_vtable* @_Object_vtable640, i8* (%Object*)* @_Object_get_name, void (%Foo*)* @_Foo_print}, align 4
@_List_vtable642 = private constant %_List_vtable {%_Object_vtable* @_Object_vtable640, i8* (%Object*)* @_Object_get_name, i1 (%List*)* @_List_is_empty, void (%List*, %Object*)* @_List_insert, void (%List*, %ListItem*)* @_List_remove}, align 4
@_ListItem_vtable641 = private constant %_ListItem_vtable {%_Object_vtable* @_Object_vtable640, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable640 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1844:
  call void @l651.init652(  )
  ret void
}


define i32 @program (i32 %argc5552, { i32, [ 0 x i8* ] }* %argv5550){
__fresh1837:
  %argc_slot5553 = alloca i32
  store i32 %argc5552, i32* %argc_slot5553
  %argv_slot5551 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5550, { i32, [ 0 x i8* ] }** %argv_slot5551
  %cast_op5554 = bitcast i8* null to %ListItem* 
  %vdecl_slot5555 = alloca %ListItem*
  store %ListItem* %cast_op5554, %ListItem** %vdecl_slot5555
  %vdecl_slot5556 = alloca i32
  store i32 0, i32* %vdecl_slot5556
  br label %__cond1830

__cond1830:
  %lhs_or_call5557 = load i32* %vdecl_slot5556
  %bop5558 = icmp slt i32 %lhs_or_call5557, 10
  br i1 %bop5558, label %__body1829, label %__post1828

__fresh1838:
  br label %__body1829

__body1829:
  %lhs_or_call5563 = load %List** @l651
  %vtmp5565 = getelementptr %List* %lhs_or_call5563, i32 0, i32 0
  %vtable5564 = load %_List_vtable** %vtmp5565
  %fptmp5566 = getelementptr %_List_vtable* %vtable5564, i32 0, i32 3
  %method5567 = load void (%List*, %Object*)** %fptmp5566
  %lhs_or_call5559 = load i32* %vdecl_slot5556
  %mem_ptr5560 = call i32* @oat_malloc ( i32 12 )
  %obj5561 = bitcast i32* %mem_ptr5560 to %Foo* 
  %new_obj5562 = call %Foo* @_Foo_ctor ( %Foo* %obj5561, i32 %lhs_or_call5559 )
  %cast_op5568 = bitcast %Foo* %new_obj5562 to %Object* 
  call void %method5567( %List* %lhs_or_call5563, %Object* %cast_op5568 )
  %lhs_or_call5569 = load i32* %vdecl_slot5556
  %bop5570 = add i32 %lhs_or_call5569, 1
  store i32 %bop5570, i32* %vdecl_slot5556
  br label %__cond1830

__fresh1839:
  br label %__post1828

__post1828:
  %lhs_or_call5571 = load %List** @l651
  call void @printFooList( %List* %lhs_or_call5571 )
  %lhs_or_call5572 = load %List** @l651
  %path5573 = getelementptr %List* %lhs_or_call5572, i32 0, i32 2
  %lhs_or_call5574 = load %ListItem** %path5573
  store %ListItem* %lhs_or_call5574, %ListItem** %vdecl_slot5555
  %lhs_or_call5575 = load %ListItem** %vdecl_slot5555
  %ifnull_slot5576 = alloca %ListItem*
  store %ListItem* %lhs_or_call5575, %ListItem** %ifnull_slot5576
  %ifnull_guard5577 = icmp ne %ListItem* %lhs_or_call5575, null
  br i1 %ifnull_guard5577, label %__then1836, label %__else1835

__fresh1840:
  br label %__then1836

__then1836:
  %lhs_or_call5578 = load %ListItem** %ifnull_slot5576
  %path5579 = getelementptr %ListItem* %lhs_or_call5578, i32 0, i32 4
  %lhs_or_call5580 = load %ListItem** %path5579
  %ifnull_slot5581 = alloca %ListItem*
  store %ListItem* %lhs_or_call5580, %ListItem** %ifnull_slot5581
  %ifnull_guard5582 = icmp ne %ListItem* %lhs_or_call5580, null
  br i1 %ifnull_guard5582, label %__then1833, label %__else1832

__fresh1841:
  br label %__then1833

__then1833:
  %lhs_or_call5584 = load %List** @l651
  %vtmp5586 = getelementptr %List* %lhs_or_call5584, i32 0, i32 0
  %vtable5585 = load %_List_vtable** %vtmp5586
  %fptmp5587 = getelementptr %_List_vtable* %vtable5585, i32 0, i32 4
  %method5588 = load void (%List*, %ListItem*)** %fptmp5587
  %lhs_or_call5583 = load %ListItem** %ifnull_slot5581
  call void %method5588( %List* %lhs_or_call5584, %ListItem* %lhs_or_call5583 )
  br label %__merge1831

__fresh1842:
  br label %__else1832

__else1832:
  br label %__merge1831

__merge1831:
  br label %__merge1834

__fresh1843:
  br label %__else1835

__else1835:
  br label %__merge1834

__merge1834:
  %lhs_or_call5589 = load %List** @l651
  call void @printFooList( %List* %lhs_or_call5589 )
  ret i32 0
}


define void @l651.init652 (){
__fresh1827:
  %mem_ptr5547 = call i32* @oat_malloc ( i32 12 )
  %obj5548 = bitcast i32* %mem_ptr5547 to %List* 
  %new_obj5549 = call %List* @_List_ctor ( %List* %obj5548 )
  store %List* %new_obj5549, %List** @l651
  ret void
}


define void @printFooList (%List* %l5507){
__fresh1816:
  %l_slot5508 = alloca %List*
  store %List* %l5507, %List** %l_slot5508
  %lhs_or_call5509 = load %List** %l_slot5508
  %path5510 = getelementptr %List* %lhs_or_call5509, i32 0, i32 2
  %lhs_or_call5511 = load %ListItem** %path5510
  %vdecl_slot5512 = alloca %ListItem*
  store %ListItem* %lhs_or_call5511, %ListItem** %vdecl_slot5512
  br label %__cond1803

__cond1803:
  %lhs_or_call5513 = load %ListItem** %vdecl_slot5512
  %cast_op5514 = bitcast i8* null to %Object* 
  %cast_op5515 = bitcast %ListItem* %lhs_or_call5513 to %Object* 
  %ret5516 = call i1 @equals ( %Object* %cast_op5515, %Object* %cast_op5514 )
  %unop5517 = icmp eq i1 %ret5516, 0
  br i1 %unop5517, label %__body1802, label %__post1801

__fresh1817:
  br label %__body1802

__body1802:
  %lhs_or_call5518 = load %ListItem** %vdecl_slot5512
  %ifnull_slot5519 = alloca %ListItem*
  store %ListItem* %lhs_or_call5518, %ListItem** %ifnull_slot5519
  %ifnull_guard5520 = icmp ne %ListItem* %lhs_or_call5518, null
  br i1 %ifnull_guard5520, label %__then1815, label %__else1814

__fresh1818:
  br label %__then1815

__then1815:
  %lhs_or_call5521 = load %ListItem** %ifnull_slot5519
  %path5522 = getelementptr %ListItem* %lhs_or_call5521, i32 0, i32 2
  %lhs_or_call5523 = load %Object** %path5522
  %ifnull_slot5524 = alloca %Object*
  store %Object* %lhs_or_call5523, %Object** %ifnull_slot5524
  %ifnull_guard5525 = icmp ne %Object* %lhs_or_call5523, null
  br i1 %ifnull_guard5525, label %__then1812, label %__else1811

__fresh1819:
  br label %__then1812

__then1812:
  %lhs_or_call5526 = load %Object** %ifnull_slot5524
  %cast_op5527 = bitcast %Object* %lhs_or_call5526 to %Foo* 
  %cast_op5528 = bitcast %Foo* %cast_op5527 to i8** 
  %cast_op5529 = bitcast %_Foo_vtable* @_Foo_vtable643 to i8* 
  %vt_ptr_slot5530 = alloca i8*
  %tmp05532 = load i8** %cast_op5528
  store i8* %tmp05532, i8** %vt_ptr_slot5530
  br label %__loop1809

__loop1809:
  %tmp15533 = load i8** %vt_ptr_slot5530
  %guard15537 = icmp eq i8* %tmp15533, %cast_op5529
  br i1 %guard15537, label %__then1806, label %__fall11808

__fresh1820:
  br label %__fall11808

__fall11808:
  %guard25538 = icmp eq i8* %tmp15533, null
  br i1 %guard25538, label %__else1805, label %__fall21807

__fresh1821:
  br label %__fall21807

__fall21807:
  %tmp25534 = load i8** %vt_ptr_slot5530
  %tmp35535 = bitcast i8* %tmp25534 to i8** 
  %tmp45536 = load i8** %tmp35535
  store i8* %tmp45536, i8** %vt_ptr_slot5530
  br label %__loop1809

__fresh1822:
  br label %__then1806

__then1806:
  %var_slot5531 = alloca %Foo*
  store %Foo* %cast_op5527, %Foo** %var_slot5531
  %lhs_or_call5539 = load %Foo** %var_slot5531
  %vtmp5541 = getelementptr %Foo* %lhs_or_call5539, i32 0, i32 0
  %vtable5540 = load %_Foo_vtable** %vtmp5541
  %fptmp5542 = getelementptr %_Foo_vtable* %vtable5540, i32 0, i32 2
  %method5543 = load void (%Foo*)** %fptmp5542
  call void %method5543( %Foo* %lhs_or_call5539 )
  br label %__done1804

__fresh1823:
  br label %__else1805

__else1805:
  call void @print_string( i8* @_const_str649 )
  br label %__done1804

__done1804:
  br label %__merge1810

__fresh1824:
  br label %__else1811

__else1811:
  call void @print_string( i8* @_const_str650 )
  br label %__merge1810

__merge1810:
  %lhs_or_call5544 = load %ListItem** %ifnull_slot5519
  %path5545 = getelementptr %ListItem* %lhs_or_call5544, i32 0, i32 4
  %lhs_or_call5546 = load %ListItem** %path5545
  store %ListItem* %lhs_or_call5546, %ListItem** %vdecl_slot5512
  br label %__merge1813

__fresh1825:
  br label %__else1814

__else1814:
  br label %__merge1813

__merge1813:
  br label %__cond1803

__fresh1826:
  br label %__post1801

__post1801:
  ret void
}


define void @_Foo_print (%Foo* %_this1){
__fresh1800:
  %path5504 = getelementptr %Foo* %_this1, i32 0, i32 2
  %lhs_or_call5505 = load i32* %path5504
  %ret5506 = call i8* @string_of_int ( i32 %lhs_or_call5505 )
  call void @print_string( i8* %ret5506 )
  ret void
}


define %Foo* @_Foo_ctor (%Foo* %_this1, i32 %x5496){
__fresh1799:
  %x_slot5497 = alloca i32
  store i32 %x5496, i32* %x_slot5497
  %cast_op5498 = bitcast %Foo* %_this1 to %Object* 
  %dummy5499 = call %Object* @_Object_ctor ( %Object* %cast_op5498 )
  %path5500 = getelementptr %Foo* %_this1, i32 0, i32 1
  store i8* @_const_str648, i8** %path5500
  %vt_slot5501 = getelementptr %Foo* %_this1, i32 0, i32 0
  store %_Foo_vtable* @_Foo_vtable643, %_Foo_vtable** %vt_slot5501
  %path5502 = getelementptr %Foo* %_this1, i32 0, i32 2
  %lhs_or_call5503 = load i32* %x_slot5497
  store i32 %lhs_or_call5503, i32* %path5502
  ret %Foo* %_this1
}


define void @_List_remove (%List* %_this1, %ListItem* %item5458){
__fresh1790:
  %item_slot5459 = alloca %ListItem*
  store %ListItem* %item5458, %ListItem** %item_slot5459
  %path5460 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5461 = load %ListItem** %path5460
  %lhs_or_call5462 = load %ListItem** %item_slot5459
  %cast_op5463 = bitcast %ListItem* %lhs_or_call5461 to %Object* 
  %cast_op5464 = bitcast %ListItem* %lhs_or_call5462 to %Object* 
  %ret5465 = call i1 @equals ( %Object* %cast_op5464, %Object* %cast_op5463 )
  br i1 %ret5465, label %__then1789, label %__else1788

__fresh1791:
  br label %__then1789

__then1789:
  %path5466 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5467 = load %ListItem** %item_slot5459
  %path5468 = getelementptr %ListItem* %lhs_or_call5467, i32 0, i32 4
  %lhs_or_call5469 = load %ListItem** %path5468
  store %ListItem* %lhs_or_call5469, %ListItem** %path5466
  %lhs_or_call5470 = load %ListItem** %item_slot5459
  %path5471 = getelementptr %ListItem* %lhs_or_call5470, i32 0, i32 4
  %lhs_or_call5472 = load %ListItem** %path5471
  %ifnull_slot5473 = alloca %ListItem*
  store %ListItem* %lhs_or_call5472, %ListItem** %ifnull_slot5473
  %ifnull_guard5474 = icmp ne %ListItem* %lhs_or_call5472, null
  br i1 %ifnull_guard5474, label %__then1780, label %__else1779

__fresh1792:
  br label %__then1780

__then1780:
  %lhs_or_call5475 = load %ListItem** %ifnull_slot5473
  %path5476 = getelementptr %ListItem* %lhs_or_call5475, i32 0, i32 3
  %cast_op5477 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5477, %ListItem** %path5476
  br label %__merge1778

__fresh1793:
  br label %__else1779

__else1779:
  br label %__merge1778

__merge1778:
  br label %__merge1787

__fresh1794:
  br label %__else1788

__else1788:
  %lhs_or_call5478 = load %ListItem** %item_slot5459
  %path5479 = getelementptr %ListItem* %lhs_or_call5478, i32 0, i32 3
  %lhs_or_call5480 = load %ListItem** %path5479
  %ifnull_slot5481 = alloca %ListItem*
  store %ListItem* %lhs_or_call5480, %ListItem** %ifnull_slot5481
  %ifnull_guard5482 = icmp ne %ListItem* %lhs_or_call5480, null
  br i1 %ifnull_guard5482, label %__then1786, label %__else1785

__fresh1795:
  br label %__then1786

__then1786:
  %lhs_or_call5483 = load %ListItem** %ifnull_slot5481
  %path5484 = getelementptr %ListItem* %lhs_or_call5483, i32 0, i32 4
  %lhs_or_call5485 = load %ListItem** %item_slot5459
  %path5486 = getelementptr %ListItem* %lhs_or_call5485, i32 0, i32 4
  %lhs_or_call5487 = load %ListItem** %path5486
  store %ListItem* %lhs_or_call5487, %ListItem** %path5484
  %lhs_or_call5488 = load %ListItem** %item_slot5459
  %path5489 = getelementptr %ListItem* %lhs_or_call5488, i32 0, i32 4
  %lhs_or_call5490 = load %ListItem** %path5489
  %ifnull_slot5491 = alloca %ListItem*
  store %ListItem* %lhs_or_call5490, %ListItem** %ifnull_slot5491
  %ifnull_guard5492 = icmp ne %ListItem* %lhs_or_call5490, null
  br i1 %ifnull_guard5492, label %__then1783, label %__else1782

__fresh1796:
  br label %__then1783

__then1783:
  %lhs_or_call5493 = load %ListItem** %ifnull_slot5491
  %path5494 = getelementptr %ListItem* %lhs_or_call5493, i32 0, i32 3
  %lhs_or_call5495 = load %ListItem** %ifnull_slot5481
  store %ListItem* %lhs_or_call5495, %ListItem** %path5494
  br label %__merge1781

__fresh1797:
  br label %__else1782

__else1782:
  br label %__merge1781

__merge1781:
  br label %__merge1784

__fresh1798:
  br label %__else1785

__else1785:
  call void @print_string( i8* @_const_str647 )
  call void @oat_abort( i32 -1 )
  br label %__merge1784

__merge1784:
  br label %__merge1787

__merge1787:
  ret void
}


define void @_List_insert (%List* %_this1, %Object* %o5438){
__fresh1775:
  %o_slot5439 = alloca %Object*
  store %Object* %o5438, %Object** %o_slot5439
  %lhs_or_call5440 = load %Object** %o_slot5439
  %mem_ptr5441 = call i32* @oat_malloc ( i32 20 )
  %obj5442 = bitcast i32* %mem_ptr5441 to %ListItem* 
  %new_obj5443 = call %ListItem* @_ListItem_ctor ( %ListItem* %obj5442, %Object* %lhs_or_call5440 )
  %vdecl_slot5444 = alloca %ListItem*
  store %ListItem* %new_obj5443, %ListItem** %vdecl_slot5444
  %lhs_or_call5445 = load %ListItem** %vdecl_slot5444
  %path5446 = getelementptr %ListItem* %lhs_or_call5445, i32 0, i32 4
  %path5447 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5448 = load %ListItem** %path5447
  store %ListItem* %lhs_or_call5448, %ListItem** %path5446
  %path5449 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5450 = load %ListItem** %path5449
  %ifnull_slot5451 = alloca %ListItem*
  store %ListItem* %lhs_or_call5450, %ListItem** %ifnull_slot5451
  %ifnull_guard5452 = icmp ne %ListItem* %lhs_or_call5450, null
  br i1 %ifnull_guard5452, label %__then1774, label %__else1773

__fresh1776:
  br label %__then1774

__then1774:
  %lhs_or_call5453 = load %ListItem** %ifnull_slot5451
  %path5454 = getelementptr %ListItem* %lhs_or_call5453, i32 0, i32 3
  %lhs_or_call5455 = load %ListItem** %vdecl_slot5444
  store %ListItem* %lhs_or_call5455, %ListItem** %path5454
  br label %__merge1772

__fresh1777:
  br label %__else1773

__else1773:
  br label %__merge1772

__merge1772:
  %path5456 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5457 = load %ListItem** %vdecl_slot5444
  store %ListItem* %lhs_or_call5457, %ListItem** %path5456
  ret void
}


define i1 @_List_is_empty (%List* %_this1){
__fresh1771:
  %path5433 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5434 = load %ListItem** %path5433
  %cast_op5435 = bitcast i8* null to %Object* 
  %cast_op5436 = bitcast %ListItem* %lhs_or_call5434 to %Object* 
  %ret5437 = call i1 @equals ( %Object* %cast_op5436, %Object* %cast_op5435 )
  ret i1 %ret5437
}


define %List* @_List_ctor (%List* %_this1){
__fresh1770:
  %cast_op5427 = bitcast %List* %_this1 to %Object* 
  %dummy5428 = call %Object* @_Object_ctor ( %Object* %cast_op5427 )
  %path5429 = getelementptr %List* %_this1, i32 0, i32 1
  store i8* @_const_str646, i8** %path5429
  %vt_slot5430 = getelementptr %List* %_this1, i32 0, i32 0
  store %_List_vtable* @_List_vtable642, %_List_vtable** %vt_slot5430
  %path5431 = getelementptr %List* %_this1, i32 0, i32 2
  %cast_op5432 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5432, %ListItem** %path5431
  ret %List* %_this1
}


define %ListItem* @_ListItem_ctor (%ListItem* %_this1, %Object* %o5415){
__fresh1769:
  %o_slot5416 = alloca %Object*
  store %Object* %o5415, %Object** %o_slot5416
  %cast_op5417 = bitcast %ListItem* %_this1 to %Object* 
  %dummy5418 = call %Object* @_Object_ctor ( %Object* %cast_op5417 )
  %path5419 = getelementptr %ListItem* %_this1, i32 0, i32 1
  store i8* @_const_str645, i8** %path5419
  %vt_slot5420 = getelementptr %ListItem* %_this1, i32 0, i32 0
  store %_ListItem_vtable* @_ListItem_vtable641, %_ListItem_vtable** %vt_slot5420
  %path5421 = getelementptr %ListItem* %_this1, i32 0, i32 2
  %lhs_or_call5422 = load %Object** %o_slot5416
  store %Object* %lhs_or_call5422, %Object** %path5421
  %path5423 = getelementptr %ListItem* %_this1, i32 0, i32 3
  %cast_op5424 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5424, %ListItem** %path5423
  %path5425 = getelementptr %ListItem* %_this1, i32 0, i32 4
  %cast_op5426 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5426, %ListItem** %path5425
  ret %ListItem* %_this1
}


define i1 @equals (%Object* %o15410, %Object* %o25408){
__fresh1768:
  %o1_slot5411 = alloca %Object*
  store %Object* %o15410, %Object** %o1_slot5411
  %o2_slot5409 = alloca %Object*
  store %Object* %o25408, %Object** %o2_slot5409
  %lhs_or_call5412 = load %Object** %o1_slot5411
  %lhs_or_call5413 = load %Object** %o2_slot5409
  %bop5414 = icmp eq %Object* %lhs_or_call5412, %lhs_or_call5413
  ret i1 %bop5414
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1767:
  %path5406 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5407 = load i8** %path5406
  ret i8* %lhs_or_call5407
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1766:
  %path5404 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str644, i8** %path5404
  %vt_slot5405 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable640, %_Object_vtable** %vt_slot5405
  ret %Object* %_this1
}



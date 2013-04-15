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


define i32 @program (i32 %argc5543, { i32, [ 0 x i8* ] }* %argv5541){
__fresh1837:
  %argc_slot5544 = alloca i32
  store i32 %argc5543, i32* %argc_slot5544
  %argv_slot5542 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5541, { i32, [ 0 x i8* ] }** %argv_slot5542
  %cast_op5545 = bitcast i8* null to %ListItem* 
  %vdecl_slot5546 = alloca %ListItem*
  store %ListItem* %cast_op5545, %ListItem** %vdecl_slot5546
  %vdecl_slot5547 = alloca i32
  store i32 0, i32* %vdecl_slot5547
  br label %__cond1830

__cond1830:
  %lhs_or_call5548 = load i32* %vdecl_slot5547
  %bop5549 = icmp slt i32 %lhs_or_call5548, 10
  br i1 %bop5549, label %__body1829, label %__post1828

__fresh1838:
  br label %__body1829

__body1829:
  %lhs_or_call5554 = load %List** @l651
  %vtmp5556 = getelementptr %List* %lhs_or_call5554, i32 0, i32 0
  %vtable5555 = load %_List_vtable** %vtmp5556
  %fptmp5557 = getelementptr %_List_vtable* %vtable5555, i32 0, i32 3
  %method5558 = load void (%List*, %Object*)** %fptmp5557
  %lhs_or_call5550 = load i32* %vdecl_slot5547
  %mem_ptr5551 = call i32* @oat_malloc ( i32 12 )
  %obj5552 = bitcast i32* %mem_ptr5551 to %Foo* 
  %new_obj5553 = call %Foo* @_Foo_ctor ( %Foo* %obj5552, i32 %lhs_or_call5550 )
  %cast_op5559 = bitcast %Foo* %new_obj5553 to %Object* 
  call void %method5558( %List* %lhs_or_call5554, %Object* %cast_op5559 )
  %lhs_or_call5560 = load i32* %vdecl_slot5547
  %bop5561 = add i32 %lhs_or_call5560, 1
  store i32 %bop5561, i32* %vdecl_slot5547
  br label %__cond1830

__fresh1839:
  br label %__post1828

__post1828:
  %lhs_or_call5562 = load %List** @l651
  call void @printFooList( %List* %lhs_or_call5562 )
  %lhs_or_call5563 = load %List** @l651
  %path5564 = getelementptr %List* %lhs_or_call5563, i32 0, i32 2
  %lhs_or_call5565 = load %ListItem** %path5564
  store %ListItem* %lhs_or_call5565, %ListItem** %vdecl_slot5546
  %lhs_or_call5566 = load %ListItem** %vdecl_slot5546
  %ifnull_slot5567 = alloca %ListItem*
  store %ListItem* %lhs_or_call5566, %ListItem** %ifnull_slot5567
  %ifnull_guard5568 = icmp ne %ListItem* %lhs_or_call5566, null
  br i1 %ifnull_guard5568, label %__then1836, label %__else1835

__fresh1840:
  br label %__then1836

__then1836:
  %lhs_or_call5569 = load %ListItem** %ifnull_slot5567
  %path5570 = getelementptr %ListItem* %lhs_or_call5569, i32 0, i32 4
  %lhs_or_call5571 = load %ListItem** %path5570
  %ifnull_slot5572 = alloca %ListItem*
  store %ListItem* %lhs_or_call5571, %ListItem** %ifnull_slot5572
  %ifnull_guard5573 = icmp ne %ListItem* %lhs_or_call5571, null
  br i1 %ifnull_guard5573, label %__then1833, label %__else1832

__fresh1841:
  br label %__then1833

__then1833:
  %lhs_or_call5575 = load %List** @l651
  %vtmp5577 = getelementptr %List* %lhs_or_call5575, i32 0, i32 0
  %vtable5576 = load %_List_vtable** %vtmp5577
  %fptmp5578 = getelementptr %_List_vtable* %vtable5576, i32 0, i32 4
  %method5579 = load void (%List*, %ListItem*)** %fptmp5578
  %lhs_or_call5574 = load %ListItem** %ifnull_slot5572
  call void %method5579( %List* %lhs_or_call5575, %ListItem* %lhs_or_call5574 )
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
  %lhs_or_call5580 = load %List** @l651
  call void @printFooList( %List* %lhs_or_call5580 )
  ret i32 0
}


define void @l651.init652 (){
__fresh1827:
  %mem_ptr5538 = call i32* @oat_malloc ( i32 12 )
  %obj5539 = bitcast i32* %mem_ptr5538 to %List* 
  %new_obj5540 = call %List* @_List_ctor ( %List* %obj5539 )
  store %List* %new_obj5540, %List** @l651
  ret void
}


define void @printFooList (%List* %l5498){
__fresh1816:
  %l_slot5499 = alloca %List*
  store %List* %l5498, %List** %l_slot5499
  %lhs_or_call5500 = load %List** %l_slot5499
  %path5501 = getelementptr %List* %lhs_or_call5500, i32 0, i32 2
  %lhs_or_call5502 = load %ListItem** %path5501
  %vdecl_slot5503 = alloca %ListItem*
  store %ListItem* %lhs_or_call5502, %ListItem** %vdecl_slot5503
  br label %__cond1803

__cond1803:
  %lhs_or_call5504 = load %ListItem** %vdecl_slot5503
  %cast_op5505 = bitcast i8* null to %Object* 
  %cast_op5506 = bitcast %ListItem* %lhs_or_call5504 to %Object* 
  %ret5507 = call i1 @equals ( %Object* %cast_op5506, %Object* %cast_op5505 )
  %unop5508 = icmp eq i1 %ret5507, 0
  br i1 %unop5508, label %__body1802, label %__post1801

__fresh1817:
  br label %__body1802

__body1802:
  %lhs_or_call5509 = load %ListItem** %vdecl_slot5503
  %ifnull_slot5510 = alloca %ListItem*
  store %ListItem* %lhs_or_call5509, %ListItem** %ifnull_slot5510
  %ifnull_guard5511 = icmp ne %ListItem* %lhs_or_call5509, null
  br i1 %ifnull_guard5511, label %__then1815, label %__else1814

__fresh1818:
  br label %__then1815

__then1815:
  %lhs_or_call5512 = load %ListItem** %ifnull_slot5510
  %path5513 = getelementptr %ListItem* %lhs_or_call5512, i32 0, i32 2
  %lhs_or_call5514 = load %Object** %path5513
  %ifnull_slot5515 = alloca %Object*
  store %Object* %lhs_or_call5514, %Object** %ifnull_slot5515
  %ifnull_guard5516 = icmp ne %Object* %lhs_or_call5514, null
  br i1 %ifnull_guard5516, label %__then1812, label %__else1811

__fresh1819:
  br label %__then1812

__then1812:
  %lhs_or_call5517 = load %Object** %ifnull_slot5515
  %cast_op5518 = bitcast %Object* %lhs_or_call5517 to %Foo* 
  %cast_op5519 = bitcast %Foo* %cast_op5518 to i8** 
  %cast_op5520 = bitcast %_Foo_vtable* @_Foo_vtable643 to i8* 
  %vt_ptr_slot5521 = alloca i8*
  %tmp05523 = load i8** %cast_op5519
  store i8* %tmp05523, i8** %vt_ptr_slot5521
  br label %__loop1809

__loop1809:
  %tmp15524 = load i8** %vt_ptr_slot5521
  %guard15528 = icmp eq i8* %tmp15524, %cast_op5520
  br i1 %guard15528, label %__then1806, label %__fall11808

__fresh1820:
  br label %__fall11808

__fall11808:
  %guard25529 = icmp eq i8* %tmp15524, null
  br i1 %guard25529, label %__else1805, label %__fall21807

__fresh1821:
  br label %__fall21807

__fall21807:
  %tmp25525 = load i8** %vt_ptr_slot5521
  %tmp35526 = bitcast i8* %tmp25525 to i8** 
  %tmp45527 = load i8** %tmp35526
  store i8* %tmp45527, i8** %vt_ptr_slot5521
  br label %__loop1809

__fresh1822:
  br label %__then1806

__then1806:
  %var_slot5522 = alloca %Foo*
  store %Foo* %cast_op5518, %Foo** %var_slot5522
  %lhs_or_call5530 = load %Foo** %var_slot5522
  %vtmp5532 = getelementptr %Foo* %lhs_or_call5530, i32 0, i32 0
  %vtable5531 = load %_Foo_vtable** %vtmp5532
  %fptmp5533 = getelementptr %_Foo_vtable* %vtable5531, i32 0, i32 2
  %method5534 = load void (%Foo*)** %fptmp5533
  call void %method5534( %Foo* %lhs_or_call5530 )
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
  %lhs_or_call5535 = load %ListItem** %ifnull_slot5510
  %path5536 = getelementptr %ListItem* %lhs_or_call5535, i32 0, i32 4
  %lhs_or_call5537 = load %ListItem** %path5536
  store %ListItem* %lhs_or_call5537, %ListItem** %vdecl_slot5503
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
  %path5495 = getelementptr %Foo* %_this1, i32 0, i32 2
  %lhs_or_call5496 = load i32* %path5495
  %ret5497 = call i8* @string_of_int ( i32 %lhs_or_call5496 )
  call void @print_string( i8* %ret5497 )
  ret void
}


define %Foo* @_Foo_ctor (%Foo* %_this1, i32 %x5487){
__fresh1799:
  %x_slot5488 = alloca i32
  store i32 %x5487, i32* %x_slot5488
  %cast_op5489 = bitcast %Foo* %_this1 to %Object* 
  %dummy5490 = call %Object* @_Object_ctor ( %Object* %cast_op5489 )
  %path5491 = getelementptr %Foo* %_this1, i32 0, i32 1
  store i8* @_const_str648, i8** %path5491
  %vt_slot5492 = getelementptr %Foo* %_this1, i32 0, i32 0
  store %_Foo_vtable* @_Foo_vtable643, %_Foo_vtable** %vt_slot5492
  %path5493 = getelementptr %Foo* %_this1, i32 0, i32 2
  %lhs_or_call5494 = load i32* %x_slot5488
  store i32 %lhs_or_call5494, i32* %path5493
  ret %Foo* %_this1
}


define void @_List_remove (%List* %_this1, %ListItem* %item5449){
__fresh1790:
  %item_slot5450 = alloca %ListItem*
  store %ListItem* %item5449, %ListItem** %item_slot5450
  %path5451 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5452 = load %ListItem** %path5451
  %lhs_or_call5453 = load %ListItem** %item_slot5450
  %cast_op5454 = bitcast %ListItem* %lhs_or_call5452 to %Object* 
  %cast_op5455 = bitcast %ListItem* %lhs_or_call5453 to %Object* 
  %ret5456 = call i1 @equals ( %Object* %cast_op5455, %Object* %cast_op5454 )
  br i1 %ret5456, label %__then1789, label %__else1788

__fresh1791:
  br label %__then1789

__then1789:
  %path5457 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5458 = load %ListItem** %item_slot5450
  %path5459 = getelementptr %ListItem* %lhs_or_call5458, i32 0, i32 4
  %lhs_or_call5460 = load %ListItem** %path5459
  store %ListItem* %lhs_or_call5460, %ListItem** %path5457
  %lhs_or_call5461 = load %ListItem** %item_slot5450
  %path5462 = getelementptr %ListItem* %lhs_or_call5461, i32 0, i32 4
  %lhs_or_call5463 = load %ListItem** %path5462
  %ifnull_slot5464 = alloca %ListItem*
  store %ListItem* %lhs_or_call5463, %ListItem** %ifnull_slot5464
  %ifnull_guard5465 = icmp ne %ListItem* %lhs_or_call5463, null
  br i1 %ifnull_guard5465, label %__then1780, label %__else1779

__fresh1792:
  br label %__then1780

__then1780:
  %lhs_or_call5466 = load %ListItem** %ifnull_slot5464
  %path5467 = getelementptr %ListItem* %lhs_or_call5466, i32 0, i32 3
  %cast_op5468 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5468, %ListItem** %path5467
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
  %lhs_or_call5469 = load %ListItem** %item_slot5450
  %path5470 = getelementptr %ListItem* %lhs_or_call5469, i32 0, i32 3
  %lhs_or_call5471 = load %ListItem** %path5470
  %ifnull_slot5472 = alloca %ListItem*
  store %ListItem* %lhs_or_call5471, %ListItem** %ifnull_slot5472
  %ifnull_guard5473 = icmp ne %ListItem* %lhs_or_call5471, null
  br i1 %ifnull_guard5473, label %__then1786, label %__else1785

__fresh1795:
  br label %__then1786

__then1786:
  %lhs_or_call5474 = load %ListItem** %ifnull_slot5472
  %path5475 = getelementptr %ListItem* %lhs_or_call5474, i32 0, i32 4
  %lhs_or_call5476 = load %ListItem** %item_slot5450
  %path5477 = getelementptr %ListItem* %lhs_or_call5476, i32 0, i32 4
  %lhs_or_call5478 = load %ListItem** %path5477
  store %ListItem* %lhs_or_call5478, %ListItem** %path5475
  %lhs_or_call5479 = load %ListItem** %item_slot5450
  %path5480 = getelementptr %ListItem* %lhs_or_call5479, i32 0, i32 4
  %lhs_or_call5481 = load %ListItem** %path5480
  %ifnull_slot5482 = alloca %ListItem*
  store %ListItem* %lhs_or_call5481, %ListItem** %ifnull_slot5482
  %ifnull_guard5483 = icmp ne %ListItem* %lhs_or_call5481, null
  br i1 %ifnull_guard5483, label %__then1783, label %__else1782

__fresh1796:
  br label %__then1783

__then1783:
  %lhs_or_call5484 = load %ListItem** %ifnull_slot5482
  %path5485 = getelementptr %ListItem* %lhs_or_call5484, i32 0, i32 3
  %lhs_or_call5486 = load %ListItem** %ifnull_slot5472
  store %ListItem* %lhs_or_call5486, %ListItem** %path5485
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


define void @_List_insert (%List* %_this1, %Object* %o5429){
__fresh1775:
  %o_slot5430 = alloca %Object*
  store %Object* %o5429, %Object** %o_slot5430
  %lhs_or_call5431 = load %Object** %o_slot5430
  %mem_ptr5432 = call i32* @oat_malloc ( i32 20 )
  %obj5433 = bitcast i32* %mem_ptr5432 to %ListItem* 
  %new_obj5434 = call %ListItem* @_ListItem_ctor ( %ListItem* %obj5433, %Object* %lhs_or_call5431 )
  %vdecl_slot5435 = alloca %ListItem*
  store %ListItem* %new_obj5434, %ListItem** %vdecl_slot5435
  %lhs_or_call5436 = load %ListItem** %vdecl_slot5435
  %path5437 = getelementptr %ListItem* %lhs_or_call5436, i32 0, i32 4
  %path5438 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5439 = load %ListItem** %path5438
  store %ListItem* %lhs_or_call5439, %ListItem** %path5437
  %path5440 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5441 = load %ListItem** %path5440
  %ifnull_slot5442 = alloca %ListItem*
  store %ListItem* %lhs_or_call5441, %ListItem** %ifnull_slot5442
  %ifnull_guard5443 = icmp ne %ListItem* %lhs_or_call5441, null
  br i1 %ifnull_guard5443, label %__then1774, label %__else1773

__fresh1776:
  br label %__then1774

__then1774:
  %lhs_or_call5444 = load %ListItem** %ifnull_slot5442
  %path5445 = getelementptr %ListItem* %lhs_or_call5444, i32 0, i32 3
  %lhs_or_call5446 = load %ListItem** %vdecl_slot5435
  store %ListItem* %lhs_or_call5446, %ListItem** %path5445
  br label %__merge1772

__fresh1777:
  br label %__else1773

__else1773:
  br label %__merge1772

__merge1772:
  %path5447 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5448 = load %ListItem** %vdecl_slot5435
  store %ListItem* %lhs_or_call5448, %ListItem** %path5447
  ret void
}


define i1 @_List_is_empty (%List* %_this1){
__fresh1771:
  %path5424 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call5425 = load %ListItem** %path5424
  %cast_op5426 = bitcast i8* null to %Object* 
  %cast_op5427 = bitcast %ListItem* %lhs_or_call5425 to %Object* 
  %ret5428 = call i1 @equals ( %Object* %cast_op5427, %Object* %cast_op5426 )
  ret i1 %ret5428
}


define %List* @_List_ctor (%List* %_this1){
__fresh1770:
  %cast_op5418 = bitcast %List* %_this1 to %Object* 
  %dummy5419 = call %Object* @_Object_ctor ( %Object* %cast_op5418 )
  %path5420 = getelementptr %List* %_this1, i32 0, i32 1
  store i8* @_const_str646, i8** %path5420
  %vt_slot5421 = getelementptr %List* %_this1, i32 0, i32 0
  store %_List_vtable* @_List_vtable642, %_List_vtable** %vt_slot5421
  %path5422 = getelementptr %List* %_this1, i32 0, i32 2
  %cast_op5423 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5423, %ListItem** %path5422
  ret %List* %_this1
}


define %ListItem* @_ListItem_ctor (%ListItem* %_this1, %Object* %o5406){
__fresh1769:
  %o_slot5407 = alloca %Object*
  store %Object* %o5406, %Object** %o_slot5407
  %cast_op5408 = bitcast %ListItem* %_this1 to %Object* 
  %dummy5409 = call %Object* @_Object_ctor ( %Object* %cast_op5408 )
  %path5410 = getelementptr %ListItem* %_this1, i32 0, i32 1
  store i8* @_const_str645, i8** %path5410
  %vt_slot5411 = getelementptr %ListItem* %_this1, i32 0, i32 0
  store %_ListItem_vtable* @_ListItem_vtable641, %_ListItem_vtable** %vt_slot5411
  %path5412 = getelementptr %ListItem* %_this1, i32 0, i32 2
  %lhs_or_call5413 = load %Object** %o_slot5407
  store %Object* %lhs_or_call5413, %Object** %path5412
  %path5414 = getelementptr %ListItem* %_this1, i32 0, i32 3
  %cast_op5415 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5415, %ListItem** %path5414
  %path5416 = getelementptr %ListItem* %_this1, i32 0, i32 4
  %cast_op5417 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op5417, %ListItem** %path5416
  ret %ListItem* %_this1
}


define i1 @equals (%Object* %o15401, %Object* %o25399){
__fresh1768:
  %o1_slot5402 = alloca %Object*
  store %Object* %o15401, %Object** %o1_slot5402
  %o2_slot5400 = alloca %Object*
  store %Object* %o25399, %Object** %o2_slot5400
  %lhs_or_call5403 = load %Object** %o1_slot5402
  %lhs_or_call5404 = load %Object** %o2_slot5400
  %bop5405 = icmp eq %Object* %lhs_or_call5403, %lhs_or_call5404
  ret i1 %bop5405
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1767:
  %path5397 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5398 = load i8** %path5397
  ret i8* %lhs_or_call5398
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1766:
  %path5395 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str644, i8** %path5395
  %vt_slot5396 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable640, %_Object_vtable** %vt_slot5396
  ret %Object* %_this1
}



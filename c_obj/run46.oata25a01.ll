%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%B*)* }
%A = type { %_A_vtable*, i8*, i32, %S* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, %A* (%A*)* }
%S = type { %_S_vtable*, i8*, i32 }
%_S_vtable = type { %_Object_vtable*, i8* (%Object*)*, { i32, [ 0 x i32 ] }* (%S*)*, %S* (%S*)* }
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
@_const_str315.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str315 = alias bitcast([ 2 x i8 ]* @_const_str315.str. to i8*)@_const_str314.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str314 = alias bitcast([ 2 x i8 ]* @_const_str314.str. to i8*)@_const_str313.str. = private unnamed_addr constant [ 2 x i8 ] c "S\00", align 4
@_const_str313 = alias bitcast([ 2 x i8 ]* @_const_str313.str. to i8*)@arr311 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by @arr311.init312
@_const_str310.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str310 = alias bitcast([ 7 x i8 ]* @_const_str310.str. to i8*)@_B_vtable309 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, %A* (%B*)* @_B_f}, align 4
@_A_vtable308 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, %A* (%A*)* @_A_g}, align 4
@_S_vtable307 = private constant %_S_vtable {%_Object_vtable* @_Object_vtable306, i8* (%Object*)* @_Object_get_name, { i32, [ 0 x i32 ] }* (%S*)* @_S_g, %S* (%S*)* @_S_f}, align 4
@_Object_vtable306 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh544:
  call void @arr311.init312(  )
  ret void
}


define i32 @program (i32 %argc1717, { i32, [ 0 x i8* ] }* %argv1715){
__fresh543:
  %argc_slot1718 = alloca i32
  store i32 %argc1717, i32* %argc_slot1718
  %argv_slot1716 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1715, { i32, [ 0 x i8* ] }** %argv_slot1716
  %mem_ptr1719 = call i32* @oat_malloc ( i32 8 )
  %obj1720 = bitcast i32* %mem_ptr1719 to %B* 
  %new_obj1721 = call %B* @_B_ctor ( %B* %obj1720 )
  %vdecl_slot1722 = alloca %B*
  store %B* %new_obj1721, %B** %vdecl_slot1722
  %lhs_or_call1723 = load %B** %vdecl_slot1722
  %vtmp1725 = getelementptr %B* %lhs_or_call1723, i32 0, i32 0
  %vtable1724 = load %_B_vtable** %vtmp1725
  %fptmp1726 = getelementptr %_B_vtable* %vtable1724, i32 0, i32 2
  %method1727 = load %A* (%B*)** %fptmp1726
  %ret1728 = call %A* %method1727 ( %B* %lhs_or_call1723 )
  %path1729 = getelementptr %A* %ret1728, i32 0, i32 3
  %lhs_or_call1730 = load %S** %path1729
  %vtmp1732 = getelementptr %S* %lhs_or_call1730, i32 0, i32 0
  %vtable1731 = load %_S_vtable** %vtmp1732
  %fptmp1733 = getelementptr %_S_vtable* %vtable1731, i32 0, i32 2
  %method1734 = load { i32, [ 0 x i32 ] }* (%S*)** %fptmp1733
  %ret1735 = call { i32, [ 0 x i32 ] }* %method1734 ( %S* %lhs_or_call1730 )
  %bound_ptr1737 = getelementptr { i32, [ 0 x i32 ] }* %ret1735, i32 0, i32 0
  %bound1738 = load i32* %bound_ptr1737
  call void @oat_array_bounds_check( i32 %bound1738, i32 1 )
  %elt1736 = getelementptr { i32, [ 0 x i32 ] }* %ret1735, i32 0, i32 1, i32 1
  store i32 100, i32* %elt1736
  %lhs_or_call1739 = load %B** %vdecl_slot1722
  %vtmp1741 = getelementptr %B* %lhs_or_call1739, i32 0, i32 0
  %vtable1740 = load %_B_vtable** %vtmp1741
  %fptmp1742 = getelementptr %_B_vtable* %vtable1740, i32 0, i32 2
  %method1743 = load %A* (%B*)** %fptmp1742
  %ret1744 = call %A* %method1743 ( %B* %lhs_or_call1739 )
  %path1745 = getelementptr %A* %ret1744, i32 0, i32 2
  %lhs_or_call1746 = load i32* %path1745
  %lhs_or_call1747 = load %B** %vdecl_slot1722
  %vtmp1749 = getelementptr %B* %lhs_or_call1747, i32 0, i32 0
  %vtable1748 = load %_B_vtable** %vtmp1749
  %fptmp1750 = getelementptr %_B_vtable* %vtable1748, i32 0, i32 2
  %method1751 = load %A* (%B*)** %fptmp1750
  %ret1752 = call %A* %method1751 ( %B* %lhs_or_call1747 )
  %vtmp1754 = getelementptr %A* %ret1752, i32 0, i32 0
  %vtable1753 = load %_A_vtable** %vtmp1754
  %fptmp1755 = getelementptr %_A_vtable* %vtable1753, i32 0, i32 2
  %method1756 = load %A* (%A*)** %fptmp1755
  %ret1757 = call %A* %method1756 ( %A* %ret1752 )
  %vtmp1759 = getelementptr %A* %ret1757, i32 0, i32 0
  %vtable1758 = load %_A_vtable** %vtmp1759
  %fptmp1760 = getelementptr %_A_vtable* %vtable1758, i32 0, i32 2
  %method1761 = load %A* (%A*)** %fptmp1760
  %ret1762 = call %A* %method1761 ( %A* %ret1757 )
  %vtmp1764 = getelementptr %A* %ret1762, i32 0, i32 0
  %vtable1763 = load %_A_vtable** %vtmp1764
  %fptmp1765 = getelementptr %_A_vtable* %vtable1763, i32 0, i32 2
  %method1766 = load %A* (%A*)** %fptmp1765
  %ret1767 = call %A* %method1766 ( %A* %ret1762 )
  %path1768 = getelementptr %A* %ret1767, i32 0, i32 2
  %lhs_or_call1769 = load i32* %path1768
  %bop1770 = add i32 %lhs_or_call1746, %lhs_or_call1769
  %lhs_or_call1771 = load %B** %vdecl_slot1722
  %vtmp1773 = getelementptr %B* %lhs_or_call1771, i32 0, i32 0
  %vtable1772 = load %_B_vtable** %vtmp1773
  %fptmp1774 = getelementptr %_B_vtable* %vtable1772, i32 0, i32 2
  %method1775 = load %A* (%B*)** %fptmp1774
  %ret1776 = call %A* %method1775 ( %B* %lhs_or_call1771 )
  %vtmp1778 = getelementptr %A* %ret1776, i32 0, i32 0
  %vtable1777 = load %_A_vtable** %vtmp1778
  %fptmp1779 = getelementptr %_A_vtable* %vtable1777, i32 0, i32 2
  %method1780 = load %A* (%A*)** %fptmp1779
  %ret1781 = call %A* %method1780 ( %A* %ret1776 )
  %vtmp1783 = getelementptr %A* %ret1781, i32 0, i32 0
  %vtable1782 = load %_A_vtable** %vtmp1783
  %fptmp1784 = getelementptr %_A_vtable* %vtable1782, i32 0, i32 2
  %method1785 = load %A* (%A*)** %fptmp1784
  %ret1786 = call %A* %method1785 ( %A* %ret1781 )
  %vtmp1788 = getelementptr %A* %ret1786, i32 0, i32 0
  %vtable1787 = load %_A_vtable** %vtmp1788
  %fptmp1789 = getelementptr %_A_vtable* %vtable1787, i32 0, i32 2
  %method1790 = load %A* (%A*)** %fptmp1789
  %ret1791 = call %A* %method1790 ( %A* %ret1786 )
  %vtmp1793 = getelementptr %A* %ret1791, i32 0, i32 0
  %vtable1792 = load %_A_vtable** %vtmp1793
  %fptmp1794 = getelementptr %_A_vtable* %vtable1792, i32 0, i32 2
  %method1795 = load %A* (%A*)** %fptmp1794
  %ret1796 = call %A* %method1795 ( %A* %ret1791 )
  %vtmp1798 = getelementptr %A* %ret1796, i32 0, i32 0
  %vtable1797 = load %_A_vtable** %vtmp1798
  %fptmp1799 = getelementptr %_A_vtable* %vtable1797, i32 0, i32 2
  %method1800 = load %A* (%A*)** %fptmp1799
  %ret1801 = call %A* %method1800 ( %A* %ret1796 )
  %vtmp1803 = getelementptr %A* %ret1801, i32 0, i32 0
  %vtable1802 = load %_A_vtable** %vtmp1803
  %fptmp1804 = getelementptr %_A_vtable* %vtable1802, i32 0, i32 2
  %method1805 = load %A* (%A*)** %fptmp1804
  %ret1806 = call %A* %method1805 ( %A* %ret1801 )
  %vtmp1808 = getelementptr %A* %ret1806, i32 0, i32 0
  %vtable1807 = load %_A_vtable** %vtmp1808
  %fptmp1809 = getelementptr %_A_vtable* %vtable1807, i32 0, i32 2
  %method1810 = load %A* (%A*)** %fptmp1809
  %ret1811 = call %A* %method1810 ( %A* %ret1806 )
  %vtmp1813 = getelementptr %A* %ret1811, i32 0, i32 0
  %vtable1812 = load %_A_vtable** %vtmp1813
  %fptmp1814 = getelementptr %_A_vtable* %vtable1812, i32 0, i32 2
  %method1815 = load %A* (%A*)** %fptmp1814
  %ret1816 = call %A* %method1815 ( %A* %ret1811 )
  %vtmp1818 = getelementptr %A* %ret1816, i32 0, i32 0
  %vtable1817 = load %_A_vtable** %vtmp1818
  %fptmp1819 = getelementptr %_A_vtable* %vtable1817, i32 0, i32 2
  %method1820 = load %A* (%A*)** %fptmp1819
  %ret1821 = call %A* %method1820 ( %A* %ret1816 )
  %path1822 = getelementptr %A* %ret1821, i32 0, i32 2
  %lhs_or_call1823 = load i32* %path1822
  %bop1824 = add i32 %bop1770, %lhs_or_call1823
  %lhs_or_call1825 = load %B** %vdecl_slot1722
  %vtmp1827 = getelementptr %B* %lhs_or_call1825, i32 0, i32 0
  %vtable1826 = load %_B_vtable** %vtmp1827
  %fptmp1828 = getelementptr %_B_vtable* %vtable1826, i32 0, i32 2
  %method1829 = load %A* (%B*)** %fptmp1828
  %ret1830 = call %A* %method1829 ( %B* %lhs_or_call1825 )
  %path1831 = getelementptr %A* %ret1830, i32 0, i32 3
  %lhs_or_call1832 = load %S** %path1831
  %vtmp1834 = getelementptr %S* %lhs_or_call1832, i32 0, i32 0
  %vtable1833 = load %_S_vtable** %vtmp1834
  %fptmp1835 = getelementptr %_S_vtable* %vtable1833, i32 0, i32 3
  %method1836 = load %S* (%S*)** %fptmp1835
  %ret1837 = call %S* %method1836 ( %S* %lhs_or_call1832 )
  %path1838 = getelementptr %S* %ret1837, i32 0, i32 2
  %lhs_or_call1839 = load i32* %path1838
  %bop1840 = add i32 %bop1824, %lhs_or_call1839
  %lhs_or_call1841 = load { i32, [ 0 x i32 ] }** @arr311
  %bound_ptr1843 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1841, i32 0, i32 0
  %bound1844 = load i32* %bound_ptr1843
  call void @oat_array_bounds_check( i32 %bound1844, i32 1 )
  %elt1842 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1841, i32 0, i32 1, i32 1
  %lhs_or_call1845 = load i32* %elt1842
  %bop1846 = add i32 %bop1840, %lhs_or_call1845
  %lhs_or_call1847 = load %B** %vdecl_slot1722
  %vtmp1849 = getelementptr %B* %lhs_or_call1847, i32 0, i32 0
  %vtable1848 = load %_B_vtable** %vtmp1849
  %fptmp1850 = getelementptr %_B_vtable* %vtable1848, i32 0, i32 2
  %method1851 = load %A* (%B*)** %fptmp1850
  %ret1852 = call %A* %method1851 ( %B* %lhs_or_call1847 )
  %path1853 = getelementptr %A* %ret1852, i32 0, i32 3
  %lhs_or_call1854 = load %S** %path1853
  %vtmp1856 = getelementptr %S* %lhs_or_call1854, i32 0, i32 0
  %vtable1855 = load %_S_vtable** %vtmp1856
  %fptmp1857 = getelementptr %_S_vtable* %vtable1855, i32 0, i32 2
  %method1858 = load { i32, [ 0 x i32 ] }* (%S*)** %fptmp1857
  %ret1859 = call { i32, [ 0 x i32 ] }* %method1858 ( %S* %lhs_or_call1854 )
  %bound_ptr1861 = getelementptr { i32, [ 0 x i32 ] }* %ret1859, i32 0, i32 0
  %bound1862 = load i32* %bound_ptr1861
  call void @oat_array_bounds_check( i32 %bound1862, i32 1 )
  %elt1860 = getelementptr { i32, [ 0 x i32 ] }* %ret1859, i32 0, i32 1, i32 1
  %lhs_or_call1863 = load i32* %elt1860
  %bop1864 = add i32 %bop1846, %lhs_or_call1863
  ret i32 %bop1864
}


define %A* @_B_f (%B* %_this1){
__fresh542:
  %mem_ptr1712 = call i32* @oat_malloc ( i32 16 )
  %obj1713 = bitcast i32* %mem_ptr1712 to %A* 
  %new_obj1714 = call %A* @_A_ctor ( %A* %obj1713 )
  ret %A* %new_obj1714
}


define %B* @_B_ctor (%B* %_this1){
__fresh541:
  %cast_op1708 = bitcast %B* %_this1 to %Object* 
  %dummy1709 = call %Object* @_Object_ctor ( %Object* %cast_op1708 )
  %path1710 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str315, i8** %path1710
  %vt_slot1711 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable309, %_B_vtable** %vt_slot1711
  ret %B* %_this1
}


define %A* @_A_g (%A* %_this1){
__fresh540:
  %mem_ptr1705 = call i32* @oat_malloc ( i32 16 )
  %obj1706 = bitcast i32* %mem_ptr1705 to %A* 
  %new_obj1707 = call %A* @_A_ctor ( %A* %obj1706 )
  ret %A* %new_obj1707
}


define %A* @_A_ctor (%A* %_this1){
__fresh539:
  %cast_op1696 = bitcast %A* %_this1 to %Object* 
  %dummy1697 = call %Object* @_Object_ctor ( %Object* %cast_op1696 )
  %path1698 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str314, i8** %path1698
  %path1699 = getelementptr %A* %_this1, i32 0, i32 3
  %mem_ptr1700 = call i32* @oat_malloc ( i32 12 )
  %obj1701 = bitcast i32* %mem_ptr1700 to %S* 
  %new_obj1702 = call %S* @_S_ctor ( %S* %obj1701 )
  store %S* %new_obj1702, %S** %path1699
  %vt_slot1703 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable308, %_A_vtable** %vt_slot1703
  %path1704 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %path1704
  ret %A* %_this1
}


define %S* @_S_f (%S* %_this1){
__fresh538:
  %mem_ptr1693 = call i32* @oat_malloc ( i32 12 )
  %obj1694 = bitcast i32* %mem_ptr1693 to %S* 
  %new_obj1695 = call %S* @_S_ctor ( %S* %obj1694 )
  ret %S* %new_obj1695
}


define { i32, [ 0 x i32 ] }* @_S_g (%S* %_this1){
__fresh537:
  %lhs_or_call1692 = load { i32, [ 0 x i32 ] }** @arr311
  ret { i32, [ 0 x i32 ] }* %lhs_or_call1692
}


define %S* @_S_ctor (%S* %_this1){
__fresh536:
  %cast_op1687 = bitcast %S* %_this1 to %Object* 
  %dummy1688 = call %Object* @_Object_ctor ( %Object* %cast_op1687 )
  %path1689 = getelementptr %S* %_this1, i32 0, i32 1
  store i8* @_const_str313, i8** %path1689
  %vt_slot1690 = getelementptr %S* %_this1, i32 0, i32 0
  store %_S_vtable* @_S_vtable307, %_S_vtable** %vt_slot1690
  %path1691 = getelementptr %S* %_this1, i32 0, i32 2
  store i32 2, i32* %path1691
  ret %S* %_this1
}


define void @arr311.init312 (){
__fresh535:
  %array_ptr1682 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1683 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1682 to { i32, [ 0 x i32 ] }* 
  %index_ptr1684 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1684
  %index_ptr1685 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1685
  %index_ptr1686 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1686
  store { i32, [ 0 x i32 ] }* %array1683, { i32, [ 0 x i32 ] }** @arr311
  ret void
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh534:
  %path1680 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1681 = load i8** %path1680
  ret i8* %lhs_or_call1681
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh533:
  %path1678 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str310, i8** %path1678
  %vt_slot1679 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable306, %_Object_vtable** %vt_slot1679
  ret %Object* %_this1
}



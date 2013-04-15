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
@a3325 = global %A* zeroinitializer, align 4		; initialized by @a3325.init326
@a2323 = global %A* zeroinitializer, align 4		; initialized by @a2323.init324
@a1321 = global %A* zeroinitializer, align 4		; initialized by @a1321.init322
@_const_str320.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str320 = alias bitcast([ 2 x i8 ]* @_const_str320.str. to i8*)@_const_str319.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str319 = alias bitcast([ 2 x i8 ]* @_const_str319.str. to i8*)@_const_str318.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str318 = alias bitcast([ 7 x i8 ]* @_const_str318.str. to i8*)@_A_vtable317 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable316, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_print}, align 4
@_Object_vtable316 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh553:
  call void @a1321.init322(  )
  call void @a2323.init324(  )
  call void @a3325.init326(  )
  ret void
}


define i32 @program (i32 %argc1884, { i32, [ 0 x i8* ] }* %argv1882){
__fresh552:
  %argc_slot1885 = alloca i32
  store i32 %argc1884, i32* %argc_slot1885
  %argv_slot1883 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1882, { i32, [ 0 x i8* ] }** %argv_slot1883
  %mem_ptr1886 = call i32* @oat_malloc ( i32 8 )
  %obj1887 = bitcast i32* %mem_ptr1886 to %A* 
  %new_obj1888 = call %A* @_A_ctor ( %A* %obj1887 )
  %vdecl_slot1889 = alloca %A*
  store %A* %new_obj1888, %A** %vdecl_slot1889
  %lhs_or_call1890 = load %A** %vdecl_slot1889
  %vtmp1892 = getelementptr %A* %lhs_or_call1890, i32 0, i32 0
  %vtable1891 = load %_A_vtable** %vtmp1892
  %fptmp1893 = getelementptr %_A_vtable* %vtable1891, i32 0, i32 2
  %method1894 = load void (%A*)** %fptmp1893
  call void %method1894( %A* %lhs_or_call1890 )
  %lhs_or_call1895 = load %A** @a1321
  %vtmp1897 = getelementptr %A* %lhs_or_call1895, i32 0, i32 0
  %vtable1896 = load %_A_vtable** %vtmp1897
  %fptmp1898 = getelementptr %_A_vtable* %vtable1896, i32 0, i32 2
  %method1899 = load void (%A*)** %fptmp1898
  call void %method1899( %A* %lhs_or_call1895 )
  %lhs_or_call1900 = load %A** @a2323
  %vtmp1902 = getelementptr %A* %lhs_or_call1900, i32 0, i32 0
  %vtable1901 = load %_A_vtable** %vtmp1902
  %fptmp1903 = getelementptr %_A_vtable* %vtable1901, i32 0, i32 2
  %method1904 = load void (%A*)** %fptmp1903
  call void %method1904( %A* %lhs_or_call1900 )
  %lhs_or_call1905 = load %A** @a3325
  %vtmp1907 = getelementptr %A* %lhs_or_call1905, i32 0, i32 0
  %vtable1906 = load %_A_vtable** %vtmp1907
  %fptmp1908 = getelementptr %_A_vtable* %vtable1906, i32 0, i32 2
  %method1909 = load void (%A*)** %fptmp1908
  call void %method1909( %A* %lhs_or_call1905 )
  ret i32 0
}


define void @a3325.init326 (){
__fresh551:
  %mem_ptr1879 = call i32* @oat_malloc ( i32 8 )
  %obj1880 = bitcast i32* %mem_ptr1879 to %A* 
  %new_obj1881 = call %A* @_A_ctor ( %A* %obj1880 )
  store %A* %new_obj1881, %A** @a3325
  ret void
}


define void @a2323.init324 (){
__fresh550:
  %mem_ptr1876 = call i32* @oat_malloc ( i32 8 )
  %obj1877 = bitcast i32* %mem_ptr1876 to %A* 
  %new_obj1878 = call %A* @_A_ctor ( %A* %obj1877 )
  store %A* %new_obj1878, %A** @a2323
  ret void
}


define void @a1321.init322 (){
__fresh549:
  %mem_ptr1873 = call i32* @oat_malloc ( i32 8 )
  %obj1874 = bitcast i32* %mem_ptr1873 to %A* 
  %new_obj1875 = call %A* @_A_ctor ( %A* %obj1874 )
  store %A* %new_obj1875, %A** @a1321
  ret void
}


define void @_A_print (%A* %_this1){
__fresh548:
  call void @print_string( i8* @_const_str320 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh547:
  %cast_op1869 = bitcast %A* %_this1 to %Object* 
  %dummy1870 = call %Object* @_Object_ctor ( %Object* %cast_op1869 )
  %path1871 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str319, i8** %path1871
  %vt_slot1872 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable317, %_A_vtable** %vt_slot1872
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh546:
  %path1867 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1868 = load i8** %path1867
  ret i8* %lhs_or_call1868
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh545:
  %path1865 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str318, i8** %path1865
  %vt_slot1866 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable316, %_Object_vtable** %vt_slot1866
  ret %Object* %_this1
}



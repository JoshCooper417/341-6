%G = type { %_G_vtable*, i8* }
%_G_vtable = type { %_D_vtable*, i8* (%Object*)* }
%F = type { %_F_vtable*, i8* }
%_F_vtable = type { %_B_vtable*, i8* (%Object*)* }
%E = type { %_E_vtable*, i8* }
%_E_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%D = type { %_D_vtable*, i8* }
%_D_vtable = type { %_C_vtable*, i8* (%Object*)* }
%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
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
@_const_str342.str. = private unnamed_addr constant [ 2 x i8 ] c "G\00", align 4
@_const_str342 = alias bitcast([ 2 x i8 ]* @_const_str342.str. to i8*)@_const_str341.str. = private unnamed_addr constant [ 2 x i8 ] c "F\00", align 4
@_const_str341 = alias bitcast([ 2 x i8 ]* @_const_str341.str. to i8*)@_const_str340.str. = private unnamed_addr constant [ 2 x i8 ] c "E\00", align 4
@_const_str340 = alias bitcast([ 2 x i8 ]* @_const_str340.str. to i8*)@_const_str339.str. = private unnamed_addr constant [ 2 x i8 ] c "D\00", align 4
@_const_str339 = alias bitcast([ 2 x i8 ]* @_const_str339.str. to i8*)@_const_str338.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str338 = alias bitcast([ 2 x i8 ]* @_const_str338.str. to i8*)@_const_str337.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str337 = alias bitcast([ 2 x i8 ]* @_const_str337.str. to i8*)@_const_str336.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str336 = alias bitcast([ 2 x i8 ]* @_const_str336.str. to i8*)@_const_str335.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str335 = alias bitcast([ 7 x i8 ]* @_const_str335.str. to i8*)@_G_vtable334 = private constant %_G_vtable {%_D_vtable* @_D_vtable331, i8* (%Object*)* @_Object_get_name}, align 4
@_F_vtable333 = private constant %_F_vtable {%_B_vtable* @_B_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_E_vtable332 = private constant %_E_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_D_vtable331 = private constant %_D_vtable {%_C_vtable* @_C_vtable330, i8* (%Object*)* @_Object_get_name}, align 4
@_C_vtable330 = private constant %_C_vtable {%_B_vtable* @_B_vtable329, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable329 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable328 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable327, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable327 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh564:
  ret void
}


define i32 @program (i32 %argc1944, { i32, [ 0 x i8* ] }* %argv1942){
__fresh563:
  %argc_slot1945 = alloca i32
  store i32 %argc1944, i32* %argc_slot1945
  %argv_slot1943 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1942, { i32, [ 0 x i8* ] }** %argv_slot1943
  %mem_ptr1946 = call i32* @oat_malloc ( i32 8 )
  %obj1947 = bitcast i32* %mem_ptr1946 to %Object* 
  %new_obj1948 = call %Object* @_Object_ctor ( %Object* %obj1947 )
  %vdecl_slot1949 = alloca %Object*
  store %Object* %new_obj1948, %Object** %vdecl_slot1949
  %mem_ptr1950 = call i32* @oat_malloc ( i32 8 )
  %obj1951 = bitcast i32* %mem_ptr1950 to %A* 
  %new_obj1952 = call %A* @_A_ctor ( %A* %obj1951 )
  %vdecl_slot1953 = alloca %A*
  store %A* %new_obj1952, %A** %vdecl_slot1953
  %mem_ptr1954 = call i32* @oat_malloc ( i32 8 )
  %obj1955 = bitcast i32* %mem_ptr1954 to %B* 
  %new_obj1956 = call %B* @_B_ctor ( %B* %obj1955 )
  %vdecl_slot1957 = alloca %B*
  store %B* %new_obj1956, %B** %vdecl_slot1957
  %mem_ptr1958 = call i32* @oat_malloc ( i32 8 )
  %obj1959 = bitcast i32* %mem_ptr1958 to %C* 
  %new_obj1960 = call %C* @_C_ctor ( %C* %obj1959 )
  %cast_op1961 = bitcast %C* %new_obj1960 to %B* 
  %vdecl_slot1962 = alloca %B*
  store %B* %cast_op1961, %B** %vdecl_slot1962
  %mem_ptr1963 = call i32* @oat_malloc ( i32 8 )
  %obj1964 = bitcast i32* %mem_ptr1963 to %D* 
  %new_obj1965 = call %D* @_D_ctor ( %D* %obj1964 )
  %cast_op1966 = bitcast %D* %new_obj1965 to %B* 
  %vdecl_slot1967 = alloca %B*
  store %B* %cast_op1966, %B** %vdecl_slot1967
  %mem_ptr1968 = call i32* @oat_malloc ( i32 8 )
  %obj1969 = bitcast i32* %mem_ptr1968 to %E* 
  %new_obj1970 = call %E* @_E_ctor ( %E* %obj1969 )
  %vdecl_slot1971 = alloca %E*
  store %E* %new_obj1970, %E** %vdecl_slot1971
  %mem_ptr1972 = call i32* @oat_malloc ( i32 8 )
  %obj1973 = bitcast i32* %mem_ptr1972 to %F* 
  %new_obj1974 = call %F* @_F_ctor ( %F* %obj1973 )
  %cast_op1975 = bitcast %F* %new_obj1974 to %B* 
  %vdecl_slot1976 = alloca %B*
  store %B* %cast_op1975, %B** %vdecl_slot1976
  %mem_ptr1977 = call i32* @oat_malloc ( i32 8 )
  %obj1978 = bitcast i32* %mem_ptr1977 to %G* 
  %new_obj1979 = call %G* @_G_ctor ( %G* %obj1978 )
  %vdecl_slot1980 = alloca %G*
  store %G* %new_obj1979, %G** %vdecl_slot1980
  %lhs_or_call1981 = load %Object** %vdecl_slot1949
  %vtmp1983 = getelementptr %Object* %lhs_or_call1981, i32 0, i32 0
  %vtable1982 = load %_Object_vtable** %vtmp1983
  %fptmp1984 = getelementptr %_Object_vtable* %vtable1982, i32 0, i32 1
  %method1985 = load i8* (%Object*)** %fptmp1984
  %ret1986 = call i8* %method1985 ( %Object* %lhs_or_call1981 )
  call void @print_string( i8* %ret1986 )
  %lhs_or_call1987 = load %A** %vdecl_slot1953
  %vtmp1989 = getelementptr %A* %lhs_or_call1987, i32 0, i32 0
  %vtable1988 = load %_A_vtable** %vtmp1989
  %fptmp1990 = getelementptr %_A_vtable* %vtable1988, i32 0, i32 1
  %method1991 = load i8* (%Object*)** %fptmp1990
  %cast_op1992 = bitcast %A* %lhs_or_call1987 to %Object* 
  %ret1993 = call i8* %method1991 ( %Object* %cast_op1992 )
  call void @print_string( i8* %ret1993 )
  %lhs_or_call1994 = load %B** %vdecl_slot1957
  %vtmp1996 = getelementptr %B* %lhs_or_call1994, i32 0, i32 0
  %vtable1995 = load %_B_vtable** %vtmp1996
  %fptmp1997 = getelementptr %_B_vtable* %vtable1995, i32 0, i32 1
  %method1998 = load i8* (%Object*)** %fptmp1997
  %cast_op1999 = bitcast %B* %lhs_or_call1994 to %Object* 
  %ret2000 = call i8* %method1998 ( %Object* %cast_op1999 )
  call void @print_string( i8* %ret2000 )
  %lhs_or_call2001 = load %B** %vdecl_slot1962
  %vtmp2003 = getelementptr %B* %lhs_or_call2001, i32 0, i32 0
  %vtable2002 = load %_B_vtable** %vtmp2003
  %fptmp2004 = getelementptr %_B_vtable* %vtable2002, i32 0, i32 1
  %method2005 = load i8* (%Object*)** %fptmp2004
  %cast_op2006 = bitcast %B* %lhs_or_call2001 to %Object* 
  %ret2007 = call i8* %method2005 ( %Object* %cast_op2006 )
  call void @print_string( i8* %ret2007 )
  %lhs_or_call2008 = load %B** %vdecl_slot1967
  %vtmp2010 = getelementptr %B* %lhs_or_call2008, i32 0, i32 0
  %vtable2009 = load %_B_vtable** %vtmp2010
  %fptmp2011 = getelementptr %_B_vtable* %vtable2009, i32 0, i32 1
  %method2012 = load i8* (%Object*)** %fptmp2011
  %cast_op2013 = bitcast %B* %lhs_or_call2008 to %Object* 
  %ret2014 = call i8* %method2012 ( %Object* %cast_op2013 )
  call void @print_string( i8* %ret2014 )
  %lhs_or_call2015 = load %E** %vdecl_slot1971
  %vtmp2017 = getelementptr %E* %lhs_or_call2015, i32 0, i32 0
  %vtable2016 = load %_E_vtable** %vtmp2017
  %fptmp2018 = getelementptr %_E_vtable* %vtable2016, i32 0, i32 1
  %method2019 = load i8* (%Object*)** %fptmp2018
  %cast_op2020 = bitcast %E* %lhs_or_call2015 to %Object* 
  %ret2021 = call i8* %method2019 ( %Object* %cast_op2020 )
  call void @print_string( i8* %ret2021 )
  %lhs_or_call2022 = load %B** %vdecl_slot1976
  %vtmp2024 = getelementptr %B* %lhs_or_call2022, i32 0, i32 0
  %vtable2023 = load %_B_vtable** %vtmp2024
  %fptmp2025 = getelementptr %_B_vtable* %vtable2023, i32 0, i32 1
  %method2026 = load i8* (%Object*)** %fptmp2025
  %cast_op2027 = bitcast %B* %lhs_or_call2022 to %Object* 
  %ret2028 = call i8* %method2026 ( %Object* %cast_op2027 )
  call void @print_string( i8* %ret2028 )
  %lhs_or_call2029 = load %G** %vdecl_slot1980
  %vtmp2031 = getelementptr %G* %lhs_or_call2029, i32 0, i32 0
  %vtable2030 = load %_G_vtable** %vtmp2031
  %fptmp2032 = getelementptr %_G_vtable* %vtable2030, i32 0, i32 1
  %method2033 = load i8* (%Object*)** %fptmp2032
  %cast_op2034 = bitcast %G* %lhs_or_call2029 to %Object* 
  %ret2035 = call i8* %method2033 ( %Object* %cast_op2034 )
  call void @print_string( i8* %ret2035 )
  ret i32 0
}


define %G* @_G_ctor (%G* %_this1){
__fresh562:
  %cast_op1938 = bitcast %G* %_this1 to %D* 
  %dummy1939 = call %D* @_D_ctor ( %D* %cast_op1938 )
  %path1940 = getelementptr %G* %_this1, i32 0, i32 1
  store i8* @_const_str342, i8** %path1940
  %vt_slot1941 = getelementptr %G* %_this1, i32 0, i32 0
  store %_G_vtable* @_G_vtable334, %_G_vtable** %vt_slot1941
  ret %G* %_this1
}


define %F* @_F_ctor (%F* %_this1){
__fresh561:
  %cast_op1934 = bitcast %F* %_this1 to %B* 
  %dummy1935 = call %B* @_B_ctor ( %B* %cast_op1934 )
  %path1936 = getelementptr %F* %_this1, i32 0, i32 1
  store i8* @_const_str341, i8** %path1936
  %vt_slot1937 = getelementptr %F* %_this1, i32 0, i32 0
  store %_F_vtable* @_F_vtable333, %_F_vtable** %vt_slot1937
  ret %F* %_this1
}


define %E* @_E_ctor (%E* %_this1){
__fresh560:
  %cast_op1930 = bitcast %E* %_this1 to %Object* 
  %dummy1931 = call %Object* @_Object_ctor ( %Object* %cast_op1930 )
  %path1932 = getelementptr %E* %_this1, i32 0, i32 1
  store i8* @_const_str340, i8** %path1932
  %vt_slot1933 = getelementptr %E* %_this1, i32 0, i32 0
  store %_E_vtable* @_E_vtable332, %_E_vtable** %vt_slot1933
  ret %E* %_this1
}


define %D* @_D_ctor (%D* %_this1){
__fresh559:
  %cast_op1926 = bitcast %D* %_this1 to %C* 
  %dummy1927 = call %C* @_C_ctor ( %C* %cast_op1926 )
  %path1928 = getelementptr %D* %_this1, i32 0, i32 1
  store i8* @_const_str339, i8** %path1928
  %vt_slot1929 = getelementptr %D* %_this1, i32 0, i32 0
  store %_D_vtable* @_D_vtable331, %_D_vtable** %vt_slot1929
  ret %D* %_this1
}


define %C* @_C_ctor (%C* %_this1){
__fresh558:
  %cast_op1922 = bitcast %C* %_this1 to %B* 
  %dummy1923 = call %B* @_B_ctor ( %B* %cast_op1922 )
  %path1924 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str338, i8** %path1924
  %vt_slot1925 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable330, %_C_vtable** %vt_slot1925
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh557:
  %cast_op1918 = bitcast %B* %_this1 to %Object* 
  %dummy1919 = call %Object* @_Object_ctor ( %Object* %cast_op1918 )
  %path1920 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str337, i8** %path1920
  %vt_slot1921 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable329, %_B_vtable** %vt_slot1921
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh556:
  %cast_op1914 = bitcast %A* %_this1 to %Object* 
  %dummy1915 = call %Object* @_Object_ctor ( %Object* %cast_op1914 )
  %path1916 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str336, i8** %path1916
  %vt_slot1917 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable328, %_A_vtable** %vt_slot1917
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh555:
  %path1912 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1913 = load i8** %path1912
  ret i8* %lhs_or_call1913
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh554:
  %path1910 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str335, i8** %path1910
  %vt_slot1911 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable327, %_Object_vtable** %vt_slot1911
  ret %Object* %_this1
}



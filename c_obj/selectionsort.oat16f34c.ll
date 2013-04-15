%Array = type { %_Array_vtable*, i8*, i32, %ArrayItem* }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%Array*, i32)*, void (%Array*, i32, i32)*, void (%Array*, i32)*, i32 (%Array*)* }
%ArrayItem = type { %_ArrayItem_vtable*, i8*, i32, %ArrayItem* }
%_ArrayItem_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%ArrayItem*, i32)* }
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
@_const_str704.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str704 = alias bitcast([ 24 x i8 ]* @_const_str704.str. to i8*)@_const_str703.str. = private unnamed_addr constant [ 24 x i8 ] c "get error: out of range\00", align 4
@_const_str703 = alias bitcast([ 24 x i8 ]* @_const_str703.str. to i8*)@_const_str702.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str702 = alias bitcast([ 6 x i8 ]* @_const_str702.str. to i8*)@_const_str701.str. = private unnamed_addr constant [ 10 x i8 ] c "ArrayItem\00", align 4
@_const_str701 = alias bitcast([ 10 x i8 ]* @_const_str701.str. to i8*)@_const_str700.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str700 = alias bitcast([ 7 x i8 ]* @_const_str700.str. to i8*)@_Array_vtable699 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable697, i8* (%Object*)* @_Object_get_name, i32 (%Array*, i32)* @_Array_getElement, void (%Array*, i32, i32)* @_Array_setElement, void (%Array*, i32)* @_Array_addElement, i32 (%Array*)* @_Array_getLength}, align 4
@_ArrayItem_vtable698 = private constant %_ArrayItem_vtable {%_Object_vtable* @_Object_vtable697, i8* (%Object*)* @_Object_get_name, void (%ArrayItem*, i32)* @_ArrayItem_set}, align 4
@_Object_vtable697 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1990:
  ret void
}


define i32 @program (i32 %argc6039, { i32, [ 0 x i8* ] }* %argv6037){
__fresh1977:
  %argc_slot6040 = alloca i32
  store i32 %argc6039, i32* %argc_slot6040
  %argv_slot6038 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6037, { i32, [ 0 x i8* ] }** %argv_slot6038
  %mem_ptr6041 = call i32* @oat_malloc ( i32 16 )
  %obj6042 = bitcast i32* %mem_ptr6041 to %Array* 
  %new_obj6043 = call %Array* @_Array_ctor ( %Array* %obj6042 )
  %vdecl_slot6044 = alloca %Array*
  store %Array* %new_obj6043, %Array** %vdecl_slot6044
  %vdecl_slot6045 = alloca i32
  store i32 0, i32* %vdecl_slot6045
  %vdecl_slot6046 = alloca i32
  store i32 0, i32* %vdecl_slot6046
  %lhs_or_call6047 = load %Array** %vdecl_slot6044
  %vtmp6049 = getelementptr %Array* %lhs_or_call6047, i32 0, i32 0
  %vtable6048 = load %_Array_vtable** %vtmp6049
  %fptmp6050 = getelementptr %_Array_vtable* %vtable6048, i32 0, i32 4
  %method6051 = load void (%Array*, i32)** %fptmp6050
  call void %method6051( %Array* %lhs_or_call6047, i32 79 )
  %lhs_or_call6052 = load %Array** %vdecl_slot6044
  %vtmp6054 = getelementptr %Array* %lhs_or_call6052, i32 0, i32 0
  %vtable6053 = load %_Array_vtable** %vtmp6054
  %fptmp6055 = getelementptr %_Array_vtable* %vtable6053, i32 0, i32 5
  %method6056 = load i32 (%Array*)** %fptmp6055
  %ret6057 = call i32 %method6056 ( %Array* %lhs_or_call6052 )
  store i32 %ret6057, i32* %vdecl_slot6045
  %vdecl_slot6058 = alloca i32
  store i32 1, i32* %vdecl_slot6058
  br label %__cond1961

__cond1961:
  %lhs_or_call6059 = load i32* %vdecl_slot6058
  %lhs_or_call6060 = load i32* %vdecl_slot6045
  %bop6061 = icmp slt i32 %lhs_or_call6059, %lhs_or_call6060
  br i1 %bop6061, label %__body1960, label %__post1959

__fresh1978:
  br label %__body1960

__body1960:
  %lhs_or_call6062 = load i32* %vdecl_slot6058
  %vdecl_slot6063 = alloca i32
  store i32 %lhs_or_call6062, i32* %vdecl_slot6063
  %lhs_or_call6064 = load i32* %vdecl_slot6058
  %bop6065 = add i32 %lhs_or_call6064, 1
  %vdecl_slot6066 = alloca i32
  store i32 %bop6065, i32* %vdecl_slot6066
  br label %__cond1964

__cond1964:
  %lhs_or_call6067 = load i32* %vdecl_slot6066
  %lhs_or_call6068 = load i32* %vdecl_slot6045
  %bop6069 = icmp sle i32 %lhs_or_call6067, %lhs_or_call6068
  br i1 %bop6069, label %__body1963, label %__post1962

__fresh1979:
  br label %__body1963

__body1963:
  %lhs_or_call6071 = load %Array** %vdecl_slot6044
  %vtmp6073 = getelementptr %Array* %lhs_or_call6071, i32 0, i32 0
  %vtable6072 = load %_Array_vtable** %vtmp6073
  %fptmp6074 = getelementptr %_Array_vtable* %vtable6072, i32 0, i32 2
  %method6075 = load i32 (%Array*, i32)** %fptmp6074
  %lhs_or_call6070 = load i32* %vdecl_slot6066
  %ret6076 = call i32 %method6075 ( %Array* %lhs_or_call6071, i32 %lhs_or_call6070 )
  %vdecl_slot6077 = alloca i32
  store i32 %ret6076, i32* %vdecl_slot6077
  %lhs_or_call6079 = load %Array** %vdecl_slot6044
  %vtmp6081 = getelementptr %Array* %lhs_or_call6079, i32 0, i32 0
  %vtable6080 = load %_Array_vtable** %vtmp6081
  %fptmp6082 = getelementptr %_Array_vtable* %vtable6080, i32 0, i32 2
  %method6083 = load i32 (%Array*, i32)** %fptmp6082
  %lhs_or_call6078 = load i32* %vdecl_slot6063
  %ret6084 = call i32 %method6083 ( %Array* %lhs_or_call6079, i32 %lhs_or_call6078 )
  %vdecl_slot6085 = alloca i32
  store i32 %ret6084, i32* %vdecl_slot6085
  %lhs_or_call6086 = load i32* %vdecl_slot6077
  %lhs_or_call6087 = load i32* %vdecl_slot6085
  %bop6088 = icmp slt i32 %lhs_or_call6086, %lhs_or_call6087
  br i1 %bop6088, label %__then1967, label %__else1966

__fresh1980:
  br label %__then1967

__then1967:
  %lhs_or_call6089 = load i32* %vdecl_slot6066
  store i32 %lhs_or_call6089, i32* %vdecl_slot6063
  br label %__merge1965

__fresh1981:
  br label %__else1966

__else1966:
  br label %__merge1965

__merge1965:
  %lhs_or_call6090 = load i32* %vdecl_slot6066
  %bop6091 = add i32 %lhs_or_call6090, 1
  store i32 %bop6091, i32* %vdecl_slot6066
  br label %__cond1964

__fresh1982:
  br label %__post1962

__post1962:
  %lhs_or_call6092 = load i32* %vdecl_slot6063
  %lhs_or_call6093 = load i32* %vdecl_slot6058
  %bop6094 = icmp ne i32 %lhs_or_call6092, %lhs_or_call6093
  br i1 %bop6094, label %__then1970, label %__else1969

__fresh1983:
  br label %__then1970

__then1970:
  %lhs_or_call6096 = load %Array** %vdecl_slot6044
  %vtmp6098 = getelementptr %Array* %lhs_or_call6096, i32 0, i32 0
  %vtable6097 = load %_Array_vtable** %vtmp6098
  %fptmp6099 = getelementptr %_Array_vtable* %vtable6097, i32 0, i32 2
  %method6100 = load i32 (%Array*, i32)** %fptmp6099
  %lhs_or_call6095 = load i32* %vdecl_slot6063
  %ret6101 = call i32 %method6100 ( %Array* %lhs_or_call6096, i32 %lhs_or_call6095 )
  %vdecl_slot6102 = alloca i32
  store i32 %ret6101, i32* %vdecl_slot6102
  %lhs_or_call6104 = load %Array** %vdecl_slot6044
  %vtmp6106 = getelementptr %Array* %lhs_or_call6104, i32 0, i32 0
  %vtable6105 = load %_Array_vtable** %vtmp6106
  %fptmp6107 = getelementptr %_Array_vtable* %vtable6105, i32 0, i32 2
  %method6108 = load i32 (%Array*, i32)** %fptmp6107
  %lhs_or_call6103 = load i32* %vdecl_slot6058
  %ret6109 = call i32 %method6108 ( %Array* %lhs_or_call6104, i32 %lhs_or_call6103 )
  %vdecl_slot6110 = alloca i32
  store i32 %ret6109, i32* %vdecl_slot6110
  %lhs_or_call6113 = load %Array** %vdecl_slot6044
  %vtmp6115 = getelementptr %Array* %lhs_or_call6113, i32 0, i32 0
  %vtable6114 = load %_Array_vtable** %vtmp6115
  %fptmp6116 = getelementptr %_Array_vtable* %vtable6114, i32 0, i32 3
  %method6117 = load void (%Array*, i32, i32)** %fptmp6116
  %lhs_or_call6111 = load i32* %vdecl_slot6102
  %lhs_or_call6112 = load i32* %vdecl_slot6058
  call void %method6117( %Array* %lhs_or_call6113, i32 %lhs_or_call6112, i32 %lhs_or_call6111 )
  %lhs_or_call6120 = load %Array** %vdecl_slot6044
  %vtmp6122 = getelementptr %Array* %lhs_or_call6120, i32 0, i32 0
  %vtable6121 = load %_Array_vtable** %vtmp6122
  %fptmp6123 = getelementptr %_Array_vtable* %vtable6121, i32 0, i32 3
  %method6124 = load void (%Array*, i32, i32)** %fptmp6123
  %lhs_or_call6118 = load i32* %vdecl_slot6110
  %lhs_or_call6119 = load i32* %vdecl_slot6063
  call void %method6124( %Array* %lhs_or_call6120, i32 %lhs_or_call6119, i32 %lhs_or_call6118 )
  br label %__merge1968

__fresh1984:
  br label %__else1969

__else1969:
  br label %__merge1968

__merge1968:
  %lhs_or_call6125 = load i32* %vdecl_slot6058
  %bop6126 = add i32 %lhs_or_call6125, 1
  store i32 %bop6126, i32* %vdecl_slot6058
  br label %__cond1961

__fresh1985:
  br label %__post1959

__post1959:
  %vdecl_slot6127 = alloca i32
  store i32 1, i32* %vdecl_slot6127
  br label %__cond1973

__cond1973:
  %lhs_or_call6128 = load i32* %vdecl_slot6127
  %lhs_or_call6129 = load i32* %vdecl_slot6045
  %bop6130 = icmp slt i32 %lhs_or_call6128, %lhs_or_call6129
  br i1 %bop6130, label %__body1972, label %__post1971

__fresh1986:
  br label %__body1972

__body1972:
  %lhs_or_call6132 = load %Array** %vdecl_slot6044
  %vtmp6134 = getelementptr %Array* %lhs_or_call6132, i32 0, i32 0
  %vtable6133 = load %_Array_vtable** %vtmp6134
  %fptmp6135 = getelementptr %_Array_vtable* %vtable6133, i32 0, i32 2
  %method6136 = load i32 (%Array*, i32)** %fptmp6135
  %lhs_or_call6131 = load i32* %vdecl_slot6127
  %ret6137 = call i32 %method6136 ( %Array* %lhs_or_call6132, i32 %lhs_or_call6131 )
  %vdecl_slot6138 = alloca i32
  store i32 %ret6137, i32* %vdecl_slot6138
  %lhs_or_call6141 = load %Array** %vdecl_slot6044
  %vtmp6143 = getelementptr %Array* %lhs_or_call6141, i32 0, i32 0
  %vtable6142 = load %_Array_vtable** %vtmp6143
  %fptmp6144 = getelementptr %_Array_vtable* %vtable6142, i32 0, i32 2
  %method6145 = load i32 (%Array*, i32)** %fptmp6144
  %lhs_or_call6139 = load i32* %vdecl_slot6127
  %bop6140 = add i32 %lhs_or_call6139, 1
  %ret6146 = call i32 %method6145 ( %Array* %lhs_or_call6141, i32 %bop6140 )
  %vdecl_slot6147 = alloca i32
  store i32 %ret6146, i32* %vdecl_slot6147
  %lhs_or_call6148 = load i32* %vdecl_slot6138
  %lhs_or_call6149 = load i32* %vdecl_slot6147
  %bop6150 = icmp sgt i32 %lhs_or_call6148, %lhs_or_call6149
  br i1 %bop6150, label %__then1976, label %__else1975

__fresh1987:
  br label %__then1976

__then1976:
  %lhs_or_call6151 = load i32* %vdecl_slot6046
  %bop6152 = add i32 %lhs_or_call6151, 1
  store i32 %bop6152, i32* %vdecl_slot6046
  br label %__merge1974

__fresh1988:
  br label %__else1975

__else1975:
  br label %__merge1974

__merge1974:
  %lhs_or_call6153 = load i32* %vdecl_slot6127
  %bop6154 = add i32 %lhs_or_call6153, 1
  store i32 %bop6154, i32* %vdecl_slot6127
  br label %__cond1973

__fresh1989:
  br label %__post1971

__post1971:
  %lhs_or_call6155 = load i32* %vdecl_slot6046
  ret i32 %lhs_or_call6155
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh1958:
  %path6035 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6036 = load i32* %path6035
  ret i32 %lhs_or_call6036
}


define void @_Array_addElement (%Array* %_this1, i32 %key5998){
__fresh1949:
  %key_slot5999 = alloca i32
  store i32 %key5998, i32* %key_slot5999
  %path6000 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6001 = load i32* %path6000
  %bop6002 = icmp eq i32 %lhs_or_call6001, 0
  br i1 %bop6002, label %__then1948, label %__else1947

__fresh1950:
  br label %__then1948

__then1948:
  %path6003 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call6004 = load i32* %key_slot5999
  %mem_ptr6005 = call i32* @oat_malloc ( i32 16 )
  %obj6006 = bitcast i32* %mem_ptr6005 to %ArrayItem* 
  %new_obj6007 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj6006, i32 %lhs_or_call6004 )
  store %ArrayItem* %new_obj6007, %ArrayItem** %path6003
  br label %__merge1946

__fresh1951:
  br label %__else1947

__else1947:
  %path6008 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call6009 = load %ArrayItem** %path6008
  %ifnull_slot6010 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call6009, %ArrayItem** %ifnull_slot6010
  %ifnull_guard6011 = icmp ne %ArrayItem* %lhs_or_call6009, null
  br i1 %ifnull_guard6011, label %__then1945, label %__else1944

__fresh1952:
  br label %__then1945

__then1945:
  %vdecl_slot6012 = alloca i32
  store i32 1, i32* %vdecl_slot6012
  br label %__cond1939

__cond1939:
  %lhs_or_call6013 = load i32* %vdecl_slot6012
  %path6014 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6015 = load i32* %path6014
  %bop6016 = icmp ne i32 %lhs_or_call6013, %lhs_or_call6015
  br i1 %bop6016, label %__body1938, label %__post1937

__fresh1953:
  br label %__body1938

__body1938:
  %lhs_or_call6017 = load %ArrayItem** %ifnull_slot6010
  %path6018 = getelementptr %ArrayItem* %lhs_or_call6017, i32 0, i32 3
  %lhs_or_call6019 = load %ArrayItem** %path6018
  %ifnull_slot6020 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call6019, %ArrayItem** %ifnull_slot6020
  %ifnull_guard6021 = icmp ne %ArrayItem* %lhs_or_call6019, null
  br i1 %ifnull_guard6021, label %__then1942, label %__else1941

__fresh1954:
  br label %__then1942

__then1942:
  %lhs_or_call6022 = load %ArrayItem** %ifnull_slot6020
  store %ArrayItem* %lhs_or_call6022, %ArrayItem** %ifnull_slot6010
  br label %__merge1940

__fresh1955:
  br label %__else1941

__else1941:
  br label %__merge1940

__merge1940:
  %lhs_or_call6023 = load i32* %vdecl_slot6012
  %bop6024 = add i32 %lhs_or_call6023, 1
  store i32 %bop6024, i32* %vdecl_slot6012
  br label %__cond1939

__fresh1956:
  br label %__post1937

__post1937:
  %lhs_or_call6025 = load %ArrayItem** %ifnull_slot6010
  %path6026 = getelementptr %ArrayItem* %lhs_or_call6025, i32 0, i32 3
  %lhs_or_call6027 = load i32* %key_slot5999
  %mem_ptr6028 = call i32* @oat_malloc ( i32 16 )
  %obj6029 = bitcast i32* %mem_ptr6028 to %ArrayItem* 
  %new_obj6030 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj6029, i32 %lhs_or_call6027 )
  store %ArrayItem* %new_obj6030, %ArrayItem** %path6026
  br label %__merge1943

__fresh1957:
  br label %__else1944

__else1944:
  br label %__merge1943

__merge1943:
  br label %__merge1946

__merge1946:
  %path6031 = getelementptr %Array* %_this1, i32 0, i32 2
  %path6032 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6033 = load i32* %path6032
  %bop6034 = add i32 %lhs_or_call6033, 1
  store i32 %bop6034, i32* %path6031
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index5977, i32 %key5975){
__fresh1930:
  %index_slot5978 = alloca i32
  store i32 %index5977, i32* %index_slot5978
  %key_slot5976 = alloca i32
  store i32 %key5975, i32* %key_slot5976
  %path5979 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call5980 = load %ArrayItem** %path5979
  %ifnull_slot5981 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5980, %ArrayItem** %ifnull_slot5981
  %ifnull_guard5982 = icmp ne %ArrayItem* %lhs_or_call5980, null
  br i1 %ifnull_guard5982, label %__then1929, label %__else1928

__fresh1931:
  br label %__then1929

__then1929:
  %vdecl_slot5983 = alloca i32
  store i32 1, i32* %vdecl_slot5983
  br label %__cond1923

__cond1923:
  %lhs_or_call5984 = load i32* %vdecl_slot5983
  %lhs_or_call5985 = load i32* %index_slot5978
  %bop5986 = icmp ne i32 %lhs_or_call5984, %lhs_or_call5985
  br i1 %bop5986, label %__body1922, label %__post1921

__fresh1932:
  br label %__body1922

__body1922:
  %lhs_or_call5987 = load %ArrayItem** %ifnull_slot5981
  %path5988 = getelementptr %ArrayItem* %lhs_or_call5987, i32 0, i32 3
  %lhs_or_call5989 = load %ArrayItem** %path5988
  %ifnull_slot5990 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5989, %ArrayItem** %ifnull_slot5990
  %ifnull_guard5991 = icmp ne %ArrayItem* %lhs_or_call5989, null
  br i1 %ifnull_guard5991, label %__then1926, label %__else1925

__fresh1933:
  br label %__then1926

__then1926:
  %lhs_or_call5992 = load %ArrayItem** %ifnull_slot5990
  store %ArrayItem* %lhs_or_call5992, %ArrayItem** %ifnull_slot5981
  br label %__merge1924

__fresh1934:
  br label %__else1925

__else1925:
  br label %__merge1924

__merge1924:
  %lhs_or_call5993 = load i32* %vdecl_slot5983
  %bop5994 = add i32 %lhs_or_call5993, 1
  store i32 %bop5994, i32* %vdecl_slot5983
  br label %__cond1923

__fresh1935:
  br label %__post1921

__post1921:
  %lhs_or_call5995 = load %ArrayItem** %ifnull_slot5981
  %path5996 = getelementptr %ArrayItem* %lhs_or_call5995, i32 0, i32 2
  %lhs_or_call5997 = load i32* %key_slot5976
  store i32 %lhs_or_call5997, i32* %path5996
  br label %__merge1927

__fresh1936:
  br label %__else1928

__else1928:
  call void @print_string( i8* @_const_str704 )
  call void @oat_abort( i32 -1 )
  br label %__merge1927

__merge1927:
  ret void
}


define i32 @_Array_getElement (%Array* %_this1, i32 %index5952){
__fresh1914:
  %index_slot5953 = alloca i32
  store i32 %index5952, i32* %index_slot5953
  %vdecl_slot5954 = alloca i32
  store i32 0, i32* %vdecl_slot5954
  %path5955 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call5956 = load %ArrayItem** %path5955
  %ifnull_slot5957 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5956, %ArrayItem** %ifnull_slot5957
  %ifnull_guard5958 = icmp ne %ArrayItem* %lhs_or_call5956, null
  br i1 %ifnull_guard5958, label %__then1913, label %__else1912

__fresh1915:
  br label %__then1913

__then1913:
  %vdecl_slot5959 = alloca i32
  store i32 1, i32* %vdecl_slot5959
  br label %__cond1907

__cond1907:
  %lhs_or_call5960 = load i32* %vdecl_slot5959
  %lhs_or_call5961 = load i32* %index_slot5953
  %bop5962 = icmp ne i32 %lhs_or_call5960, %lhs_or_call5961
  br i1 %bop5962, label %__body1906, label %__post1905

__fresh1916:
  br label %__body1906

__body1906:
  %lhs_or_call5963 = load %ArrayItem** %ifnull_slot5957
  %path5964 = getelementptr %ArrayItem* %lhs_or_call5963, i32 0, i32 3
  %lhs_or_call5965 = load %ArrayItem** %path5964
  %ifnull_slot5966 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5965, %ArrayItem** %ifnull_slot5966
  %ifnull_guard5967 = icmp ne %ArrayItem* %lhs_or_call5965, null
  br i1 %ifnull_guard5967, label %__then1910, label %__else1909

__fresh1917:
  br label %__then1910

__then1910:
  %lhs_or_call5968 = load %ArrayItem** %ifnull_slot5966
  store %ArrayItem* %lhs_or_call5968, %ArrayItem** %ifnull_slot5957
  br label %__merge1908

__fresh1918:
  br label %__else1909

__else1909:
  br label %__merge1908

__merge1908:
  %lhs_or_call5969 = load i32* %vdecl_slot5959
  %bop5970 = add i32 %lhs_or_call5969, 1
  store i32 %bop5970, i32* %vdecl_slot5959
  br label %__cond1907

__fresh1919:
  br label %__post1905

__post1905:
  %lhs_or_call5971 = load %ArrayItem** %ifnull_slot5957
  %path5972 = getelementptr %ArrayItem* %lhs_or_call5971, i32 0, i32 2
  %lhs_or_call5973 = load i32* %path5972
  store i32 %lhs_or_call5973, i32* %vdecl_slot5954
  br label %__merge1911

__fresh1920:
  br label %__else1912

__else1912:
  call void @print_string( i8* @_const_str703 )
  call void @oat_abort( i32 -1 )
  br label %__merge1911

__merge1911:
  %lhs_or_call5974 = load i32* %vdecl_slot5954
  ret i32 %lhs_or_call5974
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh1904:
  %cast_op5947 = bitcast %Array* %_this1 to %Object* 
  %dummy5948 = call %Object* @_Object_ctor ( %Object* %cast_op5947 )
  %path5949 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str702, i8** %path5949
  %vt_slot5950 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable699, %_Array_vtable** %vt_slot5950
  %path5951 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %path5951
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x5943){
__fresh1903:
  %x_slot5944 = alloca i32
  store i32 %x5943, i32* %x_slot5944
  %path5945 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call5946 = load i32* %x_slot5944
  store i32 %lhs_or_call5946, i32* %path5945
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x5933){
__fresh1902:
  %x_slot5934 = alloca i32
  store i32 %x5933, i32* %x_slot5934
  %cast_op5935 = bitcast %ArrayItem* %_this1 to %Object* 
  %dummy5936 = call %Object* @_Object_ctor ( %Object* %cast_op5935 )
  %path5937 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str701, i8** %path5937
  %vt_slot5938 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable698, %_ArrayItem_vtable** %vt_slot5938
  %path5939 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call5940 = load i32* %x_slot5934
  store i32 %lhs_or_call5940, i32* %path5939
  %path5941 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op5942 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op5942, %ArrayItem** %path5941
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1901:
  %path5931 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5932 = load i8** %path5931
  ret i8* %lhs_or_call5932
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1900:
  %path5929 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str700, i8** %path5929
  %vt_slot5930 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable697, %_Object_vtable** %vt_slot5930
  ret %Object* %_this1
}



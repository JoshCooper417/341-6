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


define i32 @program (i32 %argc6048, { i32, [ 0 x i8* ] }* %argv6046){
__fresh1977:
  %argc_slot6049 = alloca i32
  store i32 %argc6048, i32* %argc_slot6049
  %argv_slot6047 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6046, { i32, [ 0 x i8* ] }** %argv_slot6047
  %mem_ptr6050 = call i32* @oat_malloc ( i32 16 )
  %obj6051 = bitcast i32* %mem_ptr6050 to %Array* 
  %new_obj6052 = call %Array* @_Array_ctor ( %Array* %obj6051 )
  %vdecl_slot6053 = alloca %Array*
  store %Array* %new_obj6052, %Array** %vdecl_slot6053
  %vdecl_slot6054 = alloca i32
  store i32 0, i32* %vdecl_slot6054
  %vdecl_slot6055 = alloca i32
  store i32 0, i32* %vdecl_slot6055
  %lhs_or_call6056 = load %Array** %vdecl_slot6053
  %vtmp6058 = getelementptr %Array* %lhs_or_call6056, i32 0, i32 0
  %vtable6057 = load %_Array_vtable** %vtmp6058
  %fptmp6059 = getelementptr %_Array_vtable* %vtable6057, i32 0, i32 4
  %method6060 = load void (%Array*, i32)** %fptmp6059
  call void %method6060( %Array* %lhs_or_call6056, i32 79 )
  %lhs_or_call6061 = load %Array** %vdecl_slot6053
  %vtmp6063 = getelementptr %Array* %lhs_or_call6061, i32 0, i32 0
  %vtable6062 = load %_Array_vtable** %vtmp6063
  %fptmp6064 = getelementptr %_Array_vtable* %vtable6062, i32 0, i32 5
  %method6065 = load i32 (%Array*)** %fptmp6064
  %ret6066 = call i32 %method6065 ( %Array* %lhs_or_call6061 )
  store i32 %ret6066, i32* %vdecl_slot6054
  %vdecl_slot6067 = alloca i32
  store i32 1, i32* %vdecl_slot6067
  br label %__cond1961

__cond1961:
  %lhs_or_call6068 = load i32* %vdecl_slot6067
  %lhs_or_call6069 = load i32* %vdecl_slot6054
  %bop6070 = icmp slt i32 %lhs_or_call6068, %lhs_or_call6069
  br i1 %bop6070, label %__body1960, label %__post1959

__fresh1978:
  br label %__body1960

__body1960:
  %lhs_or_call6071 = load i32* %vdecl_slot6067
  %vdecl_slot6072 = alloca i32
  store i32 %lhs_or_call6071, i32* %vdecl_slot6072
  %lhs_or_call6073 = load i32* %vdecl_slot6067
  %bop6074 = add i32 %lhs_or_call6073, 1
  %vdecl_slot6075 = alloca i32
  store i32 %bop6074, i32* %vdecl_slot6075
  br label %__cond1964

__cond1964:
  %lhs_or_call6076 = load i32* %vdecl_slot6075
  %lhs_or_call6077 = load i32* %vdecl_slot6054
  %bop6078 = icmp sle i32 %lhs_or_call6076, %lhs_or_call6077
  br i1 %bop6078, label %__body1963, label %__post1962

__fresh1979:
  br label %__body1963

__body1963:
  %lhs_or_call6080 = load %Array** %vdecl_slot6053
  %vtmp6082 = getelementptr %Array* %lhs_or_call6080, i32 0, i32 0
  %vtable6081 = load %_Array_vtable** %vtmp6082
  %fptmp6083 = getelementptr %_Array_vtable* %vtable6081, i32 0, i32 2
  %method6084 = load i32 (%Array*, i32)** %fptmp6083
  %lhs_or_call6079 = load i32* %vdecl_slot6075
  %ret6085 = call i32 %method6084 ( %Array* %lhs_or_call6080, i32 %lhs_or_call6079 )
  %vdecl_slot6086 = alloca i32
  store i32 %ret6085, i32* %vdecl_slot6086
  %lhs_or_call6088 = load %Array** %vdecl_slot6053
  %vtmp6090 = getelementptr %Array* %lhs_or_call6088, i32 0, i32 0
  %vtable6089 = load %_Array_vtable** %vtmp6090
  %fptmp6091 = getelementptr %_Array_vtable* %vtable6089, i32 0, i32 2
  %method6092 = load i32 (%Array*, i32)** %fptmp6091
  %lhs_or_call6087 = load i32* %vdecl_slot6072
  %ret6093 = call i32 %method6092 ( %Array* %lhs_or_call6088, i32 %lhs_or_call6087 )
  %vdecl_slot6094 = alloca i32
  store i32 %ret6093, i32* %vdecl_slot6094
  %lhs_or_call6095 = load i32* %vdecl_slot6086
  %lhs_or_call6096 = load i32* %vdecl_slot6094
  %bop6097 = icmp slt i32 %lhs_or_call6095, %lhs_or_call6096
  br i1 %bop6097, label %__then1967, label %__else1966

__fresh1980:
  br label %__then1967

__then1967:
  %lhs_or_call6098 = load i32* %vdecl_slot6075
  store i32 %lhs_or_call6098, i32* %vdecl_slot6072
  br label %__merge1965

__fresh1981:
  br label %__else1966

__else1966:
  br label %__merge1965

__merge1965:
  %lhs_or_call6099 = load i32* %vdecl_slot6075
  %bop6100 = add i32 %lhs_or_call6099, 1
  store i32 %bop6100, i32* %vdecl_slot6075
  br label %__cond1964

__fresh1982:
  br label %__post1962

__post1962:
  %lhs_or_call6101 = load i32* %vdecl_slot6072
  %lhs_or_call6102 = load i32* %vdecl_slot6067
  %bop6103 = icmp ne i32 %lhs_or_call6101, %lhs_or_call6102
  br i1 %bop6103, label %__then1970, label %__else1969

__fresh1983:
  br label %__then1970

__then1970:
  %lhs_or_call6105 = load %Array** %vdecl_slot6053
  %vtmp6107 = getelementptr %Array* %lhs_or_call6105, i32 0, i32 0
  %vtable6106 = load %_Array_vtable** %vtmp6107
  %fptmp6108 = getelementptr %_Array_vtable* %vtable6106, i32 0, i32 2
  %method6109 = load i32 (%Array*, i32)** %fptmp6108
  %lhs_or_call6104 = load i32* %vdecl_slot6072
  %ret6110 = call i32 %method6109 ( %Array* %lhs_or_call6105, i32 %lhs_or_call6104 )
  %vdecl_slot6111 = alloca i32
  store i32 %ret6110, i32* %vdecl_slot6111
  %lhs_or_call6113 = load %Array** %vdecl_slot6053
  %vtmp6115 = getelementptr %Array* %lhs_or_call6113, i32 0, i32 0
  %vtable6114 = load %_Array_vtable** %vtmp6115
  %fptmp6116 = getelementptr %_Array_vtable* %vtable6114, i32 0, i32 2
  %method6117 = load i32 (%Array*, i32)** %fptmp6116
  %lhs_or_call6112 = load i32* %vdecl_slot6067
  %ret6118 = call i32 %method6117 ( %Array* %lhs_or_call6113, i32 %lhs_or_call6112 )
  %vdecl_slot6119 = alloca i32
  store i32 %ret6118, i32* %vdecl_slot6119
  %lhs_or_call6122 = load %Array** %vdecl_slot6053
  %vtmp6124 = getelementptr %Array* %lhs_or_call6122, i32 0, i32 0
  %vtable6123 = load %_Array_vtable** %vtmp6124
  %fptmp6125 = getelementptr %_Array_vtable* %vtable6123, i32 0, i32 3
  %method6126 = load void (%Array*, i32, i32)** %fptmp6125
  %lhs_or_call6120 = load i32* %vdecl_slot6111
  %lhs_or_call6121 = load i32* %vdecl_slot6067
  call void %method6126( %Array* %lhs_or_call6122, i32 %lhs_or_call6121, i32 %lhs_or_call6120 )
  %lhs_or_call6129 = load %Array** %vdecl_slot6053
  %vtmp6131 = getelementptr %Array* %lhs_or_call6129, i32 0, i32 0
  %vtable6130 = load %_Array_vtable** %vtmp6131
  %fptmp6132 = getelementptr %_Array_vtable* %vtable6130, i32 0, i32 3
  %method6133 = load void (%Array*, i32, i32)** %fptmp6132
  %lhs_or_call6127 = load i32* %vdecl_slot6119
  %lhs_or_call6128 = load i32* %vdecl_slot6072
  call void %method6133( %Array* %lhs_or_call6129, i32 %lhs_or_call6128, i32 %lhs_or_call6127 )
  br label %__merge1968

__fresh1984:
  br label %__else1969

__else1969:
  br label %__merge1968

__merge1968:
  %lhs_or_call6134 = load i32* %vdecl_slot6067
  %bop6135 = add i32 %lhs_or_call6134, 1
  store i32 %bop6135, i32* %vdecl_slot6067
  br label %__cond1961

__fresh1985:
  br label %__post1959

__post1959:
  %vdecl_slot6136 = alloca i32
  store i32 1, i32* %vdecl_slot6136
  br label %__cond1973

__cond1973:
  %lhs_or_call6137 = load i32* %vdecl_slot6136
  %lhs_or_call6138 = load i32* %vdecl_slot6054
  %bop6139 = icmp slt i32 %lhs_or_call6137, %lhs_or_call6138
  br i1 %bop6139, label %__body1972, label %__post1971

__fresh1986:
  br label %__body1972

__body1972:
  %lhs_or_call6141 = load %Array** %vdecl_slot6053
  %vtmp6143 = getelementptr %Array* %lhs_or_call6141, i32 0, i32 0
  %vtable6142 = load %_Array_vtable** %vtmp6143
  %fptmp6144 = getelementptr %_Array_vtable* %vtable6142, i32 0, i32 2
  %method6145 = load i32 (%Array*, i32)** %fptmp6144
  %lhs_or_call6140 = load i32* %vdecl_slot6136
  %ret6146 = call i32 %method6145 ( %Array* %lhs_or_call6141, i32 %lhs_or_call6140 )
  %vdecl_slot6147 = alloca i32
  store i32 %ret6146, i32* %vdecl_slot6147
  %lhs_or_call6150 = load %Array** %vdecl_slot6053
  %vtmp6152 = getelementptr %Array* %lhs_or_call6150, i32 0, i32 0
  %vtable6151 = load %_Array_vtable** %vtmp6152
  %fptmp6153 = getelementptr %_Array_vtable* %vtable6151, i32 0, i32 2
  %method6154 = load i32 (%Array*, i32)** %fptmp6153
  %lhs_or_call6148 = load i32* %vdecl_slot6136
  %bop6149 = add i32 %lhs_or_call6148, 1
  %ret6155 = call i32 %method6154 ( %Array* %lhs_or_call6150, i32 %bop6149 )
  %vdecl_slot6156 = alloca i32
  store i32 %ret6155, i32* %vdecl_slot6156
  %lhs_or_call6157 = load i32* %vdecl_slot6147
  %lhs_or_call6158 = load i32* %vdecl_slot6156
  %bop6159 = icmp sgt i32 %lhs_or_call6157, %lhs_or_call6158
  br i1 %bop6159, label %__then1976, label %__else1975

__fresh1987:
  br label %__then1976

__then1976:
  %lhs_or_call6160 = load i32* %vdecl_slot6055
  %bop6161 = add i32 %lhs_or_call6160, 1
  store i32 %bop6161, i32* %vdecl_slot6055
  br label %__merge1974

__fresh1988:
  br label %__else1975

__else1975:
  br label %__merge1974

__merge1974:
  %lhs_or_call6162 = load i32* %vdecl_slot6136
  %bop6163 = add i32 %lhs_or_call6162, 1
  store i32 %bop6163, i32* %vdecl_slot6136
  br label %__cond1973

__fresh1989:
  br label %__post1971

__post1971:
  %lhs_or_call6164 = load i32* %vdecl_slot6055
  ret i32 %lhs_or_call6164
}


define i32 @_Array_getLength (%Array* %_this1){
__fresh1958:
  %path6044 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6045 = load i32* %path6044
  ret i32 %lhs_or_call6045
}


define void @_Array_addElement (%Array* %_this1, i32 %key6007){
__fresh1949:
  %key_slot6008 = alloca i32
  store i32 %key6007, i32* %key_slot6008
  %path6009 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6010 = load i32* %path6009
  %bop6011 = icmp eq i32 %lhs_or_call6010, 0
  br i1 %bop6011, label %__then1948, label %__else1947

__fresh1950:
  br label %__then1948

__then1948:
  %path6012 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call6013 = load i32* %key_slot6008
  %mem_ptr6014 = call i32* @oat_malloc ( i32 16 )
  %obj6015 = bitcast i32* %mem_ptr6014 to %ArrayItem* 
  %new_obj6016 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj6015, i32 %lhs_or_call6013 )
  store %ArrayItem* %new_obj6016, %ArrayItem** %path6012
  br label %__merge1946

__fresh1951:
  br label %__else1947

__else1947:
  %path6017 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call6018 = load %ArrayItem** %path6017
  %ifnull_slot6019 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call6018, %ArrayItem** %ifnull_slot6019
  %ifnull_guard6020 = icmp ne %ArrayItem* %lhs_or_call6018, null
  br i1 %ifnull_guard6020, label %__then1945, label %__else1944

__fresh1952:
  br label %__then1945

__then1945:
  %vdecl_slot6021 = alloca i32
  store i32 1, i32* %vdecl_slot6021
  br label %__cond1939

__cond1939:
  %lhs_or_call6022 = load i32* %vdecl_slot6021
  %path6023 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6024 = load i32* %path6023
  %bop6025 = icmp ne i32 %lhs_or_call6022, %lhs_or_call6024
  br i1 %bop6025, label %__body1938, label %__post1937

__fresh1953:
  br label %__body1938

__body1938:
  %lhs_or_call6026 = load %ArrayItem** %ifnull_slot6019
  %path6027 = getelementptr %ArrayItem* %lhs_or_call6026, i32 0, i32 3
  %lhs_or_call6028 = load %ArrayItem** %path6027
  %ifnull_slot6029 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call6028, %ArrayItem** %ifnull_slot6029
  %ifnull_guard6030 = icmp ne %ArrayItem* %lhs_or_call6028, null
  br i1 %ifnull_guard6030, label %__then1942, label %__else1941

__fresh1954:
  br label %__then1942

__then1942:
  %lhs_or_call6031 = load %ArrayItem** %ifnull_slot6029
  store %ArrayItem* %lhs_or_call6031, %ArrayItem** %ifnull_slot6019
  br label %__merge1940

__fresh1955:
  br label %__else1941

__else1941:
  br label %__merge1940

__merge1940:
  %lhs_or_call6032 = load i32* %vdecl_slot6021
  %bop6033 = add i32 %lhs_or_call6032, 1
  store i32 %bop6033, i32* %vdecl_slot6021
  br label %__cond1939

__fresh1956:
  br label %__post1937

__post1937:
  %lhs_or_call6034 = load %ArrayItem** %ifnull_slot6019
  %path6035 = getelementptr %ArrayItem* %lhs_or_call6034, i32 0, i32 3
  %lhs_or_call6036 = load i32* %key_slot6008
  %mem_ptr6037 = call i32* @oat_malloc ( i32 16 )
  %obj6038 = bitcast i32* %mem_ptr6037 to %ArrayItem* 
  %new_obj6039 = call %ArrayItem* @_ArrayItem_ctor ( %ArrayItem* %obj6038, i32 %lhs_or_call6036 )
  store %ArrayItem* %new_obj6039, %ArrayItem** %path6035
  br label %__merge1943

__fresh1957:
  br label %__else1944

__else1944:
  br label %__merge1943

__merge1943:
  br label %__merge1946

__merge1946:
  %path6040 = getelementptr %Array* %_this1, i32 0, i32 2
  %path6041 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call6042 = load i32* %path6041
  %bop6043 = add i32 %lhs_or_call6042, 1
  store i32 %bop6043, i32* %path6040
  ret void
}


define void @_Array_setElement (%Array* %_this1, i32 %index5986, i32 %key5984){
__fresh1930:
  %index_slot5987 = alloca i32
  store i32 %index5986, i32* %index_slot5987
  %key_slot5985 = alloca i32
  store i32 %key5984, i32* %key_slot5985
  %path5988 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call5989 = load %ArrayItem** %path5988
  %ifnull_slot5990 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5989, %ArrayItem** %ifnull_slot5990
  %ifnull_guard5991 = icmp ne %ArrayItem* %lhs_or_call5989, null
  br i1 %ifnull_guard5991, label %__then1929, label %__else1928

__fresh1931:
  br label %__then1929

__then1929:
  %vdecl_slot5992 = alloca i32
  store i32 1, i32* %vdecl_slot5992
  br label %__cond1923

__cond1923:
  %lhs_or_call5993 = load i32* %vdecl_slot5992
  %lhs_or_call5994 = load i32* %index_slot5987
  %bop5995 = icmp ne i32 %lhs_or_call5993, %lhs_or_call5994
  br i1 %bop5995, label %__body1922, label %__post1921

__fresh1932:
  br label %__body1922

__body1922:
  %lhs_or_call5996 = load %ArrayItem** %ifnull_slot5990
  %path5997 = getelementptr %ArrayItem* %lhs_or_call5996, i32 0, i32 3
  %lhs_or_call5998 = load %ArrayItem** %path5997
  %ifnull_slot5999 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5998, %ArrayItem** %ifnull_slot5999
  %ifnull_guard6000 = icmp ne %ArrayItem* %lhs_or_call5998, null
  br i1 %ifnull_guard6000, label %__then1926, label %__else1925

__fresh1933:
  br label %__then1926

__then1926:
  %lhs_or_call6001 = load %ArrayItem** %ifnull_slot5999
  store %ArrayItem* %lhs_or_call6001, %ArrayItem** %ifnull_slot5990
  br label %__merge1924

__fresh1934:
  br label %__else1925

__else1925:
  br label %__merge1924

__merge1924:
  %lhs_or_call6002 = load i32* %vdecl_slot5992
  %bop6003 = add i32 %lhs_or_call6002, 1
  store i32 %bop6003, i32* %vdecl_slot5992
  br label %__cond1923

__fresh1935:
  br label %__post1921

__post1921:
  %lhs_or_call6004 = load %ArrayItem** %ifnull_slot5990
  %path6005 = getelementptr %ArrayItem* %lhs_or_call6004, i32 0, i32 2
  %lhs_or_call6006 = load i32* %key_slot5985
  store i32 %lhs_or_call6006, i32* %path6005
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


define i32 @_Array_getElement (%Array* %_this1, i32 %index5961){
__fresh1914:
  %index_slot5962 = alloca i32
  store i32 %index5961, i32* %index_slot5962
  %vdecl_slot5963 = alloca i32
  store i32 0, i32* %vdecl_slot5963
  %path5964 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call5965 = load %ArrayItem** %path5964
  %ifnull_slot5966 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5965, %ArrayItem** %ifnull_slot5966
  %ifnull_guard5967 = icmp ne %ArrayItem* %lhs_or_call5965, null
  br i1 %ifnull_guard5967, label %__then1913, label %__else1912

__fresh1915:
  br label %__then1913

__then1913:
  %vdecl_slot5968 = alloca i32
  store i32 1, i32* %vdecl_slot5968
  br label %__cond1907

__cond1907:
  %lhs_or_call5969 = load i32* %vdecl_slot5968
  %lhs_or_call5970 = load i32* %index_slot5962
  %bop5971 = icmp ne i32 %lhs_or_call5969, %lhs_or_call5970
  br i1 %bop5971, label %__body1906, label %__post1905

__fresh1916:
  br label %__body1906

__body1906:
  %lhs_or_call5972 = load %ArrayItem** %ifnull_slot5966
  %path5973 = getelementptr %ArrayItem* %lhs_or_call5972, i32 0, i32 3
  %lhs_or_call5974 = load %ArrayItem** %path5973
  %ifnull_slot5975 = alloca %ArrayItem*
  store %ArrayItem* %lhs_or_call5974, %ArrayItem** %ifnull_slot5975
  %ifnull_guard5976 = icmp ne %ArrayItem* %lhs_or_call5974, null
  br i1 %ifnull_guard5976, label %__then1910, label %__else1909

__fresh1917:
  br label %__then1910

__then1910:
  %lhs_or_call5977 = load %ArrayItem** %ifnull_slot5975
  store %ArrayItem* %lhs_or_call5977, %ArrayItem** %ifnull_slot5966
  br label %__merge1908

__fresh1918:
  br label %__else1909

__else1909:
  br label %__merge1908

__merge1908:
  %lhs_or_call5978 = load i32* %vdecl_slot5968
  %bop5979 = add i32 %lhs_or_call5978, 1
  store i32 %bop5979, i32* %vdecl_slot5968
  br label %__cond1907

__fresh1919:
  br label %__post1905

__post1905:
  %lhs_or_call5980 = load %ArrayItem** %ifnull_slot5966
  %path5981 = getelementptr %ArrayItem* %lhs_or_call5980, i32 0, i32 2
  %lhs_or_call5982 = load i32* %path5981
  store i32 %lhs_or_call5982, i32* %vdecl_slot5963
  br label %__merge1911

__fresh1920:
  br label %__else1912

__else1912:
  call void @print_string( i8* @_const_str703 )
  call void @oat_abort( i32 -1 )
  br label %__merge1911

__merge1911:
  %lhs_or_call5983 = load i32* %vdecl_slot5963
  ret i32 %lhs_or_call5983
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh1904:
  %cast_op5956 = bitcast %Array* %_this1 to %Object* 
  %dummy5957 = call %Object* @_Object_ctor ( %Object* %cast_op5956 )
  %path5958 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str702, i8** %path5958
  %vt_slot5959 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable699, %_Array_vtable** %vt_slot5959
  %path5960 = getelementptr %Array* %_this1, i32 0, i32 2
  store i32 0, i32* %path5960
  ret %Array* %_this1
}


define void @_ArrayItem_set (%ArrayItem* %_this1, i32 %x5952){
__fresh1903:
  %x_slot5953 = alloca i32
  store i32 %x5952, i32* %x_slot5953
  %path5954 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call5955 = load i32* %x_slot5953
  store i32 %lhs_or_call5955, i32* %path5954
  ret void
}


define %ArrayItem* @_ArrayItem_ctor (%ArrayItem* %_this1, i32 %x5942){
__fresh1902:
  %x_slot5943 = alloca i32
  store i32 %x5942, i32* %x_slot5943
  %cast_op5944 = bitcast %ArrayItem* %_this1 to %Object* 
  %dummy5945 = call %Object* @_Object_ctor ( %Object* %cast_op5944 )
  %path5946 = getelementptr %ArrayItem* %_this1, i32 0, i32 1
  store i8* @_const_str701, i8** %path5946
  %vt_slot5947 = getelementptr %ArrayItem* %_this1, i32 0, i32 0
  store %_ArrayItem_vtable* @_ArrayItem_vtable698, %_ArrayItem_vtable** %vt_slot5947
  %path5948 = getelementptr %ArrayItem* %_this1, i32 0, i32 2
  %lhs_or_call5949 = load i32* %x_slot5943
  store i32 %lhs_or_call5949, i32* %path5948
  %path5950 = getelementptr %ArrayItem* %_this1, i32 0, i32 3
  %cast_op5951 = bitcast i8* null to %ArrayItem* 
  store %ArrayItem* %cast_op5951, %ArrayItem** %path5950
  ret %ArrayItem* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1901:
  %path5940 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5941 = load i8** %path5940
  ret i8* %lhs_or_call5941
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1900:
  %path5938 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str700, i8** %path5938
  %vt_slot5939 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable697, %_Object_vtable** %vt_slot5939
  ret %Object* %_this1
}



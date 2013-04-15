%CCC = type { %_CCC_vtable*, i8* }
%_CCC_vtable = type { %_CC_vtable*, i8* (%Object*)* }
%CCc = type { %_CCc_vtable*, i8* }
%_CCc_vtable = type { %_CC_vtable*, i8* (%Object*)* }
%CcC = type { %_CcC_vtable*, i8* }
%_CcC_vtable = type { %_Cc_vtable*, i8* (%Object*)* }
%Ccc = type { %_Ccc_vtable*, i8* }
%_Ccc_vtable = type { %_Cc_vtable*, i8* (%Object*)* }
%CC = type { %_CC_vtable*, i8* }
%_CC_vtable = type { %_B_vtable*, i8* (%Object*)* }
%Cc = type { %_Cc_vtable*, i8* }
%_Cc_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%Aa = type { %_Aa_vtable*, i8* }
%_Aa_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_const_str368.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str368 = alias bitcast([ 4 x i8 ]* @_const_str368.str. to i8*)@_const_str367.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str367 = alias bitcast([ 4 x i8 ]* @_const_str367.str. to i8*)@_const_str366.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str366 = alias bitcast([ 4 x i8 ]* @_const_str366.str. to i8*)@_const_str365.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str365 = alias bitcast([ 4 x i8 ]* @_const_str365.str. to i8*)@_const_str364.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str364 = alias bitcast([ 3 x i8 ]* @_const_str364.str. to i8*)@_const_str363.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str363 = alias bitcast([ 3 x i8 ]* @_const_str363.str. to i8*)@_const_str362.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str362 = alias bitcast([ 2 x i8 ]* @_const_str362.str. to i8*)@_const_str361.str. = private unnamed_addr constant [ 3 x i8 ] c "Aa\00", align 4
@_const_str361 = alias bitcast([ 3 x i8 ]* @_const_str361.str. to i8*)@_const_str360.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str360 = alias bitcast([ 2 x i8 ]* @_const_str360.str. to i8*)@_const_str359.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str359 = alias bitcast([ 7 x i8 ]* @_const_str359.str. to i8*)@_CCC_vtable358 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable354, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable357 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable354, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable356 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable353, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable355 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable353, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable354 = private constant %_CC_vtable {%_B_vtable* @_B_vtable352, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable353 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable352, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable352 = private constant %_B_vtable {%_A_vtable* @_A_vtable350, i8* (%Object*)* @_Object_get_name}, align 4
@_Aa_vtable351 = private constant %_Aa_vtable {%_Object_vtable* @_Object_vtable349, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable350 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable349, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable349 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh594:
  ret void
}


define i32 @program (i32 %argc2130, { i32, [ 0 x i8* ] }* %argv2128){
__fresh593:
  %argc_slot2131 = alloca i32
  store i32 %argc2130, i32* %argc_slot2131
  %argv_slot2129 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2128, { i32, [ 0 x i8* ] }** %argv_slot2129
  %mem_ptr2132 = call i32* @oat_malloc ( i32 8 )
  %obj2133 = bitcast i32* %mem_ptr2132 to %Aa* 
  %new_obj2134 = call %Aa* @_Aa_ctor ( %Aa* %obj2133 )
  %cast_op2135 = bitcast %Aa* %new_obj2134 to %Object* 
  %ret2136 = call i32 @docast ( %Object* %cast_op2135 )
  ret i32 %ret2136
}


define i32 @docast (%Object* %o2111){
__fresh588:
  %o_slot2112 = alloca %Object*
  store %Object* %o2111, %Object** %o_slot2112
  %vdecl_slot2113 = alloca i32
  store i32 0, i32* %vdecl_slot2113
  %lhs_or_call2114 = load %Object** %o_slot2112
  %cast_op2115 = bitcast %Object* %lhs_or_call2114 to %A* 
  %cast_op2116 = bitcast %A* %cast_op2115 to i8** 
  %cast_op2117 = bitcast %_A_vtable* @_A_vtable350 to i8* 
  %vt_ptr_slot2118 = alloca i8*
  %tmp02120 = load i8** %cast_op2116
  store i8* %tmp02120, i8** %vt_ptr_slot2118
  br label %__loop587

__loop587:
  %tmp12121 = load i8** %vt_ptr_slot2118
  %guard12125 = icmp eq i8* %tmp12121, %cast_op2117
  br i1 %guard12125, label %__then584, label %__fall1586

__fresh589:
  br label %__fall1586

__fall1586:
  %guard22126 = icmp eq i8* %tmp12121, null
  br i1 %guard22126, label %__else583, label %__fall2585

__fresh590:
  br label %__fall2585

__fall2585:
  %tmp22122 = load i8** %vt_ptr_slot2118
  %tmp32123 = bitcast i8* %tmp22122 to i8** 
  %tmp42124 = load i8** %tmp32123
  store i8* %tmp42124, i8** %vt_ptr_slot2118
  br label %__loop587

__fresh591:
  br label %__then584

__then584:
  %var_slot2119 = alloca %A*
  store %A* %cast_op2115, %A** %var_slot2119
  store i32 12, i32* %vdecl_slot2113
  br label %__done582

__fresh592:
  br label %__else583

__else583:
  store i32 21, i32* %vdecl_slot2113
  br label %__done582

__done582:
  %lhs_or_call2127 = load i32* %vdecl_slot2113
  ret i32 %lhs_or_call2127
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh581:
  %cast_op2107 = bitcast %CCC* %_this1 to %CC* 
  %dummy2108 = call %CC* @_CC_ctor ( %CC* %cast_op2107 )
  %path2109 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str368, i8** %path2109
  %vt_slot2110 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable358, %_CCC_vtable** %vt_slot2110
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh580:
  %cast_op2103 = bitcast %CCc* %_this1 to %CC* 
  %dummy2104 = call %CC* @_CC_ctor ( %CC* %cast_op2103 )
  %path2105 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str367, i8** %path2105
  %vt_slot2106 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable357, %_CCc_vtable** %vt_slot2106
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh579:
  %cast_op2099 = bitcast %CcC* %_this1 to %Cc* 
  %dummy2100 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2099 )
  %path2101 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str366, i8** %path2101
  %vt_slot2102 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable356, %_CcC_vtable** %vt_slot2102
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh578:
  %cast_op2095 = bitcast %Ccc* %_this1 to %Cc* 
  %dummy2096 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2095 )
  %path2097 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str365, i8** %path2097
  %vt_slot2098 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable355, %_Ccc_vtable** %vt_slot2098
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh577:
  %cast_op2091 = bitcast %CC* %_this1 to %B* 
  %dummy2092 = call %B* @_B_ctor ( %B* %cast_op2091 )
  %path2093 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str364, i8** %path2093
  %vt_slot2094 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable354, %_CC_vtable** %vt_slot2094
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh576:
  %cast_op2087 = bitcast %Cc* %_this1 to %B* 
  %dummy2088 = call %B* @_B_ctor ( %B* %cast_op2087 )
  %path2089 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str363, i8** %path2089
  %vt_slot2090 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable353, %_Cc_vtable** %vt_slot2090
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh575:
  %cast_op2083 = bitcast %B* %_this1 to %A* 
  %dummy2084 = call %A* @_A_ctor ( %A* %cast_op2083 )
  %path2085 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str362, i8** %path2085
  %vt_slot2086 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable352, %_B_vtable** %vt_slot2086
  ret %B* %_this1
}


define %Aa* @_Aa_ctor (%Aa* %_this1){
__fresh574:
  %cast_op2079 = bitcast %Aa* %_this1 to %Object* 
  %dummy2080 = call %Object* @_Object_ctor ( %Object* %cast_op2079 )
  %path2081 = getelementptr %Aa* %_this1, i32 0, i32 1
  store i8* @_const_str361, i8** %path2081
  %vt_slot2082 = getelementptr %Aa* %_this1, i32 0, i32 0
  store %_Aa_vtable* @_Aa_vtable351, %_Aa_vtable** %vt_slot2082
  ret %Aa* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh573:
  %cast_op2075 = bitcast %A* %_this1 to %Object* 
  %dummy2076 = call %Object* @_Object_ctor ( %Object* %cast_op2075 )
  %path2077 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str360, i8** %path2077
  %vt_slot2078 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable350, %_A_vtable** %vt_slot2078
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh572:
  %path2073 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2074 = load i8** %path2073
  ret i8* %lhs_or_call2074
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh571:
  %path2071 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str359, i8** %path2071
  %vt_slot2072 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable349, %_Object_vtable** %vt_slot2072
  ret %Object* %_this1
}



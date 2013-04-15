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
@_const_str386.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str386 = alias bitcast([ 4 x i8 ]* @_const_str386.str. to i8*)@_const_str385.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str385 = alias bitcast([ 4 x i8 ]* @_const_str385.str. to i8*)@_const_str384.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str384 = alias bitcast([ 4 x i8 ]* @_const_str384.str. to i8*)@_const_str383.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str383 = alias bitcast([ 4 x i8 ]* @_const_str383.str. to i8*)@_const_str382.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str382 = alias bitcast([ 3 x i8 ]* @_const_str382.str. to i8*)@_const_str381.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str381 = alias bitcast([ 3 x i8 ]* @_const_str381.str. to i8*)@_const_str380.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str380 = alias bitcast([ 2 x i8 ]* @_const_str380.str. to i8*)@_const_str379.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str379 = alias bitcast([ 2 x i8 ]* @_const_str379.str. to i8*)@_const_str378.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str378 = alias bitcast([ 7 x i8 ]* @_const_str378.str. to i8*)@_CCC_vtable377 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable373, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable376 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable373, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable375 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable372, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable374 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable372, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable373 = private constant %_CC_vtable {%_B_vtable* @_B_vtable371, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable372 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable371, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable371 = private constant %_B_vtable {%_A_vtable* @_A_vtable370, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable370 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable369, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable369 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh617:
  ret void
}


define i32 @program (i32 %argc2192, { i32, [ 0 x i8* ] }* %argv2190){
__fresh616:
  %argc_slot2193 = alloca i32
  store i32 %argc2192, i32* %argc_slot2193
  %argv_slot2191 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2190, { i32, [ 0 x i8* ] }** %argv_slot2191
  %mem_ptr2194 = call i32* @oat_malloc ( i32 8 )
  %obj2195 = bitcast i32* %mem_ptr2194 to %Cc* 
  %new_obj2196 = call %Cc* @_Cc_ctor ( %Cc* %obj2195 )
  %cast_op2197 = bitcast %Cc* %new_obj2196 to %Object* 
  %ret2198 = call i32 @docast ( %Object* %cast_op2197 )
  ret i32 %ret2198
}


define i32 @docast (%Object* %o2173){
__fresh611:
  %o_slot2174 = alloca %Object*
  store %Object* %o2173, %Object** %o_slot2174
  %vdecl_slot2175 = alloca i32
  store i32 0, i32* %vdecl_slot2175
  %lhs_or_call2176 = load %Object** %o_slot2174
  %cast_op2177 = bitcast %Object* %lhs_or_call2176 to %CCC* 
  %cast_op2178 = bitcast %CCC* %cast_op2177 to i8** 
  %cast_op2179 = bitcast %_CCC_vtable* @_CCC_vtable377 to i8* 
  %vt_ptr_slot2180 = alloca i8*
  %tmp02182 = load i8** %cast_op2178
  store i8* %tmp02182, i8** %vt_ptr_slot2180
  br label %__loop610

__loop610:
  %tmp12183 = load i8** %vt_ptr_slot2180
  %guard12187 = icmp eq i8* %tmp12183, %cast_op2179
  br i1 %guard12187, label %__then607, label %__fall1609

__fresh612:
  br label %__fall1609

__fall1609:
  %guard22188 = icmp eq i8* %tmp12183, null
  br i1 %guard22188, label %__else606, label %__fall2608

__fresh613:
  br label %__fall2608

__fall2608:
  %tmp22184 = load i8** %vt_ptr_slot2180
  %tmp32185 = bitcast i8* %tmp22184 to i8** 
  %tmp42186 = load i8** %tmp32185
  store i8* %tmp42186, i8** %vt_ptr_slot2180
  br label %__loop610

__fresh614:
  br label %__then607

__then607:
  %var_slot2181 = alloca %CCC*
  store %CCC* %cast_op2177, %CCC** %var_slot2181
  store i32 12, i32* %vdecl_slot2175
  br label %__done605

__fresh615:
  br label %__else606

__else606:
  store i32 21, i32* %vdecl_slot2175
  br label %__done605

__done605:
  %lhs_or_call2189 = load i32* %vdecl_slot2175
  ret i32 %lhs_or_call2189
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh604:
  %cast_op2169 = bitcast %CCC* %_this1 to %CC* 
  %dummy2170 = call %CC* @_CC_ctor ( %CC* %cast_op2169 )
  %path2171 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str386, i8** %path2171
  %vt_slot2172 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable377, %_CCC_vtable** %vt_slot2172
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh603:
  %cast_op2165 = bitcast %CCc* %_this1 to %CC* 
  %dummy2166 = call %CC* @_CC_ctor ( %CC* %cast_op2165 )
  %path2167 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str385, i8** %path2167
  %vt_slot2168 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable376, %_CCc_vtable** %vt_slot2168
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh602:
  %cast_op2161 = bitcast %CcC* %_this1 to %Cc* 
  %dummy2162 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2161 )
  %path2163 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str384, i8** %path2163
  %vt_slot2164 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable375, %_CcC_vtable** %vt_slot2164
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh601:
  %cast_op2157 = bitcast %Ccc* %_this1 to %Cc* 
  %dummy2158 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2157 )
  %path2159 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str383, i8** %path2159
  %vt_slot2160 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable374, %_Ccc_vtable** %vt_slot2160
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh600:
  %cast_op2153 = bitcast %CC* %_this1 to %B* 
  %dummy2154 = call %B* @_B_ctor ( %B* %cast_op2153 )
  %path2155 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str382, i8** %path2155
  %vt_slot2156 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable373, %_CC_vtable** %vt_slot2156
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh599:
  %cast_op2149 = bitcast %Cc* %_this1 to %B* 
  %dummy2150 = call %B* @_B_ctor ( %B* %cast_op2149 )
  %path2151 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str381, i8** %path2151
  %vt_slot2152 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable372, %_Cc_vtable** %vt_slot2152
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh598:
  %cast_op2145 = bitcast %B* %_this1 to %A* 
  %dummy2146 = call %A* @_A_ctor ( %A* %cast_op2145 )
  %path2147 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str380, i8** %path2147
  %vt_slot2148 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable371, %_B_vtable** %vt_slot2148
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh597:
  %cast_op2141 = bitcast %A* %_this1 to %Object* 
  %dummy2142 = call %Object* @_Object_ctor ( %Object* %cast_op2141 )
  %path2143 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str379, i8** %path2143
  %vt_slot2144 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable370, %_A_vtable** %vt_slot2144
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh596:
  %path2139 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2140 = load i8** %path2139
  ret i8* %lhs_or_call2140
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh595:
  %path2137 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str378, i8** %path2137
  %vt_slot2138 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable369, %_Object_vtable** %vt_slot2138
  ret %Object* %_this1
}



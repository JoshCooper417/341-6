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
@_const_str404.str. = private unnamed_addr constant [ 4 x i8 ] c "CCC\00", align 4
@_const_str404 = alias bitcast([ 4 x i8 ]* @_const_str404.str. to i8*)@_const_str403.str. = private unnamed_addr constant [ 4 x i8 ] c "CCc\00", align 4
@_const_str403 = alias bitcast([ 4 x i8 ]* @_const_str403.str. to i8*)@_const_str402.str. = private unnamed_addr constant [ 4 x i8 ] c "CcC\00", align 4
@_const_str402 = alias bitcast([ 4 x i8 ]* @_const_str402.str. to i8*)@_const_str401.str. = private unnamed_addr constant [ 4 x i8 ] c "Ccc\00", align 4
@_const_str401 = alias bitcast([ 4 x i8 ]* @_const_str401.str. to i8*)@_const_str400.str. = private unnamed_addr constant [ 3 x i8 ] c "CC\00", align 4
@_const_str400 = alias bitcast([ 3 x i8 ]* @_const_str400.str. to i8*)@_const_str399.str. = private unnamed_addr constant [ 3 x i8 ] c "Cc\00", align 4
@_const_str399 = alias bitcast([ 3 x i8 ]* @_const_str399.str. to i8*)@_const_str398.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str398 = alias bitcast([ 2 x i8 ]* @_const_str398.str. to i8*)@_const_str397.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str397 = alias bitcast([ 2 x i8 ]* @_const_str397.str. to i8*)@_const_str396.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str396 = alias bitcast([ 7 x i8 ]* @_const_str396.str. to i8*)@_CCC_vtable395 = private constant %_CCC_vtable {%_CC_vtable* @_CC_vtable391, i8* (%Object*)* @_Object_get_name}, align 4
@_CCc_vtable394 = private constant %_CCc_vtable {%_CC_vtable* @_CC_vtable391, i8* (%Object*)* @_Object_get_name}, align 4
@_CcC_vtable393 = private constant %_CcC_vtable {%_Cc_vtable* @_Cc_vtable390, i8* (%Object*)* @_Object_get_name}, align 4
@_Ccc_vtable392 = private constant %_Ccc_vtable {%_Cc_vtable* @_Cc_vtable390, i8* (%Object*)* @_Object_get_name}, align 4
@_CC_vtable391 = private constant %_CC_vtable {%_B_vtable* @_B_vtable389, i8* (%Object*)* @_Object_get_name}, align 4
@_Cc_vtable390 = private constant %_Cc_vtable {%_B_vtable* @_B_vtable389, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable389 = private constant %_B_vtable {%_A_vtable* @_A_vtable388, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable388 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable387, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable387 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh640:
  ret void
}


define i32 @program (i32 %argc2254, { i32, [ 0 x i8* ] }* %argv2252){
__fresh639:
  %argc_slot2255 = alloca i32
  store i32 %argc2254, i32* %argc_slot2255
  %argv_slot2253 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2252, { i32, [ 0 x i8* ] }** %argv_slot2253
  %mem_ptr2256 = call i32* @oat_malloc ( i32 8 )
  %obj2257 = bitcast i32* %mem_ptr2256 to %Ccc* 
  %new_obj2258 = call %Ccc* @_Ccc_ctor ( %Ccc* %obj2257 )
  %cast_op2259 = bitcast %Ccc* %new_obj2258 to %Object* 
  %ret2260 = call i32 @docast ( %Object* %cast_op2259 )
  ret i32 %ret2260
}


define i32 @docast (%Object* %o2235){
__fresh634:
  %o_slot2236 = alloca %Object*
  store %Object* %o2235, %Object** %o_slot2236
  %vdecl_slot2237 = alloca i32
  store i32 0, i32* %vdecl_slot2237
  %lhs_or_call2238 = load %Object** %o_slot2236
  %cast_op2239 = bitcast %Object* %lhs_or_call2238 to %A* 
  %cast_op2240 = bitcast %A* %cast_op2239 to i8** 
  %cast_op2241 = bitcast %_A_vtable* @_A_vtable388 to i8* 
  %vt_ptr_slot2242 = alloca i8*
  %tmp02244 = load i8** %cast_op2240
  store i8* %tmp02244, i8** %vt_ptr_slot2242
  br label %__loop633

__loop633:
  %tmp12245 = load i8** %vt_ptr_slot2242
  %guard12249 = icmp eq i8* %tmp12245, %cast_op2241
  br i1 %guard12249, label %__then630, label %__fall1632

__fresh635:
  br label %__fall1632

__fall1632:
  %guard22250 = icmp eq i8* %tmp12245, null
  br i1 %guard22250, label %__else629, label %__fall2631

__fresh636:
  br label %__fall2631

__fall2631:
  %tmp22246 = load i8** %vt_ptr_slot2242
  %tmp32247 = bitcast i8* %tmp22246 to i8** 
  %tmp42248 = load i8** %tmp32247
  store i8* %tmp42248, i8** %vt_ptr_slot2242
  br label %__loop633

__fresh637:
  br label %__then630

__then630:
  %var_slot2243 = alloca %A*
  store %A* %cast_op2239, %A** %var_slot2243
  store i32 12, i32* %vdecl_slot2237
  br label %__done628

__fresh638:
  br label %__else629

__else629:
  store i32 21, i32* %vdecl_slot2237
  br label %__done628

__done628:
  %lhs_or_call2251 = load i32* %vdecl_slot2237
  ret i32 %lhs_or_call2251
}


define %CCC* @_CCC_ctor (%CCC* %_this1){
__fresh627:
  %cast_op2231 = bitcast %CCC* %_this1 to %CC* 
  %dummy2232 = call %CC* @_CC_ctor ( %CC* %cast_op2231 )
  %path2233 = getelementptr %CCC* %_this1, i32 0, i32 1
  store i8* @_const_str404, i8** %path2233
  %vt_slot2234 = getelementptr %CCC* %_this1, i32 0, i32 0
  store %_CCC_vtable* @_CCC_vtable395, %_CCC_vtable** %vt_slot2234
  ret %CCC* %_this1
}


define %CCc* @_CCc_ctor (%CCc* %_this1){
__fresh626:
  %cast_op2227 = bitcast %CCc* %_this1 to %CC* 
  %dummy2228 = call %CC* @_CC_ctor ( %CC* %cast_op2227 )
  %path2229 = getelementptr %CCc* %_this1, i32 0, i32 1
  store i8* @_const_str403, i8** %path2229
  %vt_slot2230 = getelementptr %CCc* %_this1, i32 0, i32 0
  store %_CCc_vtable* @_CCc_vtable394, %_CCc_vtable** %vt_slot2230
  ret %CCc* %_this1
}


define %CcC* @_CcC_ctor (%CcC* %_this1){
__fresh625:
  %cast_op2223 = bitcast %CcC* %_this1 to %Cc* 
  %dummy2224 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2223 )
  %path2225 = getelementptr %CcC* %_this1, i32 0, i32 1
  store i8* @_const_str402, i8** %path2225
  %vt_slot2226 = getelementptr %CcC* %_this1, i32 0, i32 0
  store %_CcC_vtable* @_CcC_vtable393, %_CcC_vtable** %vt_slot2226
  ret %CcC* %_this1
}


define %Ccc* @_Ccc_ctor (%Ccc* %_this1){
__fresh624:
  %cast_op2219 = bitcast %Ccc* %_this1 to %Cc* 
  %dummy2220 = call %Cc* @_Cc_ctor ( %Cc* %cast_op2219 )
  %path2221 = getelementptr %Ccc* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %path2221
  %vt_slot2222 = getelementptr %Ccc* %_this1, i32 0, i32 0
  store %_Ccc_vtable* @_Ccc_vtable392, %_Ccc_vtable** %vt_slot2222
  ret %Ccc* %_this1
}


define %CC* @_CC_ctor (%CC* %_this1){
__fresh623:
  %cast_op2215 = bitcast %CC* %_this1 to %B* 
  %dummy2216 = call %B* @_B_ctor ( %B* %cast_op2215 )
  %path2217 = getelementptr %CC* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %path2217
  %vt_slot2218 = getelementptr %CC* %_this1, i32 0, i32 0
  store %_CC_vtable* @_CC_vtable391, %_CC_vtable** %vt_slot2218
  ret %CC* %_this1
}


define %Cc* @_Cc_ctor (%Cc* %_this1){
__fresh622:
  %cast_op2211 = bitcast %Cc* %_this1 to %B* 
  %dummy2212 = call %B* @_B_ctor ( %B* %cast_op2211 )
  %path2213 = getelementptr %Cc* %_this1, i32 0, i32 1
  store i8* @_const_str399, i8** %path2213
  %vt_slot2214 = getelementptr %Cc* %_this1, i32 0, i32 0
  store %_Cc_vtable* @_Cc_vtable390, %_Cc_vtable** %vt_slot2214
  ret %Cc* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh621:
  %cast_op2207 = bitcast %B* %_this1 to %A* 
  %dummy2208 = call %A* @_A_ctor ( %A* %cast_op2207 )
  %path2209 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str398, i8** %path2209
  %vt_slot2210 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable389, %_B_vtable** %vt_slot2210
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh620:
  %cast_op2203 = bitcast %A* %_this1 to %Object* 
  %dummy2204 = call %Object* @_Object_ctor ( %Object* %cast_op2203 )
  %path2205 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str397, i8** %path2205
  %vt_slot2206 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable388, %_A_vtable** %vt_slot2206
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh619:
  %path2201 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2202 = load i8** %path2201
  ret i8* %lhs_or_call2202
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh618:
  %path2199 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str396, i8** %path2199
  %vt_slot2200 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable387, %_Object_vtable** %vt_slot2200
  ret %Object* %_this1
}



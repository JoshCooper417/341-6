%Bb = type { %_Bb_vtable*, i8*, i32 }
%_Bb_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%Bb*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%B*)* }
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
@_const_str580.str. = private unnamed_addr constant [ 13 x i8 ] c "makes sense.\00", align 4
@_const_str580 = alias bitcast([ 13 x i8 ]* @_const_str580.str. to i8*)@_const_str581.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str581 = alias bitcast([ 4 x i8 ]* @_const_str581.str. to i8*)@_const_str578.str. = private unnamed_addr constant [ 13 x i8 ] c "makes sense.\00", align 4
@_const_str578 = alias bitcast([ 13 x i8 ]* @_const_str578.str. to i8*)@_const_str579.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str579 = alias bitcast([ 4 x i8 ]* @_const_str579.str. to i8*)@_const_str577.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str577 = alias bitcast([ 3 x i8 ]* @_const_str577.str. to i8*)@_const_str576.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str576 = alias bitcast([ 3 x i8 ]* @_const_str576.str. to i8*)@_const_str575.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str575 = alias bitcast([ 2 x i8 ]* @_const_str575.str. to i8*)@_const_str574.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str574 = alias bitcast([ 2 x i8 ]* @_const_str574.str. to i8*)@_const_str573.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str573 = alias bitcast([ 2 x i8 ]* @_const_str573.str. to i8*)@_const_str572.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str572 = alias bitcast([ 2 x i8 ]* @_const_str572.str. to i8*)@_const_str571.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str571 = alias bitcast([ 7 x i8 ]* @_const_str571.str. to i8*)@_Bb_vtable570 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable568, i8* (%Object*)* @_Object_get_name, void (%Bb*)* @_Bb_name}, align 4
@_B_vtable569 = private constant %_B_vtable {%_A_vtable* @_A_vtable568, i8* (%Object*)* @_Object_get_name, void (%B*)* @_B_name}, align 4
@_A_vtable568 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable567, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_name}, align 4
@_Object_vtable567 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh981:
  ret void
}


define i32 @program (i32 %argc3226, { i32, [ 0 x i8* ] }* %argv3224){
__fresh964:
  %argc_slot3227 = alloca i32
  store i32 %argc3226, i32* %argc_slot3227
  %argv_slot3225 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3224, { i32, [ 0 x i8* ] }** %argv_slot3225
  %mem_ptr3228 = call i32* @oat_malloc ( i32 8 )
  %obj3229 = bitcast i32* %mem_ptr3228 to %A* 
  %new_obj3230 = call %A* @_A_ctor ( %A* %obj3229 )
  %vdecl_slot3231 = alloca %A*
  store %A* %new_obj3230, %A** %vdecl_slot3231
  %mem_ptr3232 = call i32* @oat_malloc ( i32 12 )
  %obj3233 = bitcast i32* %mem_ptr3232 to %B* 
  %new_obj3234 = call %B* @_B_ctor ( %B* %obj3233 )
  %cast_op3235 = bitcast %B* %new_obj3234 to %A* 
  %vdecl_slot3236 = alloca %A*
  store %A* %cast_op3235, %A** %vdecl_slot3236
  %mem_ptr3237 = call i32* @oat_malloc ( i32 12 )
  %obj3238 = bitcast i32* %mem_ptr3237 to %Bb* 
  %new_obj3239 = call %Bb* @_Bb_ctor ( %Bb* %obj3238 )
  %cast_op3240 = bitcast %Bb* %new_obj3239 to %A* 
  %vdecl_slot3241 = alloca %A*
  store %A* %cast_op3240, %A** %vdecl_slot3241
  %vdecl_slot3242 = alloca i32
  store i32 0, i32* %vdecl_slot3242
  %lhs_or_call3243 = load %A** %vdecl_slot3241
  %cast_op3244 = bitcast %A* %lhs_or_call3243 to %Bb* 
  %cast_op3245 = bitcast %Bb* %cast_op3244 to i8** 
  %cast_op3246 = bitcast %_Bb_vtable* @_Bb_vtable570 to i8* 
  %vt_ptr_slot3247 = alloca i8*
  %tmp03249 = load i8** %cast_op3245
  store i8* %tmp03249, i8** %vt_ptr_slot3247
  br label %__loop945

__loop945:
  %tmp13250 = load i8** %vt_ptr_slot3247
  %guard13254 = icmp eq i8* %tmp13250, %cast_op3246
  br i1 %guard13254, label %__then942, label %__fall1944

__fresh965:
  br label %__fall1944

__fall1944:
  %guard23255 = icmp eq i8* %tmp13250, null
  br i1 %guard23255, label %__else941, label %__fall2943

__fresh966:
  br label %__fall2943

__fall2943:
  %tmp23251 = load i8** %vt_ptr_slot3247
  %tmp33252 = bitcast i8* %tmp23251 to i8** 
  %tmp43253 = load i8** %tmp33252
  store i8* %tmp43253, i8** %vt_ptr_slot3247
  br label %__loop945

__fresh967:
  br label %__then942

__then942:
  %var_slot3248 = alloca %Bb*
  store %Bb* %cast_op3244, %Bb** %var_slot3248
  %lhs_or_call3256 = load i32* %vdecl_slot3242
  %lhs_or_call3257 = load %Bb** %var_slot3248
  %path3258 = getelementptr %Bb* %lhs_or_call3257, i32 0, i32 2
  %lhs_or_call3259 = load i32* %path3258
  %bop3260 = add i32 %lhs_or_call3256, %lhs_or_call3259
  store i32 %bop3260, i32* %vdecl_slot3242
  %lhs_or_call3261 = load %Bb** %var_slot3248
  %vtmp3263 = getelementptr %Bb* %lhs_or_call3261, i32 0, i32 0
  %vtable3262 = load %_Bb_vtable** %vtmp3263
  %fptmp3264 = getelementptr %_Bb_vtable* %vtable3262, i32 0, i32 2
  %method3265 = load void (%Bb*)** %fptmp3264
  call void %method3265( %Bb* %lhs_or_call3261 )
  br label %__done940

__fresh968:
  br label %__else941

__else941:
  br label %__done940

__done940:
  %lhs_or_call3266 = load %A** %vdecl_slot3236
  %cast_op3267 = bitcast %A* %lhs_or_call3266 to %B* 
  %cast_op3268 = bitcast %B* %cast_op3267 to i8** 
  %cast_op3269 = bitcast %_B_vtable* @_B_vtable569 to i8* 
  %vt_ptr_slot3270 = alloca i8*
  %tmp03272 = load i8** %cast_op3268
  store i8* %tmp03272, i8** %vt_ptr_slot3270
  br label %__loop951

__loop951:
  %tmp13273 = load i8** %vt_ptr_slot3270
  %guard13277 = icmp eq i8* %tmp13273, %cast_op3269
  br i1 %guard13277, label %__then948, label %__fall1950

__fresh969:
  br label %__fall1950

__fall1950:
  %guard23278 = icmp eq i8* %tmp13273, null
  br i1 %guard23278, label %__else947, label %__fall2949

__fresh970:
  br label %__fall2949

__fall2949:
  %tmp23274 = load i8** %vt_ptr_slot3270
  %tmp33275 = bitcast i8* %tmp23274 to i8** 
  %tmp43276 = load i8** %tmp33275
  store i8* %tmp43276, i8** %vt_ptr_slot3270
  br label %__loop951

__fresh971:
  br label %__then948

__then948:
  %var_slot3271 = alloca %B*
  store %B* %cast_op3267, %B** %var_slot3271
  %lhs_or_call3279 = load i32* %vdecl_slot3242
  %lhs_or_call3280 = load %B** %var_slot3271
  %path3281 = getelementptr %B* %lhs_or_call3280, i32 0, i32 2
  %lhs_or_call3282 = load i32* %path3281
  %bop3283 = add i32 %lhs_or_call3279, %lhs_or_call3282
  store i32 %bop3283, i32* %vdecl_slot3242
  %lhs_or_call3284 = load %B** %var_slot3271
  %vtmp3286 = getelementptr %B* %lhs_or_call3284, i32 0, i32 0
  %vtable3285 = load %_B_vtable** %vtmp3286
  %fptmp3287 = getelementptr %_B_vtable* %vtable3285, i32 0, i32 2
  %method3288 = load void (%B*)** %fptmp3287
  call void %method3288( %B* %lhs_or_call3284 )
  br label %__done946

__fresh972:
  br label %__else947

__else947:
  br label %__done946

__done946:
  %lhs_or_call3289 = load %A** %vdecl_slot3236
  %cast_op3290 = bitcast %A* %lhs_or_call3289 to %Bb* 
  %cast_op3291 = bitcast %Bb* %cast_op3290 to i8** 
  %cast_op3292 = bitcast %_Bb_vtable* @_Bb_vtable570 to i8* 
  %vt_ptr_slot3293 = alloca i8*
  %tmp03295 = load i8** %cast_op3291
  store i8* %tmp03295, i8** %vt_ptr_slot3293
  br label %__loop957

__loop957:
  %tmp13296 = load i8** %vt_ptr_slot3293
  %guard13300 = icmp eq i8* %tmp13296, %cast_op3292
  br i1 %guard13300, label %__then954, label %__fall1956

__fresh973:
  br label %__fall1956

__fall1956:
  %guard23301 = icmp eq i8* %tmp13296, null
  br i1 %guard23301, label %__else953, label %__fall2955

__fresh974:
  br label %__fall2955

__fall2955:
  %tmp23297 = load i8** %vt_ptr_slot3293
  %tmp33298 = bitcast i8* %tmp23297 to i8** 
  %tmp43299 = load i8** %tmp33298
  store i8* %tmp43299, i8** %vt_ptr_slot3293
  br label %__loop957

__fresh975:
  br label %__then954

__then954:
  %var_slot3294 = alloca %Bb*
  store %Bb* %cast_op3290, %Bb** %var_slot3294
  call void @print_string( i8* @_const_str579 )
  call void @oat_abort( i32 -1 )
  br label %__done952

__fresh976:
  br label %__else953

__else953:
  call void @print_string( i8* @_const_str578 )
  br label %__done952

__done952:
  %lhs_or_call3302 = load %A** %vdecl_slot3241
  %cast_op3303 = bitcast %A* %lhs_or_call3302 to %B* 
  %cast_op3304 = bitcast %B* %cast_op3303 to i8** 
  %cast_op3305 = bitcast %_B_vtable* @_B_vtable569 to i8* 
  %vt_ptr_slot3306 = alloca i8*
  %tmp03308 = load i8** %cast_op3304
  store i8* %tmp03308, i8** %vt_ptr_slot3306
  br label %__loop963

__loop963:
  %tmp13309 = load i8** %vt_ptr_slot3306
  %guard13313 = icmp eq i8* %tmp13309, %cast_op3305
  br i1 %guard13313, label %__then960, label %__fall1962

__fresh977:
  br label %__fall1962

__fall1962:
  %guard23314 = icmp eq i8* %tmp13309, null
  br i1 %guard23314, label %__else959, label %__fall2961

__fresh978:
  br label %__fall2961

__fall2961:
  %tmp23310 = load i8** %vt_ptr_slot3306
  %tmp33311 = bitcast i8* %tmp23310 to i8** 
  %tmp43312 = load i8** %tmp33311
  store i8* %tmp43312, i8** %vt_ptr_slot3306
  br label %__loop963

__fresh979:
  br label %__then960

__then960:
  %var_slot3307 = alloca %B*
  store %B* %cast_op3303, %B** %var_slot3307
  call void @print_string( i8* @_const_str581 )
  call void @oat_abort( i32 -1 )
  br label %__done958

__fresh980:
  br label %__else959

__else959:
  call void @print_string( i8* @_const_str580 )
  br label %__done958

__done958:
  %lhs_or_call3315 = load i32* %vdecl_slot3242
  ret i32 %lhs_or_call3315
}


define void @_Bb_name (%Bb* %_this1){
__fresh939:
  call void @print_string( i8* @_const_str577 )
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh938:
  %cast_op3219 = bitcast %Bb* %_this1 to %A* 
  %dummy3220 = call %A* @_A_ctor ( %A* %cast_op3219 )
  %path3221 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str576, i8** %path3221
  %vt_slot3222 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable570, %_Bb_vtable** %vt_slot3222
  %path3223 = getelementptr %Bb* %_this1, i32 0, i32 2
  store i32 2, i32* %path3223
  ret %Bb* %_this1
}


define void @_B_name (%B* %_this1){
__fresh937:
  call void @print_string( i8* @_const_str575 )
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh936:
  %cast_op3214 = bitcast %B* %_this1 to %A* 
  %dummy3215 = call %A* @_A_ctor ( %A* %cast_op3214 )
  %path3216 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str574, i8** %path3216
  %vt_slot3217 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable569, %_B_vtable** %vt_slot3217
  %path3218 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path3218
  ret %B* %_this1
}


define void @_A_name (%A* %_this1){
__fresh935:
  call void @print_string( i8* @_const_str573 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh934:
  %cast_op3210 = bitcast %A* %_this1 to %Object* 
  %dummy3211 = call %Object* @_Object_ctor ( %Object* %cast_op3210 )
  %path3212 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str572, i8** %path3212
  %vt_slot3213 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable568, %_A_vtable** %vt_slot3213
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh933:
  %path3208 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3209 = load i8** %path3208
  ret i8* %lhs_or_call3209
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh932:
  %path3206 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str571, i8** %path3206
  %vt_slot3207 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable567, %_Object_vtable** %vt_slot3207
  ret %Object* %_this1
}



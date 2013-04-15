%Array = type { %_Array_vtable*, i8*, { i32, [ 0 x %Array* ] }*, i32, i32 }
%_Array_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Array*, i32)*, void (%Array*)*, void (%Array*)*, i32 (%Array*)* }
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
@a589 = global %Array* zeroinitializer, align 4		; initialized by @a589.init590
@_const_str588.str. = private unnamed_addr constant [ 6 x i8 ] c "Array\00", align 4
@_const_str588 = alias bitcast([ 6 x i8 ]* @_const_str588.str. to i8*)@_const_str587.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str587 = alias bitcast([ 7 x i8 ]* @_const_str587.str. to i8*)@_Array_vtable586 = private constant %_Array_vtable {%_Object_vtable* @_Object_vtable585, i8* (%Object*)* @_Object_get_name, void (%Array*, i32)* @_Array_set_length, void (%Array*)* @_Array_add_dimension, void (%Array*)* @_Array_fill_random_bits, i32 (%Array*)* @_Array_total}, align 4
@_Object_vtable585 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1035:
  call void @a589.init590(  )
  ret void
}


define i32 @program (i32 %argc3487, { i32, [ 0 x i8* ] }* %argv3485){
__fresh1034:
  %argc_slot3488 = alloca i32
  store i32 %argc3487, i32* %argc_slot3488
  %argv_slot3486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3485, { i32, [ 0 x i8* ] }** %argv_slot3486
  %lhs_or_call3489 = load %Array** @a589
  %vtmp3491 = getelementptr %Array* %lhs_or_call3489, i32 0, i32 0
  %vtable3490 = load %_Array_vtable** %vtmp3491
  %fptmp3492 = getelementptr %_Array_vtable* %vtable3490, i32 0, i32 2
  %method3493 = load void (%Array*, i32)** %fptmp3492
  call void %method3493( %Array* %lhs_or_call3489, i32 5 )
  %lhs_or_call3494 = load %Array** @a589
  %vtmp3496 = getelementptr %Array* %lhs_or_call3494, i32 0, i32 0
  %vtable3495 = load %_Array_vtable** %vtmp3496
  %fptmp3497 = getelementptr %_Array_vtable* %vtable3495, i32 0, i32 3
  %method3498 = load void (%Array*)** %fptmp3497
  call void %method3498( %Array* %lhs_or_call3494 )
  %lhs_or_call3499 = load %Array** @a589
  %vtmp3501 = getelementptr %Array* %lhs_or_call3499, i32 0, i32 0
  %vtable3500 = load %_Array_vtable** %vtmp3501
  %fptmp3502 = getelementptr %_Array_vtable* %vtable3500, i32 0, i32 3
  %method3503 = load void (%Array*)** %fptmp3502
  call void %method3503( %Array* %lhs_or_call3499 )
  %lhs_or_call3504 = load %Array** @a589
  %vtmp3506 = getelementptr %Array* %lhs_or_call3504, i32 0, i32 0
  %vtable3505 = load %_Array_vtable** %vtmp3506
  %fptmp3507 = getelementptr %_Array_vtable* %vtable3505, i32 0, i32 3
  %method3508 = load void (%Array*)** %fptmp3507
  call void %method3508( %Array* %lhs_or_call3504 )
  %lhs_or_call3509 = load %Array** @a589
  %vtmp3511 = getelementptr %Array* %lhs_or_call3509, i32 0, i32 0
  %vtable3510 = load %_Array_vtable** %vtmp3511
  %fptmp3512 = getelementptr %_Array_vtable* %vtable3510, i32 0, i32 4
  %method3513 = load void (%Array*)** %fptmp3512
  call void %method3513( %Array* %lhs_or_call3509 )
  %lhs_or_call3514 = load %Array** @a589
  %vtmp3516 = getelementptr %Array* %lhs_or_call3514, i32 0, i32 0
  %vtable3515 = load %_Array_vtable** %vtmp3516
  %fptmp3517 = getelementptr %_Array_vtable* %vtable3515, i32 0, i32 5
  %method3518 = load i32 (%Array*)** %fptmp3517
  %ret3519 = call i32 %method3518 ( %Array* %lhs_or_call3514 )
  ret i32 %ret3519
}


define void @a589.init590 (){
__fresh1033:
  %mem_ptr3482 = call i32* @oat_malloc ( i32 20 )
  %obj3483 = bitcast i32* %mem_ptr3482 to %Array* 
  %new_obj3484 = call %Array* @_Array_ctor ( %Array* %obj3483 )
  store %Array* %new_obj3484, %Array** @a589
  ret void
}


define i32 @_Array_total (%Array* %_this1){
__fresh1030:
  %path3457 = getelementptr %Array* %_this1, i32 0, i32 4
  %lhs_or_call3458 = load i32* %path3457
  %vdecl_slot3459 = alloca i32
  store i32 %lhs_or_call3458, i32* %vdecl_slot3459
  %vdecl_slot3460 = alloca i32
  store i32 0, i32* %vdecl_slot3460
  br label %__cond1029

__cond1029:
  %lhs_or_call3461 = load i32* %vdecl_slot3460
  %path3462 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3463 = load i32* %path3462
  %bop3464 = icmp slt i32 %lhs_or_call3461, %lhs_or_call3463
  br i1 %bop3464, label %__body1028, label %__post1027

__fresh1031:
  br label %__body1028

__body1028:
  %lhs_or_call3465 = load i32* %vdecl_slot3459
  %path3466 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3467 = load { i32, [ 0 x %Array* ] }** %path3466
  %lhs_or_call3468 = load i32* %vdecl_slot3460
  %bound_ptr3470 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3467, i32 0, i32 0
  %bound3471 = load i32* %bound_ptr3470
  call void @oat_array_bounds_check( i32 %bound3471, i32 %lhs_or_call3468 )
  %elt3469 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3467, i32 0, i32 1, i32 %lhs_or_call3468
  %lhs_or_call3472 = load %Array** %elt3469
  %vtmp3474 = getelementptr %Array* %lhs_or_call3472, i32 0, i32 0
  %vtable3473 = load %_Array_vtable** %vtmp3474
  %fptmp3475 = getelementptr %_Array_vtable* %vtable3473, i32 0, i32 5
  %method3476 = load i32 (%Array*)** %fptmp3475
  %ret3477 = call i32 %method3476 ( %Array* %lhs_or_call3472 )
  %bop3478 = add i32 %lhs_or_call3465, %ret3477
  store i32 %bop3478, i32* %vdecl_slot3459
  %lhs_or_call3479 = load i32* %vdecl_slot3460
  %bop3480 = add i32 %lhs_or_call3479, 1
  store i32 %bop3480, i32* %vdecl_slot3460
  br label %__cond1029

__fresh1032:
  br label %__post1027

__post1027:
  %lhs_or_call3481 = load i32* %vdecl_slot3459
  ret i32 %lhs_or_call3481
}


define void @_Array_fill_random_bits (%Array* %_this1){
__fresh1024:
  %vdecl_slot3438 = alloca i32
  store i32 0, i32* %vdecl_slot3438
  br label %__cond1023

__cond1023:
  %lhs_or_call3439 = load i32* %vdecl_slot3438
  %path3440 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3441 = load i32* %path3440
  %bop3442 = icmp slt i32 %lhs_or_call3439, %lhs_or_call3441
  br i1 %bop3442, label %__body1022, label %__post1021

__fresh1025:
  br label %__body1022

__body1022:
  %path3443 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3444 = load { i32, [ 0 x %Array* ] }** %path3443
  %lhs_or_call3445 = load i32* %vdecl_slot3438
  %bound_ptr3447 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3444, i32 0, i32 0
  %bound3448 = load i32* %bound_ptr3447
  call void @oat_array_bounds_check( i32 %bound3448, i32 %lhs_or_call3445 )
  %elt3446 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3444, i32 0, i32 1, i32 %lhs_or_call3445
  %lhs_or_call3449 = load %Array** %elt3446
  %vtmp3451 = getelementptr %Array* %lhs_or_call3449, i32 0, i32 0
  %vtable3450 = load %_Array_vtable** %vtmp3451
  %fptmp3452 = getelementptr %_Array_vtable* %vtable3450, i32 0, i32 4
  %method3453 = load void (%Array*)** %fptmp3452
  call void %method3453( %Array* %lhs_or_call3449 )
  %lhs_or_call3454 = load i32* %vdecl_slot3438
  %bop3455 = add i32 %lhs_or_call3454, 1
  store i32 %bop3455, i32* %vdecl_slot3438
  br label %__cond1023

__fresh1026:
  br label %__post1021

__post1021:
  %path3456 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 2, i32* %path3456
  ret void
}


define void @_Array_add_dimension (%Array* %_this1){
__fresh1016:
  %path3397 = getelementptr %Array* %_this1, i32 0, i32 2
  %path3398 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3399 = load i32* %path3398
  %array_ptr3400 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3399 )
  %array3401 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3400 to { i32, [ 0 x %Array* ] }* 
  %_tmp5623402 = alloca i32
  store i32 %lhs_or_call3399, i32* %_tmp5623402
  %_tmp5633403 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3401, { i32, [ 0 x %Array* ] }** %_tmp5633403
  %vdecl_slot3404 = alloca i32
  store i32 0, i32* %vdecl_slot3404
  br label %__cond1012

__cond1012:
  %lhs_or_call3405 = load i32* %vdecl_slot3404
  %lhs_or_call3406 = load i32* %_tmp5623402
  %bop3407 = icmp slt i32 %lhs_or_call3405, %lhs_or_call3406
  br i1 %bop3407, label %__body1011, label %__post1010

__fresh1017:
  br label %__body1011

__body1011:
  %lhs_or_call3408 = load { i32, [ 0 x %Array* ] }** %_tmp5633403
  %lhs_or_call3409 = load i32* %vdecl_slot3404
  %bound_ptr3411 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3408, i32 0, i32 0
  %bound3412 = load i32* %bound_ptr3411
  call void @oat_array_bounds_check( i32 %bound3412, i32 %lhs_or_call3409 )
  %elt3410 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3408, i32 0, i32 1, i32 %lhs_or_call3409
  %mem_ptr3413 = call i32* @oat_malloc ( i32 20 )
  %obj3414 = bitcast i32* %mem_ptr3413 to %Array* 
  %new_obj3415 = call %Array* @_Array_ctor ( %Array* %obj3414 )
  store %Array* %new_obj3415, %Array** %elt3410
  %lhs_or_call3416 = load i32* %vdecl_slot3404
  %bop3417 = add i32 %lhs_or_call3416, 1
  store i32 %bop3417, i32* %vdecl_slot3404
  br label %__cond1012

__fresh1018:
  br label %__post1010

__post1010:
  store { i32, [ 0 x %Array* ] }* %array3401, { i32, [ 0 x %Array* ] }** %path3397
  %vdecl_slot3418 = alloca i32
  store i32 0, i32* %vdecl_slot3418
  br label %__cond1015

__cond1015:
  %lhs_or_call3419 = load i32* %vdecl_slot3418
  %path3420 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3421 = load i32* %path3420
  %bop3422 = icmp slt i32 %lhs_or_call3419, %lhs_or_call3421
  br i1 %bop3422, label %__body1014, label %__post1013

__fresh1019:
  br label %__body1014

__body1014:
  %path3425 = getelementptr %Array* %_this1, i32 0, i32 2
  %lhs_or_call3426 = load { i32, [ 0 x %Array* ] }** %path3425
  %lhs_or_call3427 = load i32* %vdecl_slot3418
  %bound_ptr3429 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3426, i32 0, i32 0
  %bound3430 = load i32* %bound_ptr3429
  call void @oat_array_bounds_check( i32 %bound3430, i32 %lhs_or_call3427 )
  %elt3428 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3426, i32 0, i32 1, i32 %lhs_or_call3427
  %lhs_or_call3431 = load %Array** %elt3428
  %vtmp3433 = getelementptr %Array* %lhs_or_call3431, i32 0, i32 0
  %vtable3432 = load %_Array_vtable** %vtmp3433
  %fptmp3434 = getelementptr %_Array_vtable* %vtable3432, i32 0, i32 2
  %method3435 = load void (%Array*, i32)** %fptmp3434
  %path3423 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3424 = load i32* %path3423
  call void %method3435( %Array* %lhs_or_call3431, i32 %lhs_or_call3424 )
  %lhs_or_call3436 = load i32* %vdecl_slot3418
  %bop3437 = add i32 %lhs_or_call3436, 1
  store i32 %bop3437, i32* %vdecl_slot3418
  br label %__cond1015

__fresh1020:
  br label %__post1013

__post1013:
  ret void
}


define void @_Array_set_length (%Array* %_this1, i32 %l3372){
__fresh1007:
  %l_slot3373 = alloca i32
  store i32 %l3372, i32* %l_slot3373
  %path3374 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3375 = load i32* %l_slot3373
  store i32 %lhs_or_call3375, i32* %path3374
  %path3376 = getelementptr %Array* %_this1, i32 0, i32 2
  %path3377 = getelementptr %Array* %_this1, i32 0, i32 3
  %lhs_or_call3378 = load i32* %path3377
  %array_ptr3379 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %lhs_or_call3378 )
  %array3380 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3379 to { i32, [ 0 x %Array* ] }* 
  %_tmp5603381 = alloca i32
  store i32 %lhs_or_call3378, i32* %_tmp5603381
  %_tmp5613382 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3380, { i32, [ 0 x %Array* ] }** %_tmp5613382
  %vdecl_slot3383 = alloca i32
  store i32 0, i32* %vdecl_slot3383
  br label %__cond1006

__cond1006:
  %lhs_or_call3384 = load i32* %vdecl_slot3383
  %lhs_or_call3385 = load i32* %_tmp5603381
  %bop3386 = icmp slt i32 %lhs_or_call3384, %lhs_or_call3385
  br i1 %bop3386, label %__body1005, label %__post1004

__fresh1008:
  br label %__body1005

__body1005:
  %lhs_or_call3387 = load { i32, [ 0 x %Array* ] }** %_tmp5613382
  %lhs_or_call3388 = load i32* %vdecl_slot3383
  %bound_ptr3390 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3387, i32 0, i32 0
  %bound3391 = load i32* %bound_ptr3390
  call void @oat_array_bounds_check( i32 %bound3391, i32 %lhs_or_call3388 )
  %elt3389 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3387, i32 0, i32 1, i32 %lhs_or_call3388
  %mem_ptr3392 = call i32* @oat_malloc ( i32 20 )
  %obj3393 = bitcast i32* %mem_ptr3392 to %Array* 
  %new_obj3394 = call %Array* @_Array_ctor ( %Array* %obj3393 )
  store %Array* %new_obj3394, %Array** %elt3389
  %lhs_or_call3395 = load i32* %vdecl_slot3383
  %bop3396 = add i32 %lhs_or_call3395, 1
  store i32 %bop3396, i32* %vdecl_slot3383
  br label %__cond1006

__fresh1009:
  br label %__post1004

__post1004:
  store { i32, [ 0 x %Array* ] }* %array3380, { i32, [ 0 x %Array* ] }** %path3376
  ret void
}


define %Array* @_Array_ctor (%Array* %_this1){
__fresh1001:
  %cast_op3347 = bitcast %Array* %_this1 to %Object* 
  %dummy3348 = call %Object* @_Object_ctor ( %Object* %cast_op3347 )
  %path3349 = getelementptr %Array* %_this1, i32 0, i32 1
  store i8* @_const_str588, i8** %path3349
  %path3350 = getelementptr %Array* %_this1, i32 0, i32 2
  %array_ptr3351 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 0 )
  %array3352 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3351 to { i32, [ 0 x %Array* ] }* 
  %_tmp5573353 = alloca i32
  store i32 0, i32* %_tmp5573353
  %_tmp5583354 = alloca { i32, [ 0 x %Array* ] }*
  store { i32, [ 0 x %Array* ] }* %array3352, { i32, [ 0 x %Array* ] }** %_tmp5583354
  %vdecl_slot3355 = alloca i32
  store i32 0, i32* %vdecl_slot3355
  br label %__cond1000

__cond1000:
  %lhs_or_call3356 = load i32* %vdecl_slot3355
  %lhs_or_call3357 = load i32* %_tmp5573353
  %bop3358 = icmp slt i32 %lhs_or_call3356, %lhs_or_call3357
  br i1 %bop3358, label %__body999, label %__post998

__fresh1002:
  br label %__body999

__body999:
  %lhs_or_call3359 = load { i32, [ 0 x %Array* ] }** %_tmp5583354
  %lhs_or_call3360 = load i32* %vdecl_slot3355
  %bound_ptr3362 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3359, i32 0, i32 0
  %bound3363 = load i32* %bound_ptr3362
  call void @oat_array_bounds_check( i32 %bound3363, i32 %lhs_or_call3360 )
  %elt3361 = getelementptr { i32, [ 0 x %Array* ] }* %lhs_or_call3359, i32 0, i32 1, i32 %lhs_or_call3360
  %mem_ptr3364 = call i32* @oat_malloc ( i32 20 )
  %obj3365 = bitcast i32* %mem_ptr3364 to %Array* 
  %new_obj3366 = call %Array* @_Array_ctor ( %Array* %obj3365 )
  store %Array* %new_obj3366, %Array** %elt3361
  %lhs_or_call3367 = load i32* %vdecl_slot3355
  %bop3368 = add i32 %lhs_or_call3367, 1
  store i32 %bop3368, i32* %vdecl_slot3355
  br label %__cond1000

__fresh1003:
  br label %__post998

__post998:
  store { i32, [ 0 x %Array* ] }* %array3352, { i32, [ 0 x %Array* ] }** %path3350
  %vt_slot3369 = getelementptr %Array* %_this1, i32 0, i32 0
  store %_Array_vtable* @_Array_vtable586, %_Array_vtable** %vt_slot3369
  %path3370 = getelementptr %Array* %_this1, i32 0, i32 4
  store i32 0, i32* %path3370
  %path3371 = getelementptr %Array* %_this1, i32 0, i32 3
  store i32 0, i32* %path3371
  ret %Array* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh997:
  %path3345 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3346 = load i8** %path3345
  ret i8* %lhs_or_call3346
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh996:
  %path3343 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str587, i8** %path3343
  %vt_slot3344 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable585, %_Object_vtable** %vt_slot3344
  ret %Object* %_this1
}



%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*, i32)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a449 = global %A* zeroinitializer, align 4		; initialized by @a449.init450
@_const_str448.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str448 = alias bitcast([ 2 x i8 ]* @_const_str448.str. to i8*)@_const_str447.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str447 = alias bitcast([ 2 x i8 ]* @_const_str447.str. to i8*)@_const_str446.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str446 = alias bitcast([ 2 x i8 ]* @_const_str446.str. to i8*)@_const_str445.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str445 = alias bitcast([ 7 x i8 ]* @_const_str445.str. to i8*)@_C_vtable444 = private constant %_C_vtable {%_B_vtable* @_B_vtable443, i8* (%Object*)* @_Object_get_name, i32 (%C*, i32)* @_C_over}, align 4
@_B_vtable443 = private constant %_B_vtable {%_A_vtable* @_A_vtable442, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable442 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable441, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable441 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh705:
  call void @a449.init450(  )
  ret void
}


define i32 @program (i32 %argc2479, { i32, [ 0 x i8* ] }* %argv2477){
__fresh704:
  %argc_slot2480 = alloca i32
  store i32 %argc2479, i32* %argc_slot2480
  %argv_slot2478 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2477, { i32, [ 0 x i8* ] }** %argv_slot2478
  %lhs_or_call2481 = load %A** @a449
  %vtmp2483 = getelementptr %A* %lhs_or_call2481, i32 0, i32 0
  %vtable2482 = load %_A_vtable** %vtmp2483
  %fptmp2484 = getelementptr %_A_vtable* %vtable2482, i32 0, i32 2
  %method2485 = load i32 (%A*, i32)** %fptmp2484
  %ret2486 = call i32 %method2485 ( %A* %lhs_or_call2481, i32 3 )
  ret i32 %ret2486
}


define void @a449.init450 (){
__fresh703:
  %mem_ptr2473 = call i32* @oat_malloc ( i32 8 )
  %obj2474 = bitcast i32* %mem_ptr2473 to %C* 
  %new_obj2475 = call %C* @_C_ctor ( %C* %obj2474 )
  %cast_op2476 = bitcast %C* %new_obj2475 to %A* 
  store %A* %cast_op2476, %A** @a449
  ret void
}


define i32 @_C_over (%C* %_this1, i32 %x2465){
__fresh702:
  %x_slot2466 = alloca i32
  store i32 %x2465, i32* %x_slot2466
  %lhs_or_call2467 = load i32* %x_slot2466
  %bop2468 = add i32 %lhs_or_call2467, 1
  %lhs_or_call2469 = load i32* %x_slot2466
  %cast_op2470 = bitcast %C* %_this1 to %B* 
  %ret2471 = call i32 @_B_over ( %B* %cast_op2470, i32 %lhs_or_call2469 )
  %bop2472 = add i32 %bop2468, %ret2471
  ret i32 %bop2472
}


define %C* @_C_ctor (%C* %_this1){
__fresh701:
  %cast_op2461 = bitcast %C* %_this1 to %B* 
  %dummy2462 = call %B* @_B_ctor ( %B* %cast_op2461 )
  %path2463 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str448, i8** %path2463
  %vt_slot2464 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable444, %_C_vtable** %vt_slot2464
  ret %C* %_this1
}


define i32 @_B_over (%B* %_this1, i32 %x2457){
__fresh700:
  %x_slot2458 = alloca i32
  store i32 %x2457, i32* %x_slot2458
  %lhs_or_call2459 = load i32* %x_slot2458
  %bop2460 = add i32 %lhs_or_call2459, 2
  ret i32 %bop2460
}


define %B* @_B_ctor (%B* %_this1){
__fresh699:
  %cast_op2453 = bitcast %B* %_this1 to %A* 
  %dummy2454 = call %A* @_A_ctor ( %A* %cast_op2453 )
  %path2455 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str447, i8** %path2455
  %vt_slot2456 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable443, %_B_vtable** %vt_slot2456
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2449){
__fresh698:
  %x_slot2450 = alloca i32
  store i32 %x2449, i32* %x_slot2450
  %lhs_or_call2451 = load i32* %x_slot2450
  %bop2452 = add i32 %lhs_or_call2451, 1
  ret i32 %bop2452
}


define %A* @_A_ctor (%A* %_this1){
__fresh697:
  %cast_op2445 = bitcast %A* %_this1 to %Object* 
  %dummy2446 = call %Object* @_Object_ctor ( %Object* %cast_op2445 )
  %path2447 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str446, i8** %path2447
  %vt_slot2448 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable442, %_A_vtable** %vt_slot2448
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh696:
  %path2443 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2444 = load i8** %path2443
  ret i8* %lhs_or_call2444
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh695:
  %path2441 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str445, i8** %path2441
  %vt_slot2442 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable441, %_Object_vtable** %vt_slot2442
  ret %Object* %_this1
}



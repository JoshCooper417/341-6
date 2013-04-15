%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str412.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str412 = alias bitcast([ 2 x i8 ]* @_const_str412.str. to i8*)@_const_str411.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str411 = alias bitcast([ 7 x i8 ]* @_const_str411.str. to i8*)@_A_vtable410 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable409, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable409 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh662:
  ret void
}


define i32 @program (i32 %argc2315, { i32, [ 0 x i8* ] }* %argv2313){
__fresh661:
  %argc_slot2316 = alloca i32
  store i32 %argc2315, i32* %argc_slot2316
  %argv_slot2314 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2313, { i32, [ 0 x i8* ] }** %argv_slot2314
  %cast_op2317 = bitcast i8* null to %A* 
  %ret2318 = call i32 @try_ifnull ( %A* %cast_op2317 )
  ret i32 %ret2318
}


define i32 @try_ifnull (%A* %a2303){
__fresh658:
  %a_slot2304 = alloca %A*
  store %A* %a2303, %A** %a_slot2304
  %vdecl_slot2305 = alloca i32
  store i32 0, i32* %vdecl_slot2305
  %lhs_or_call2306 = load %A** %a_slot2304
  %ifnull_slot2307 = alloca %A*
  store %A* %lhs_or_call2306, %A** %ifnull_slot2307
  %ifnull_guard2308 = icmp ne %A* %lhs_or_call2306, null
  br i1 %ifnull_guard2308, label %__then657, label %__else656

__fresh659:
  br label %__then657

__then657:
  %lhs_or_call2309 = load %A** %ifnull_slot2307
  %path2310 = getelementptr %A* %lhs_or_call2309, i32 0, i32 2
  %lhs_or_call2311 = load i32* %path2310
  store i32 %lhs_or_call2311, i32* %vdecl_slot2305
  br label %__merge655

__fresh660:
  br label %__else656

__else656:
  store i32 12, i32* %vdecl_slot2305
  br label %__merge655

__merge655:
  %lhs_or_call2312 = load i32* %vdecl_slot2305
  ret i32 %lhs_or_call2312
}


define %A* @_A_ctor (%A* %_this1, i32 %x2295){
__fresh654:
  %x_slot2296 = alloca i32
  store i32 %x2295, i32* %x_slot2296
  %cast_op2297 = bitcast %A* %_this1 to %Object* 
  %dummy2298 = call %Object* @_Object_ctor ( %Object* %cast_op2297 )
  %path2299 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str412, i8** %path2299
  %vt_slot2300 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable410, %_A_vtable** %vt_slot2300
  %path2301 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2302 = load i32* %x_slot2296
  store i32 %lhs_or_call2302, i32* %path2301
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh653:
  %path2293 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2294 = load i8** %path2293
  ret i8* %lhs_or_call2294
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh652:
  %path2291 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str411, i8** %path2291
  %vt_slot2292 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable409, %_Object_vtable** %vt_slot2292
  ret %Object* %_this1
}



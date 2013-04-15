%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str192.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str192 = alias bitcast([ 3 x i8 ]* @_const_str192.str. to i8*)@_const_str193.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str193 = alias bitcast([ 4 x i8 ]* @_const_str193.str. to i8*)@_const_str191.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str191 = alias bitcast([ 2 x i8 ]* @_const_str191.str. to i8*)@_const_str190.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str190 = alias bitcast([ 2 x i8 ]* @_const_str190.str. to i8*)@_const_str189.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str189 = alias bitcast([ 2 x i8 ]* @_const_str189.str. to i8*)@_const_str188.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str188 = alias bitcast([ 7 x i8 ]* @_const_str188.str. to i8*)@_C_vtable187 = private constant %_C_vtable {%_B_vtable* @_B_vtable186, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable186 = private constant %_B_vtable {%_A_vtable* @_A_vtable185, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable185 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable184, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable184 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh309:
  ret void
}


define i32 @program (i32 %argc974, { i32, [ 0 x i8* ] }* %argv972){
__fresh304:
  %argc_slot975 = alloca i32
  store i32 %argc974, i32* %argc_slot975
  %argv_slot973 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv972, { i32, [ 0 x i8* ] }** %argv_slot973
  %mem_ptr976 = call i32* @oat_malloc ( i32 12 )
  %obj977 = bitcast i32* %mem_ptr976 to %A* 
  %new_obj978 = call %A* @_A_ctor ( %A* %obj977 )
  %vdecl_slot979 = alloca %A*
  store %A* %new_obj978, %A** %vdecl_slot979
  %vdecl_slot980 = alloca i32
  store i32 -1, i32* %vdecl_slot980
  %lhs_or_call981 = load %A** %vdecl_slot979
  %cast_op982 = bitcast %A* %lhs_or_call981 to %B* 
  %cast_op983 = bitcast %B* %cast_op982 to i8** 
  %cast_op984 = bitcast %_B_vtable* @_B_vtable186 to i8* 
  %vt_ptr_slot985 = alloca i8*
  %tmp0987 = load i8** %cast_op983
  store i8* %tmp0987, i8** %vt_ptr_slot985
  br label %__loop303

__loop303:
  %tmp1988 = load i8** %vt_ptr_slot985
  %guard1992 = icmp eq i8* %tmp1988, %cast_op984
  br i1 %guard1992, label %__then300, label %__fall1302

__fresh305:
  br label %__fall1302

__fall1302:
  %guard2993 = icmp eq i8* %tmp1988, null
  br i1 %guard2993, label %__else299, label %__fall2301

__fresh306:
  br label %__fall2301

__fall2301:
  %tmp2989 = load i8** %vt_ptr_slot985
  %tmp3990 = bitcast i8* %tmp2989 to i8** 
  %tmp4991 = load i8** %tmp3990
  store i8* %tmp4991, i8** %vt_ptr_slot985
  br label %__loop303

__fresh307:
  br label %__then300

__then300:
  %var_slot986 = alloca %B*
  store %B* %cast_op982, %B** %var_slot986
  call void @print_string( i8* @_const_str193 )
  %lhs_or_call997 = load %B** %var_slot986
  %path998 = getelementptr %B* %lhs_or_call997, i32 0, i32 2
  %lhs_or_call999 = load i32* %path998
  store i32 %lhs_or_call999, i32* %vdecl_slot980
  br label %__done298

__fresh308:
  br label %__else299

__else299:
  call void @print_string( i8* @_const_str192 )
  %lhs_or_call994 = load %A** %vdecl_slot979
  %path995 = getelementptr %A* %lhs_or_call994, i32 0, i32 2
  %lhs_or_call996 = load i32* %path995
  store i32 %lhs_or_call996, i32* %vdecl_slot980
  br label %__done298

__done298:
  %lhs_or_call1000 = load i32* %vdecl_slot980
  ret i32 %lhs_or_call1000
}


define %C* @_C_ctor (%C* %_this1){
__fresh297:
  %cast_op967 = bitcast %C* %_this1 to %B* 
  %dummy968 = call %B* @_B_ctor ( %B* %cast_op967 )
  %path969 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str191, i8** %path969
  %vt_slot970 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable187, %_C_vtable** %vt_slot970
  %path971 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path971
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh296:
  %cast_op962 = bitcast %B* %_this1 to %A* 
  %dummy963 = call %A* @_A_ctor ( %A* %cast_op962 )
  %path964 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str190, i8** %path964
  %vt_slot965 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable186, %_B_vtable** %vt_slot965
  %path966 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path966
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh295:
  %cast_op957 = bitcast %A* %_this1 to %Object* 
  %dummy958 = call %Object* @_Object_ctor ( %Object* %cast_op957 )
  %path959 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str189, i8** %path959
  %vt_slot960 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable185, %_A_vtable** %vt_slot960
  %path961 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path961
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh294:
  %path955 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call956 = load i8** %path955
  ret i8* %lhs_or_call956
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh293:
  %path953 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str188, i8** %path953
  %vt_slot954 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable184, %_Object_vtable** %vt_slot954
  ret %Object* %_this1
}



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
@_const_str182.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str182 = alias bitcast([ 3 x i8 ]* @_const_str182.str. to i8*)@_const_str183.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str183 = alias bitcast([ 4 x i8 ]* @_const_str183.str. to i8*)@_const_str181.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str181 = alias bitcast([ 2 x i8 ]* @_const_str181.str. to i8*)@_const_str180.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str180 = alias bitcast([ 2 x i8 ]* @_const_str180.str. to i8*)@_const_str179.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str179 = alias bitcast([ 2 x i8 ]* @_const_str179.str. to i8*)@_const_str178.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str178 = alias bitcast([ 7 x i8 ]* @_const_str178.str. to i8*)@_C_vtable177 = private constant %_C_vtable {%_B_vtable* @_B_vtable176, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable176 = private constant %_B_vtable {%_A_vtable* @_A_vtable175, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable175 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable174, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable174 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh292:
  ret void
}


define i32 @program (i32 %argc925, { i32, [ 0 x i8* ] }* %argv923){
__fresh287:
  %argc_slot926 = alloca i32
  store i32 %argc925, i32* %argc_slot926
  %argv_slot924 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv923, { i32, [ 0 x i8* ] }** %argv_slot924
  %mem_ptr927 = call i32* @oat_malloc ( i32 12 )
  %obj928 = bitcast i32* %mem_ptr927 to %C* 
  %new_obj929 = call %C* @_C_ctor ( %C* %obj928 )
  %cast_op930 = bitcast %C* %new_obj929 to %A* 
  %vdecl_slot931 = alloca %A*
  store %A* %cast_op930, %A** %vdecl_slot931
  %vdecl_slot932 = alloca i32
  store i32 -1, i32* %vdecl_slot932
  %lhs_or_call933 = load %A** %vdecl_slot931
  %cast_op934 = bitcast %A* %lhs_or_call933 to %C* 
  %cast_op935 = bitcast %C* %cast_op934 to i8** 
  %cast_op936 = bitcast %_C_vtable* @_C_vtable177 to i8* 
  %vt_ptr_slot937 = alloca i8*
  %tmp0939 = load i8** %cast_op935
  store i8* %tmp0939, i8** %vt_ptr_slot937
  br label %__loop286

__loop286:
  %tmp1940 = load i8** %vt_ptr_slot937
  %guard1944 = icmp eq i8* %tmp1940, %cast_op936
  br i1 %guard1944, label %__then283, label %__fall1285

__fresh288:
  br label %__fall1285

__fall1285:
  %guard2945 = icmp eq i8* %tmp1940, null
  br i1 %guard2945, label %__else282, label %__fall2284

__fresh289:
  br label %__fall2284

__fall2284:
  %tmp2941 = load i8** %vt_ptr_slot937
  %tmp3942 = bitcast i8* %tmp2941 to i8** 
  %tmp4943 = load i8** %tmp3942
  store i8* %tmp4943, i8** %vt_ptr_slot937
  br label %__loop286

__fresh290:
  br label %__then283

__then283:
  %var_slot938 = alloca %C*
  store %C* %cast_op934, %C** %var_slot938
  call void @print_string( i8* @_const_str183 )
  %lhs_or_call949 = load %C** %var_slot938
  %path950 = getelementptr %C* %lhs_or_call949, i32 0, i32 2
  %lhs_or_call951 = load i32* %path950
  store i32 %lhs_or_call951, i32* %vdecl_slot932
  br label %__done281

__fresh291:
  br label %__else282

__else282:
  call void @print_string( i8* @_const_str182 )
  %lhs_or_call946 = load %A** %vdecl_slot931
  %path947 = getelementptr %A* %lhs_or_call946, i32 0, i32 2
  %lhs_or_call948 = load i32* %path947
  store i32 %lhs_or_call948, i32* %vdecl_slot932
  br label %__done281

__done281:
  %lhs_or_call952 = load i32* %vdecl_slot932
  ret i32 %lhs_or_call952
}


define %C* @_C_ctor (%C* %_this1){
__fresh280:
  %cast_op918 = bitcast %C* %_this1 to %B* 
  %dummy919 = call %B* @_B_ctor ( %B* %cast_op918 )
  %path920 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str181, i8** %path920
  %vt_slot921 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable177, %_C_vtable** %vt_slot921
  %path922 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path922
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh279:
  %cast_op913 = bitcast %B* %_this1 to %A* 
  %dummy914 = call %A* @_A_ctor ( %A* %cast_op913 )
  %path915 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str180, i8** %path915
  %vt_slot916 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable176, %_B_vtable** %vt_slot916
  %path917 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path917
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh278:
  %cast_op908 = bitcast %A* %_this1 to %Object* 
  %dummy909 = call %Object* @_Object_ctor ( %Object* %cast_op908 )
  %path910 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str179, i8** %path910
  %vt_slot911 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable175, %_A_vtable** %vt_slot911
  %path912 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path912
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh277:
  %path906 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call907 = load i8** %path906
  ret i8* %lhs_or_call907
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh276:
  %path904 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str178, i8** %path904
  %vt_slot905 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable174, %_Object_vtable** %vt_slot905
  ret %Object* %_this1
}



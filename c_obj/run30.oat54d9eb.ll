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
@_const_str172.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str172 = alias bitcast([ 3 x i8 ]* @_const_str172.str. to i8*)@_const_str173.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str173 = alias bitcast([ 4 x i8 ]* @_const_str173.str. to i8*)@_const_str171.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str171 = alias bitcast([ 2 x i8 ]* @_const_str171.str. to i8*)@_const_str170.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str170 = alias bitcast([ 2 x i8 ]* @_const_str170.str. to i8*)@_const_str169.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str169 = alias bitcast([ 2 x i8 ]* @_const_str169.str. to i8*)@_const_str168.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str168 = alias bitcast([ 7 x i8 ]* @_const_str168.str. to i8*)@_C_vtable167 = private constant %_C_vtable {%_B_vtable* @_B_vtable166, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable166 = private constant %_B_vtable {%_A_vtable* @_A_vtable165, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable165 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable164, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable164 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh275:
  ret void
}


define i32 @program (i32 %argc876, { i32, [ 0 x i8* ] }* %argv874){
__fresh270:
  %argc_slot877 = alloca i32
  store i32 %argc876, i32* %argc_slot877
  %argv_slot875 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv874, { i32, [ 0 x i8* ] }** %argv_slot875
  %mem_ptr878 = call i32* @oat_malloc ( i32 12 )
  %obj879 = bitcast i32* %mem_ptr878 to %B* 
  %new_obj880 = call %B* @_B_ctor ( %B* %obj879 )
  %cast_op881 = bitcast %B* %new_obj880 to %A* 
  %vdecl_slot882 = alloca %A*
  store %A* %cast_op881, %A** %vdecl_slot882
  %vdecl_slot883 = alloca i32
  store i32 -1, i32* %vdecl_slot883
  %lhs_or_call884 = load %A** %vdecl_slot882
  %cast_op885 = bitcast %A* %lhs_or_call884 to %C* 
  %cast_op886 = bitcast %C* %cast_op885 to i8** 
  %cast_op887 = bitcast %_C_vtable* @_C_vtable167 to i8* 
  %vt_ptr_slot888 = alloca i8*
  %tmp0890 = load i8** %cast_op886
  store i8* %tmp0890, i8** %vt_ptr_slot888
  br label %__loop269

__loop269:
  %tmp1891 = load i8** %vt_ptr_slot888
  %guard1895 = icmp eq i8* %tmp1891, %cast_op887
  br i1 %guard1895, label %__then266, label %__fall1268

__fresh271:
  br label %__fall1268

__fall1268:
  %guard2896 = icmp eq i8* %tmp1891, null
  br i1 %guard2896, label %__else265, label %__fall2267

__fresh272:
  br label %__fall2267

__fall2267:
  %tmp2892 = load i8** %vt_ptr_slot888
  %tmp3893 = bitcast i8* %tmp2892 to i8** 
  %tmp4894 = load i8** %tmp3893
  store i8* %tmp4894, i8** %vt_ptr_slot888
  br label %__loop269

__fresh273:
  br label %__then266

__then266:
  %var_slot889 = alloca %C*
  store %C* %cast_op885, %C** %var_slot889
  call void @print_string( i8* @_const_str173 )
  %lhs_or_call900 = load %C** %var_slot889
  %path901 = getelementptr %C* %lhs_or_call900, i32 0, i32 2
  %lhs_or_call902 = load i32* %path901
  store i32 %lhs_or_call902, i32* %vdecl_slot883
  br label %__done264

__fresh274:
  br label %__else265

__else265:
  call void @print_string( i8* @_const_str172 )
  %lhs_or_call897 = load %A** %vdecl_slot882
  %path898 = getelementptr %A* %lhs_or_call897, i32 0, i32 2
  %lhs_or_call899 = load i32* %path898
  store i32 %lhs_or_call899, i32* %vdecl_slot883
  br label %__done264

__done264:
  %lhs_or_call903 = load i32* %vdecl_slot883
  ret i32 %lhs_or_call903
}


define %C* @_C_ctor (%C* %_this1){
__fresh263:
  %cast_op869 = bitcast %C* %_this1 to %B* 
  %dummy870 = call %B* @_B_ctor ( %B* %cast_op869 )
  %path871 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str171, i8** %path871
  %vt_slot872 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable167, %_C_vtable** %vt_slot872
  %path873 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path873
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh262:
  %cast_op864 = bitcast %B* %_this1 to %A* 
  %dummy865 = call %A* @_A_ctor ( %A* %cast_op864 )
  %path866 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str170, i8** %path866
  %vt_slot867 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable166, %_B_vtable** %vt_slot867
  %path868 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path868
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh261:
  %cast_op859 = bitcast %A* %_this1 to %Object* 
  %dummy860 = call %Object* @_Object_ctor ( %Object* %cast_op859 )
  %path861 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str169, i8** %path861
  %vt_slot862 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable165, %_A_vtable** %vt_slot862
  %path863 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path863
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh260:
  %path857 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call858 = load i8** %path857
  ret i8* %lhs_or_call858
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh259:
  %path855 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str168, i8** %path855
  %vt_slot856 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable164, %_Object_vtable** %vt_slot856
  ret %Object* %_this1
}



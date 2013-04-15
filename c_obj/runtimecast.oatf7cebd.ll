%Bb = type { %_Bb_vtable*, i8* }
%_Bb_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@bb536 = global %Object* zeroinitializer, align 4		; initialized by @bb536.init537
@b534 = global %Object* zeroinitializer, align 4		; initialized by @b534.init535
@a532 = global %Object* zeroinitializer, align 4		; initialized by @a532.init533
@_const_str531.str. = private unnamed_addr constant [ 3 x i8 ] c "Bb\00", align 4
@_const_str531 = alias bitcast([ 3 x i8 ]* @_const_str531.str. to i8*)@_const_str530.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str530 = alias bitcast([ 2 x i8 ]* @_const_str530.str. to i8*)@_const_str529.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str529 = alias bitcast([ 2 x i8 ]* @_const_str529.str. to i8*)@_const_str528.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str528 = alias bitcast([ 7 x i8 ]* @_const_str528.str. to i8*)@_Bb_vtable527 = private constant %_Bb_vtable {%_A_vtable* @_A_vtable525, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable526 = private constant %_B_vtable {%_A_vtable* @_A_vtable525, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable525 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable524, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable524 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh900:
  call void @a532.init533(  )
  call void @b534.init535(  )
  call void @bb536.init537(  )
  ret void
}


define i32 @program (i32 %argc2948, { i32, [ 0 x i8* ] }* %argv2946){
__fresh863:
  %argc_slot2949 = alloca i32
  store i32 %argc2948, i32* %argc_slot2949
  %argv_slot2947 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2946, { i32, [ 0 x i8* ] }** %argv_slot2947
  %vdecl_slot2950 = alloca i32
  store i32 0, i32* %vdecl_slot2950
  %lhs_or_call2951 = load %Object** @a532
  %cast_op2952 = bitcast %Object* %lhs_or_call2951 to %A* 
  %cast_op2953 = bitcast %A* %cast_op2952 to i8** 
  %cast_op2954 = bitcast %_A_vtable* @_A_vtable525 to i8* 
  %vt_ptr_slot2955 = alloca i8*
  %tmp02957 = load i8** %cast_op2953
  store i8* %tmp02957, i8** %vt_ptr_slot2955
  br label %__loop814

__loop814:
  %tmp12958 = load i8** %vt_ptr_slot2955
  %guard12962 = icmp eq i8* %tmp12958, %cast_op2954
  br i1 %guard12962, label %__then811, label %__fall1813

__fresh864:
  br label %__fall1813

__fall1813:
  %guard22963 = icmp eq i8* %tmp12958, null
  br i1 %guard22963, label %__else810, label %__fall2812

__fresh865:
  br label %__fall2812

__fall2812:
  %tmp22959 = load i8** %vt_ptr_slot2955
  %tmp32960 = bitcast i8* %tmp22959 to i8** 
  %tmp42961 = load i8** %tmp32960
  store i8* %tmp42961, i8** %vt_ptr_slot2955
  br label %__loop814

__fresh866:
  br label %__then811

__then811:
  %var_slot2956 = alloca %A*
  store %A* %cast_op2952, %A** %var_slot2956
  %lhs_or_call2964 = load i32* %vdecl_slot2950
  %bop2965 = add i32 %lhs_or_call2964, 1
  store i32 %bop2965, i32* %vdecl_slot2950
  br label %__done809

__fresh867:
  br label %__else810

__else810:
  br label %__done809

__done809:
  %lhs_or_call2966 = load %Object** @b534
  %cast_op2967 = bitcast %Object* %lhs_or_call2966 to %A* 
  %cast_op2968 = bitcast %A* %cast_op2967 to i8** 
  %cast_op2969 = bitcast %_A_vtable* @_A_vtable525 to i8* 
  %vt_ptr_slot2970 = alloca i8*
  %tmp02972 = load i8** %cast_op2968
  store i8* %tmp02972, i8** %vt_ptr_slot2970
  br label %__loop820

__loop820:
  %tmp12973 = load i8** %vt_ptr_slot2970
  %guard12977 = icmp eq i8* %tmp12973, %cast_op2969
  br i1 %guard12977, label %__then817, label %__fall1819

__fresh868:
  br label %__fall1819

__fall1819:
  %guard22978 = icmp eq i8* %tmp12973, null
  br i1 %guard22978, label %__else816, label %__fall2818

__fresh869:
  br label %__fall2818

__fall2818:
  %tmp22974 = load i8** %vt_ptr_slot2970
  %tmp32975 = bitcast i8* %tmp22974 to i8** 
  %tmp42976 = load i8** %tmp32975
  store i8* %tmp42976, i8** %vt_ptr_slot2970
  br label %__loop820

__fresh870:
  br label %__then817

__then817:
  %var_slot2971 = alloca %A*
  store %A* %cast_op2967, %A** %var_slot2971
  %lhs_or_call2979 = load i32* %vdecl_slot2950
  %bop2980 = add i32 %lhs_or_call2979, 1
  store i32 %bop2980, i32* %vdecl_slot2950
  br label %__done815

__fresh871:
  br label %__else816

__else816:
  br label %__done815

__done815:
  %lhs_or_call2981 = load %Object** @bb536
  %cast_op2982 = bitcast %Object* %lhs_or_call2981 to %A* 
  %cast_op2983 = bitcast %A* %cast_op2982 to i8** 
  %cast_op2984 = bitcast %_A_vtable* @_A_vtable525 to i8* 
  %vt_ptr_slot2985 = alloca i8*
  %tmp02987 = load i8** %cast_op2983
  store i8* %tmp02987, i8** %vt_ptr_slot2985
  br label %__loop826

__loop826:
  %tmp12988 = load i8** %vt_ptr_slot2985
  %guard12992 = icmp eq i8* %tmp12988, %cast_op2984
  br i1 %guard12992, label %__then823, label %__fall1825

__fresh872:
  br label %__fall1825

__fall1825:
  %guard22993 = icmp eq i8* %tmp12988, null
  br i1 %guard22993, label %__else822, label %__fall2824

__fresh873:
  br label %__fall2824

__fall2824:
  %tmp22989 = load i8** %vt_ptr_slot2985
  %tmp32990 = bitcast i8* %tmp22989 to i8** 
  %tmp42991 = load i8** %tmp32990
  store i8* %tmp42991, i8** %vt_ptr_slot2985
  br label %__loop826

__fresh874:
  br label %__then823

__then823:
  %var_slot2986 = alloca %A*
  store %A* %cast_op2982, %A** %var_slot2986
  %lhs_or_call2994 = load i32* %vdecl_slot2950
  %bop2995 = add i32 %lhs_or_call2994, 1
  store i32 %bop2995, i32* %vdecl_slot2950
  br label %__done821

__fresh875:
  br label %__else822

__else822:
  br label %__done821

__done821:
  %lhs_or_call2996 = load %Object** @b534
  %cast_op2997 = bitcast %Object* %lhs_or_call2996 to %B* 
  %cast_op2998 = bitcast %B* %cast_op2997 to i8** 
  %cast_op2999 = bitcast %_B_vtable* @_B_vtable526 to i8* 
  %vt_ptr_slot3000 = alloca i8*
  %tmp03002 = load i8** %cast_op2998
  store i8* %tmp03002, i8** %vt_ptr_slot3000
  br label %__loop832

__loop832:
  %tmp13003 = load i8** %vt_ptr_slot3000
  %guard13007 = icmp eq i8* %tmp13003, %cast_op2999
  br i1 %guard13007, label %__then829, label %__fall1831

__fresh876:
  br label %__fall1831

__fall1831:
  %guard23008 = icmp eq i8* %tmp13003, null
  br i1 %guard23008, label %__else828, label %__fall2830

__fresh877:
  br label %__fall2830

__fall2830:
  %tmp23004 = load i8** %vt_ptr_slot3000
  %tmp33005 = bitcast i8* %tmp23004 to i8** 
  %tmp43006 = load i8** %tmp33005
  store i8* %tmp43006, i8** %vt_ptr_slot3000
  br label %__loop832

__fresh878:
  br label %__then829

__then829:
  %var_slot3001 = alloca %B*
  store %B* %cast_op2997, %B** %var_slot3001
  %lhs_or_call3009 = load i32* %vdecl_slot2950
  %bop3010 = add i32 %lhs_or_call3009, 1
  store i32 %bop3010, i32* %vdecl_slot2950
  br label %__done827

__fresh879:
  br label %__else828

__else828:
  br label %__done827

__done827:
  %lhs_or_call3011 = load %Object** @bb536
  %cast_op3012 = bitcast %Object* %lhs_or_call3011 to %Bb* 
  %cast_op3013 = bitcast %Bb* %cast_op3012 to i8** 
  %cast_op3014 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8* 
  %vt_ptr_slot3015 = alloca i8*
  %tmp03017 = load i8** %cast_op3013
  store i8* %tmp03017, i8** %vt_ptr_slot3015
  br label %__loop838

__loop838:
  %tmp13018 = load i8** %vt_ptr_slot3015
  %guard13022 = icmp eq i8* %tmp13018, %cast_op3014
  br i1 %guard13022, label %__then835, label %__fall1837

__fresh880:
  br label %__fall1837

__fall1837:
  %guard23023 = icmp eq i8* %tmp13018, null
  br i1 %guard23023, label %__else834, label %__fall2836

__fresh881:
  br label %__fall2836

__fall2836:
  %tmp23019 = load i8** %vt_ptr_slot3015
  %tmp33020 = bitcast i8* %tmp23019 to i8** 
  %tmp43021 = load i8** %tmp33020
  store i8* %tmp43021, i8** %vt_ptr_slot3015
  br label %__loop838

__fresh882:
  br label %__then835

__then835:
  %var_slot3016 = alloca %Bb*
  store %Bb* %cast_op3012, %Bb** %var_slot3016
  %lhs_or_call3024 = load i32* %vdecl_slot2950
  %bop3025 = add i32 %lhs_or_call3024, 1
  store i32 %bop3025, i32* %vdecl_slot2950
  br label %__done833

__fresh883:
  br label %__else834

__else834:
  br label %__done833

__done833:
  %lhs_or_call3026 = load %Object** @a532
  %cast_op3027 = bitcast %Object* %lhs_or_call3026 to %B* 
  %cast_op3028 = bitcast %B* %cast_op3027 to i8** 
  %cast_op3029 = bitcast %_B_vtable* @_B_vtable526 to i8* 
  %vt_ptr_slot3030 = alloca i8*
  %tmp03032 = load i8** %cast_op3028
  store i8* %tmp03032, i8** %vt_ptr_slot3030
  br label %__loop844

__loop844:
  %tmp13033 = load i8** %vt_ptr_slot3030
  %guard13037 = icmp eq i8* %tmp13033, %cast_op3029
  br i1 %guard13037, label %__then841, label %__fall1843

__fresh884:
  br label %__fall1843

__fall1843:
  %guard23038 = icmp eq i8* %tmp13033, null
  br i1 %guard23038, label %__else840, label %__fall2842

__fresh885:
  br label %__fall2842

__fall2842:
  %tmp23034 = load i8** %vt_ptr_slot3030
  %tmp33035 = bitcast i8* %tmp23034 to i8** 
  %tmp43036 = load i8** %tmp33035
  store i8* %tmp43036, i8** %vt_ptr_slot3030
  br label %__loop844

__fresh886:
  br label %__then841

__then841:
  %var_slot3031 = alloca %B*
  store %B* %cast_op3027, %B** %var_slot3031
  br label %__done839

__fresh887:
  br label %__else840

__else840:
  %lhs_or_call3039 = load i32* %vdecl_slot2950
  %bop3040 = add i32 %lhs_or_call3039, 1
  store i32 %bop3040, i32* %vdecl_slot2950
  br label %__done839

__done839:
  %lhs_or_call3041 = load %Object** @a532
  %cast_op3042 = bitcast %Object* %lhs_or_call3041 to %Bb* 
  %cast_op3043 = bitcast %Bb* %cast_op3042 to i8** 
  %cast_op3044 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8* 
  %vt_ptr_slot3045 = alloca i8*
  %tmp03047 = load i8** %cast_op3043
  store i8* %tmp03047, i8** %vt_ptr_slot3045
  br label %__loop850

__loop850:
  %tmp13048 = load i8** %vt_ptr_slot3045
  %guard13052 = icmp eq i8* %tmp13048, %cast_op3044
  br i1 %guard13052, label %__then847, label %__fall1849

__fresh888:
  br label %__fall1849

__fall1849:
  %guard23053 = icmp eq i8* %tmp13048, null
  br i1 %guard23053, label %__else846, label %__fall2848

__fresh889:
  br label %__fall2848

__fall2848:
  %tmp23049 = load i8** %vt_ptr_slot3045
  %tmp33050 = bitcast i8* %tmp23049 to i8** 
  %tmp43051 = load i8** %tmp33050
  store i8* %tmp43051, i8** %vt_ptr_slot3045
  br label %__loop850

__fresh890:
  br label %__then847

__then847:
  %var_slot3046 = alloca %Bb*
  store %Bb* %cast_op3042, %Bb** %var_slot3046
  br label %__done845

__fresh891:
  br label %__else846

__else846:
  %lhs_or_call3054 = load i32* %vdecl_slot2950
  %bop3055 = add i32 %lhs_or_call3054, 1
  store i32 %bop3055, i32* %vdecl_slot2950
  br label %__done845

__done845:
  %lhs_or_call3056 = load %Object** @b534
  %cast_op3057 = bitcast %Object* %lhs_or_call3056 to %Bb* 
  %cast_op3058 = bitcast %Bb* %cast_op3057 to i8** 
  %cast_op3059 = bitcast %_Bb_vtable* @_Bb_vtable527 to i8* 
  %vt_ptr_slot3060 = alloca i8*
  %tmp03062 = load i8** %cast_op3058
  store i8* %tmp03062, i8** %vt_ptr_slot3060
  br label %__loop856

__loop856:
  %tmp13063 = load i8** %vt_ptr_slot3060
  %guard13067 = icmp eq i8* %tmp13063, %cast_op3059
  br i1 %guard13067, label %__then853, label %__fall1855

__fresh892:
  br label %__fall1855

__fall1855:
  %guard23068 = icmp eq i8* %tmp13063, null
  br i1 %guard23068, label %__else852, label %__fall2854

__fresh893:
  br label %__fall2854

__fall2854:
  %tmp23064 = load i8** %vt_ptr_slot3060
  %tmp33065 = bitcast i8* %tmp23064 to i8** 
  %tmp43066 = load i8** %tmp33065
  store i8* %tmp43066, i8** %vt_ptr_slot3060
  br label %__loop856

__fresh894:
  br label %__then853

__then853:
  %var_slot3061 = alloca %Bb*
  store %Bb* %cast_op3057, %Bb** %var_slot3061
  br label %__done851

__fresh895:
  br label %__else852

__else852:
  %lhs_or_call3069 = load i32* %vdecl_slot2950
  %bop3070 = add i32 %lhs_or_call3069, 1
  store i32 %bop3070, i32* %vdecl_slot2950
  br label %__done851

__done851:
  %lhs_or_call3071 = load %Object** @bb536
  %cast_op3072 = bitcast %Object* %lhs_or_call3071 to %B* 
  %cast_op3073 = bitcast %B* %cast_op3072 to i8** 
  %cast_op3074 = bitcast %_B_vtable* @_B_vtable526 to i8* 
  %vt_ptr_slot3075 = alloca i8*
  %tmp03077 = load i8** %cast_op3073
  store i8* %tmp03077, i8** %vt_ptr_slot3075
  br label %__loop862

__loop862:
  %tmp13078 = load i8** %vt_ptr_slot3075
  %guard13082 = icmp eq i8* %tmp13078, %cast_op3074
  br i1 %guard13082, label %__then859, label %__fall1861

__fresh896:
  br label %__fall1861

__fall1861:
  %guard23083 = icmp eq i8* %tmp13078, null
  br i1 %guard23083, label %__else858, label %__fall2860

__fresh897:
  br label %__fall2860

__fall2860:
  %tmp23079 = load i8** %vt_ptr_slot3075
  %tmp33080 = bitcast i8* %tmp23079 to i8** 
  %tmp43081 = load i8** %tmp33080
  store i8* %tmp43081, i8** %vt_ptr_slot3075
  br label %__loop862

__fresh898:
  br label %__then859

__then859:
  %var_slot3076 = alloca %B*
  store %B* %cast_op3072, %B** %var_slot3076
  br label %__done857

__fresh899:
  br label %__else858

__else858:
  %lhs_or_call3084 = load i32* %vdecl_slot2950
  %bop3085 = add i32 %lhs_or_call3084, 1
  store i32 %bop3085, i32* %vdecl_slot2950
  br label %__done857

__done857:
  %lhs_or_call3086 = load i32* %vdecl_slot2950
  ret i32 %lhs_or_call3086
}


define void @bb536.init537 (){
__fresh808:
  %mem_ptr2942 = call i32* @oat_malloc ( i32 8 )
  %obj2943 = bitcast i32* %mem_ptr2942 to %Bb* 
  %new_obj2944 = call %Bb* @_Bb_ctor ( %Bb* %obj2943 )
  %cast_op2945 = bitcast %Bb* %new_obj2944 to %Object* 
  store %Object* %cast_op2945, %Object** @bb536
  ret void
}


define void @b534.init535 (){
__fresh807:
  %mem_ptr2938 = call i32* @oat_malloc ( i32 8 )
  %obj2939 = bitcast i32* %mem_ptr2938 to %B* 
  %new_obj2940 = call %B* @_B_ctor ( %B* %obj2939 )
  %cast_op2941 = bitcast %B* %new_obj2940 to %Object* 
  store %Object* %cast_op2941, %Object** @b534
  ret void
}


define void @a532.init533 (){
__fresh806:
  %mem_ptr2934 = call i32* @oat_malloc ( i32 8 )
  %obj2935 = bitcast i32* %mem_ptr2934 to %A* 
  %new_obj2936 = call %A* @_A_ctor ( %A* %obj2935 )
  %cast_op2937 = bitcast %A* %new_obj2936 to %Object* 
  store %Object* %cast_op2937, %Object** @a532
  ret void
}


define %Bb* @_Bb_ctor (%Bb* %_this1){
__fresh805:
  %cast_op2930 = bitcast %Bb* %_this1 to %A* 
  %dummy2931 = call %A* @_A_ctor ( %A* %cast_op2930 )
  %path2932 = getelementptr %Bb* %_this1, i32 0, i32 1
  store i8* @_const_str531, i8** %path2932
  %vt_slot2933 = getelementptr %Bb* %_this1, i32 0, i32 0
  store %_Bb_vtable* @_Bb_vtable527, %_Bb_vtable** %vt_slot2933
  ret %Bb* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh804:
  %cast_op2926 = bitcast %B* %_this1 to %A* 
  %dummy2927 = call %A* @_A_ctor ( %A* %cast_op2926 )
  %path2928 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str530, i8** %path2928
  %vt_slot2929 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable526, %_B_vtable** %vt_slot2929
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh803:
  %cast_op2922 = bitcast %A* %_this1 to %Object* 
  %dummy2923 = call %Object* @_Object_ctor ( %Object* %cast_op2922 )
  %path2924 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str529, i8** %path2924
  %vt_slot2925 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable525, %_A_vtable** %vt_slot2925
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh802:
  %path2920 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2921 = load i8** %path2920
  ret i8* %lhs_or_call2921
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh801:
  %path2918 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str528, i8** %path2918
  %vt_slot2919 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable524, %_Object_vtable** %vt_slot2919
  ret %Object* %_this1
}



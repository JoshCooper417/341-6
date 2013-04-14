%Cow = type { %_Cow_vtable*, i8*, i8* }
%_Cow_vtable = type { %_Animal_vtable*, i8* (%Object*)*, i8* (%Cow*)* }
%Dog = type { %_Dog_vtable*, i8*, i8*, i8* }
%_Dog_vtable = type { %_Animal_vtable*, i8* (%Object*)*, i8* (%Dog*)* }
%Animal = type { %_Animal_vtable*, i8*, i8* }
%_Animal_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Animal*)* }
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
@_const_str696.str. = private unnamed_addr constant [ 19 x i8 ] c "This dog is stray!\00", align 4
@_const_str696 = alias bitcast([ 19 x i8 ]* @_const_str696.str. to i8*)@_const_str695.str. = private unnamed_addr constant [ 6 x i8 ] c "Timmy\00", align 4
@_const_str695 = alias bitcast([ 6 x i8 ]* @_const_str695.str. to i8*)@_const_str694.str. = private unnamed_addr constant [ 22 x i8 ] c "This dog is owned by \00", align 4
@_const_str694 = alias bitcast([ 22 x i8 ]* @_const_str694.str. to i8*)@_const_str693.str. = private unnamed_addr constant [ 12 x i8 ] c "Example Cow\00", align 4
@_const_str693 = alias bitcast([ 12 x i8 ]* @_const_str693.str. to i8*)@_const_str692.str. = private unnamed_addr constant [ 5 x i8 ] c "Spot\00", align 4
@_const_str692 = alias bitcast([ 5 x i8 ]* @_const_str692.str. to i8*)@_const_str691.str. = private unnamed_addr constant [ 4 x i8 ] c "moo\00", align 4
@_const_str691 = alias bitcast([ 4 x i8 ]* @_const_str691.str. to i8*)@_const_str690.str. = private unnamed_addr constant [ 4 x i8 ] c "Cow\00", align 4
@_const_str690 = alias bitcast([ 4 x i8 ]* @_const_str690.str. to i8*)@_const_str689.str. = private unnamed_addr constant [ 4 x i8 ] c "arf\00", align 4
@_const_str689 = alias bitcast([ 4 x i8 ]* @_const_str689.str. to i8*)@_const_str688.str. = private unnamed_addr constant [ 4 x i8 ] c "Dog\00", align 4
@_const_str688 = alias bitcast([ 4 x i8 ]* @_const_str688.str. to i8*)@_const_str687.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str687 = alias bitcast([ 4 x i8 ]* @_const_str687.str. to i8*)@_const_str686.str. = private unnamed_addr constant [ 4 x i8 ] c "???\00", align 4
@_const_str686 = alias bitcast([ 4 x i8 ]* @_const_str686.str. to i8*)@_const_str685.str. = private unnamed_addr constant [ 7 x i8 ] c "Animal\00", align 4
@_const_str685 = alias bitcast([ 7 x i8 ]* @_const_str685.str. to i8*)@_const_str684.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str684 = alias bitcast([ 7 x i8 ]* @_const_str684.str. to i8*)@_Cow_vtable683 = private constant %_Cow_vtable {%_Animal_vtable* @_Animal_vtable681, i8* (%Object*)* @_Object_get_name, i8* (%Cow*)* @_Cow_noise}, align 4
@_Dog_vtable682 = private constant %_Dog_vtable {%_Animal_vtable* @_Animal_vtable681, i8* (%Object*)* @_Object_get_name, i8* (%Dog*)* @_Dog_noise}, align 4
@_Animal_vtable681 = private constant %_Animal_vtable {%_Object_vtable* @_Object_vtable680, i8* (%Object*)* @_Object_get_name, i8* (%Animal*)* @_Animal_noise}, align 4
@_Object_vtable680 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1899:
  ret void
}


define i32 @program (i32 %argc5893, { i32, [ 0 x i8* ] }* %argv5891){
__fresh1892:
  %argc_slot5894 = alloca i32
  store i32 %argc5893, i32* %argc_slot5894
  %argv_slot5892 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5891, { i32, [ 0 x i8* ] }** %argv_slot5892
  %mem_ptr5895 = call i32* @oat_malloc ( i32 16 )
  %obj5896 = bitcast i32* %mem_ptr5895 to %Dog* 
  %new_obj5897 = call %Dog* @_Dog_ctor ( %Dog* %obj5896, i8* @_const_str692 )
  %cast_op5898 = bitcast %Dog* %new_obj5897 to %Animal* 
  %vdecl_slot5899 = alloca %Animal*
  store %Animal* %cast_op5898, %Animal** %vdecl_slot5899
  %mem_ptr5900 = call i32* @oat_malloc ( i32 12 )
  %obj5901 = bitcast i32* %mem_ptr5900 to %Cow* 
  %new_obj5902 = call %Cow* @_Cow_ctor ( %Cow* %obj5901, i8* @_const_str693 )
  %cast_op5903 = bitcast %Cow* %new_obj5902 to %Animal* 
  %vdecl_slot5904 = alloca %Animal*
  store %Animal* %cast_op5903, %Animal** %vdecl_slot5904
  %lhs_or_call5905 = load %Animal** %vdecl_slot5899
  %vtmp5907 = getelementptr %Animal* %lhs_or_call5905, i32 0, i32 0
  %vtable5906 = load %_Animal_vtable** %vtmp5907
  %fptmp5908 = getelementptr %_Animal_vtable* %vtable5906, i32 0, i32 2
  %method5909 = load i8* (%Animal*)** %fptmp5908
  %ret5910 = call i8* %method5909 ( %Animal* %lhs_or_call5905 )
  call void @print_string( i8* %ret5910 )
  %lhs_or_call5911 = load %Animal** %vdecl_slot5904
  %vtmp5913 = getelementptr %Animal* %lhs_or_call5911, i32 0, i32 0
  %vtable5912 = load %_Animal_vtable** %vtmp5913
  %fptmp5914 = getelementptr %_Animal_vtable* %vtable5912, i32 0, i32 2
  %method5915 = load i8* (%Animal*)** %fptmp5914
  %ret5916 = call i8* %method5915 ( %Animal* %lhs_or_call5911 )
  call void @print_string( i8* %ret5916 )
  %lhs_or_call5917 = load %Animal** %vdecl_slot5899
  %cast_op5918 = bitcast %Animal* %lhs_or_call5917 to %Dog* 
  %cast_op5919 = bitcast %Dog* %cast_op5918 to i8** 
  %cast_op5920 = bitcast %_Dog_vtable* @_Dog_vtable682 to i8* 
  %vt_ptr_slot5921 = alloca i8*
  %tmp05923 = load i8** %cast_op5919
  store i8* %tmp05923, i8** %vt_ptr_slot5921
  br label %__loop1888

__loop1888:
  %tmp15924 = load i8** %vt_ptr_slot5921
  %guard15928 = icmp eq i8* %tmp15924, %cast_op5920
  br i1 %guard15928, label %__then1885, label %__fall11887

__fresh1893:
  br label %__fall11887

__fall11887:
  %guard25929 = icmp eq i8* %tmp15924, null
  br i1 %guard25929, label %__else1884, label %__fall21886

__fresh1894:
  br label %__fall21886

__fall21886:
  %tmp25925 = load i8** %vt_ptr_slot5921
  %tmp35926 = bitcast i8* %tmp25925 to i8** 
  %tmp45927 = load i8** %tmp35926
  store i8* %tmp45927, i8** %vt_ptr_slot5921
  br label %__loop1888

__fresh1895:
  br label %__then1885

__then1885:
  %var_slot5922 = alloca %Dog*
  store %Dog* %cast_op5918, %Dog** %var_slot5922
  %lhs_or_call5930 = load %Dog** %var_slot5922
  %path5931 = getelementptr %Dog* %lhs_or_call5930, i32 0, i32 3
  %lhs_or_call5932 = load i8** %path5931
  %ifnull_slot5933 = alloca i8*
  store i8* %lhs_or_call5932, i8** %ifnull_slot5933
  %ifnull_guard5934 = icmp ne i8* %lhs_or_call5932, null
  br i1 %ifnull_guard5934, label %__then1891, label %__else1890

__fresh1896:
  br label %__then1891

__then1891:
  call void @print_string( i8* @_const_str694 )
  %lhs_or_call5935 = load i8** %ifnull_slot5933
  call void @print_string( i8* %lhs_or_call5935 )
  br label %__merge1889

__fresh1897:
  br label %__else1890

__else1890:
  %lhs_or_call5936 = load %Dog** %var_slot5922
  %path5937 = getelementptr %Dog* %lhs_or_call5936, i32 0, i32 3
  store i8* @_const_str695, i8** %path5937
  call void @print_string( i8* @_const_str696 )
  br label %__merge1889

__merge1889:
  br label %__done1883

__fresh1898:
  br label %__else1884

__else1884:
  br label %__done1883

__done1883:
  ret i32 0
}


define i8* @_Cow_noise (%Cow* %_this1){
__fresh1882:
  ret i8* @_const_str691
}


define %Cow* @_Cow_ctor (%Cow* %_this1, i8* %name5884){
__fresh1881:
  %name_slot5885 = alloca i8*
  store i8* %name5884, i8** %name_slot5885
  %lhs_or_call5886 = load i8** %name_slot5885
  %cast_op5887 = bitcast %Cow* %_this1 to %Animal* 
  %dummy5888 = call %Animal* @_Animal_ctor ( %Animal* %cast_op5887, i8* %lhs_or_call5886 )
  %path5889 = getelementptr %Cow* %_this1, i32 0, i32 1
  store i8* @_const_str690, i8** %path5889
  %vt_slot5890 = getelementptr %Cow* %_this1, i32 0, i32 0
  store %_Cow_vtable* @_Cow_vtable683, %_Cow_vtable** %vt_slot5890
  ret %Cow* %_this1
}


define i8* @_Dog_noise (%Dog* %_this1){
__fresh1880:
  ret i8* @_const_str689
}


define %Dog* @_Dog_ctor (%Dog* %_this1, i8* %name5877){
__fresh1879:
  %name_slot5878 = alloca i8*
  store i8* %name5877, i8** %name_slot5878
  %lhs_or_call5879 = load i8** %name_slot5878
  %cast_op5880 = bitcast %Dog* %_this1 to %Animal* 
  %dummy5881 = call %Animal* @_Animal_ctor ( %Animal* %cast_op5880, i8* %lhs_or_call5879 )
  %path5882 = getelementptr %Dog* %_this1, i32 0, i32 1
  store i8* @_const_str688, i8** %path5882
  %vt_slot5883 = getelementptr %Dog* %_this1, i32 0, i32 0
  store %_Dog_vtable* @_Dog_vtable682, %_Dog_vtable** %vt_slot5883
  ret %Dog* %_this1
}


define i8* @_Animal_noise (%Animal* %_this1){
__fresh1878:
  call void @print_string( i8* @_const_str686 )
  call void @oat_abort( i32 -1 )
  ret i8* @_const_str687
}


define %Animal* @_Animal_ctor (%Animal* %_this1, i8* %name5869){
__fresh1877:
  %name_slot5870 = alloca i8*
  store i8* %name5869, i8** %name_slot5870
  %cast_op5871 = bitcast %Animal* %_this1 to %Object* 
  %dummy5872 = call %Object* @_Object_ctor ( %Object* %cast_op5871 )
  %path5873 = getelementptr %Animal* %_this1, i32 0, i32 1
  store i8* @_const_str685, i8** %path5873
  %path5874 = getelementptr %Animal* %_this1, i32 0, i32 2
  %lhs_or_call5875 = load i8** %name_slot5870
  store i8* %lhs_or_call5875, i8** %path5874
  %vt_slot5876 = getelementptr %Animal* %_this1, i32 0, i32 0
  store %_Animal_vtable* @_Animal_vtable681, %_Animal_vtable** %vt_slot5876
  ret %Animal* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1876:
  %path5867 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5868 = load i8** %path5867
  ret i8* %lhs_or_call5868
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1875:
  %path5865 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str684, i8** %path5865
  %vt_slot5866 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable680, %_Object_vtable** %vt_slot5866
  ret %Object* %_this1
}



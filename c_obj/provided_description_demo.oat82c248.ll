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


define i32 @program (i32 %argc5884, { i32, [ 0 x i8* ] }* %argv5882){
__fresh1892:
  %argc_slot5885 = alloca i32
  store i32 %argc5884, i32* %argc_slot5885
  %argv_slot5883 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5882, { i32, [ 0 x i8* ] }** %argv_slot5883
  %mem_ptr5886 = call i32* @oat_malloc ( i32 16 )
  %obj5887 = bitcast i32* %mem_ptr5886 to %Dog* 
  %new_obj5888 = call %Dog* @_Dog_ctor ( %Dog* %obj5887, i8* @_const_str692 )
  %cast_op5889 = bitcast %Dog* %new_obj5888 to %Animal* 
  %vdecl_slot5890 = alloca %Animal*
  store %Animal* %cast_op5889, %Animal** %vdecl_slot5890
  %mem_ptr5891 = call i32* @oat_malloc ( i32 12 )
  %obj5892 = bitcast i32* %mem_ptr5891 to %Cow* 
  %new_obj5893 = call %Cow* @_Cow_ctor ( %Cow* %obj5892, i8* @_const_str693 )
  %cast_op5894 = bitcast %Cow* %new_obj5893 to %Animal* 
  %vdecl_slot5895 = alloca %Animal*
  store %Animal* %cast_op5894, %Animal** %vdecl_slot5895
  %lhs_or_call5896 = load %Animal** %vdecl_slot5890
  %vtmp5898 = getelementptr %Animal* %lhs_or_call5896, i32 0, i32 0
  %vtable5897 = load %_Animal_vtable** %vtmp5898
  %fptmp5899 = getelementptr %_Animal_vtable* %vtable5897, i32 0, i32 2
  %method5900 = load i8* (%Animal*)** %fptmp5899
  %ret5901 = call i8* %method5900 ( %Animal* %lhs_or_call5896 )
  call void @print_string( i8* %ret5901 )
  %lhs_or_call5902 = load %Animal** %vdecl_slot5895
  %vtmp5904 = getelementptr %Animal* %lhs_or_call5902, i32 0, i32 0
  %vtable5903 = load %_Animal_vtable** %vtmp5904
  %fptmp5905 = getelementptr %_Animal_vtable* %vtable5903, i32 0, i32 2
  %method5906 = load i8* (%Animal*)** %fptmp5905
  %ret5907 = call i8* %method5906 ( %Animal* %lhs_or_call5902 )
  call void @print_string( i8* %ret5907 )
  %lhs_or_call5908 = load %Animal** %vdecl_slot5890
  %cast_op5909 = bitcast %Animal* %lhs_or_call5908 to %Dog* 
  %cast_op5910 = bitcast %Dog* %cast_op5909 to i8** 
  %cast_op5911 = bitcast %_Dog_vtable* @_Dog_vtable682 to i8* 
  %vt_ptr_slot5912 = alloca i8*
  %tmp05914 = load i8** %cast_op5910
  store i8* %tmp05914, i8** %vt_ptr_slot5912
  br label %__loop1888

__loop1888:
  %tmp15915 = load i8** %vt_ptr_slot5912
  %guard15919 = icmp eq i8* %tmp15915, %cast_op5911
  br i1 %guard15919, label %__then1885, label %__fall11887

__fresh1893:
  br label %__fall11887

__fall11887:
  %guard25920 = icmp eq i8* %tmp15915, null
  br i1 %guard25920, label %__else1884, label %__fall21886

__fresh1894:
  br label %__fall21886

__fall21886:
  %tmp25916 = load i8** %vt_ptr_slot5912
  %tmp35917 = bitcast i8* %tmp25916 to i8** 
  %tmp45918 = load i8** %tmp35917
  store i8* %tmp45918, i8** %vt_ptr_slot5912
  br label %__loop1888

__fresh1895:
  br label %__then1885

__then1885:
  %var_slot5913 = alloca %Dog*
  store %Dog* %cast_op5909, %Dog** %var_slot5913
  %lhs_or_call5921 = load %Dog** %var_slot5913
  %path5922 = getelementptr %Dog* %lhs_or_call5921, i32 0, i32 3
  %lhs_or_call5923 = load i8** %path5922
  %ifnull_slot5924 = alloca i8*
  store i8* %lhs_or_call5923, i8** %ifnull_slot5924
  %ifnull_guard5925 = icmp ne i8* %lhs_or_call5923, null
  br i1 %ifnull_guard5925, label %__then1891, label %__else1890

__fresh1896:
  br label %__then1891

__then1891:
  call void @print_string( i8* @_const_str694 )
  %lhs_or_call5926 = load i8** %ifnull_slot5924
  call void @print_string( i8* %lhs_or_call5926 )
  br label %__merge1889

__fresh1897:
  br label %__else1890

__else1890:
  %lhs_or_call5927 = load %Dog** %var_slot5913
  %path5928 = getelementptr %Dog* %lhs_or_call5927, i32 0, i32 3
  store i8* @_const_str695, i8** %path5928
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


define %Cow* @_Cow_ctor (%Cow* %_this1, i8* %name5875){
__fresh1881:
  %name_slot5876 = alloca i8*
  store i8* %name5875, i8** %name_slot5876
  %lhs_or_call5877 = load i8** %name_slot5876
  %cast_op5878 = bitcast %Cow* %_this1 to %Animal* 
  %dummy5879 = call %Animal* @_Animal_ctor ( %Animal* %cast_op5878, i8* %lhs_or_call5877 )
  %path5880 = getelementptr %Cow* %_this1, i32 0, i32 1
  store i8* @_const_str690, i8** %path5880
  %vt_slot5881 = getelementptr %Cow* %_this1, i32 0, i32 0
  store %_Cow_vtable* @_Cow_vtable683, %_Cow_vtable** %vt_slot5881
  ret %Cow* %_this1
}


define i8* @_Dog_noise (%Dog* %_this1){
__fresh1880:
  ret i8* @_const_str689
}


define %Dog* @_Dog_ctor (%Dog* %_this1, i8* %name5868){
__fresh1879:
  %name_slot5869 = alloca i8*
  store i8* %name5868, i8** %name_slot5869
  %lhs_or_call5870 = load i8** %name_slot5869
  %cast_op5871 = bitcast %Dog* %_this1 to %Animal* 
  %dummy5872 = call %Animal* @_Animal_ctor ( %Animal* %cast_op5871, i8* %lhs_or_call5870 )
  %path5873 = getelementptr %Dog* %_this1, i32 0, i32 1
  store i8* @_const_str688, i8** %path5873
  %vt_slot5874 = getelementptr %Dog* %_this1, i32 0, i32 0
  store %_Dog_vtable* @_Dog_vtable682, %_Dog_vtable** %vt_slot5874
  ret %Dog* %_this1
}


define i8* @_Animal_noise (%Animal* %_this1){
__fresh1878:
  call void @print_string( i8* @_const_str686 )
  call void @oat_abort( i32 -1 )
  ret i8* @_const_str687
}


define %Animal* @_Animal_ctor (%Animal* %_this1, i8* %name5860){
__fresh1877:
  %name_slot5861 = alloca i8*
  store i8* %name5860, i8** %name_slot5861
  %cast_op5862 = bitcast %Animal* %_this1 to %Object* 
  %dummy5863 = call %Object* @_Object_ctor ( %Object* %cast_op5862 )
  %path5864 = getelementptr %Animal* %_this1, i32 0, i32 1
  store i8* @_const_str685, i8** %path5864
  %path5865 = getelementptr %Animal* %_this1, i32 0, i32 2
  %lhs_or_call5866 = load i8** %name_slot5861
  store i8* %lhs_or_call5866, i8** %path5865
  %vt_slot5867 = getelementptr %Animal* %_this1, i32 0, i32 0
  store %_Animal_vtable* @_Animal_vtable681, %_Animal_vtable** %vt_slot5867
  ret %Animal* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1876:
  %path5858 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5859 = load i8** %path5858
  ret i8* %lhs_or_call5859
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1875:
  %path5856 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str684, i8** %path5856
  %vt_slot5857 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable680, %_Object_vtable** %vt_slot5857
  ret %Object* %_this1
}



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
@_const_str2.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str2 = alias bitcast([ 7 x i8 ]* @_const_str2.str. to i8*)@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh8:
  ret void
}


define i32 @program (i32 %argc8, { i32, [ 0 x i8* ] }* %argv6){
__fresh5:
  %argc_slot9 = alloca i32
  store i32 %argc8, i32* %argc_slot9
  %argv_slot7 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6, { i32, [ 0 x i8* ] }** %argv_slot7
  %vdecl_slot10 = alloca i1
  store i1 1, i1* %vdecl_slot10
  %vdecl_slot11 = alloca i32
  store i32 5, i32* %vdecl_slot11
  %lhs_or_call12 = load i1* %vdecl_slot10
  %lhs_or_call13 = load i1* %vdecl_slot10
  %bop14 = and i1 %lhs_or_call12, %lhs_or_call13
  %lhs_or_call15 = load i1* %vdecl_slot10
  %bop16 = and i1 %bop14, %lhs_or_call15
  %lhs_or_call17 = load i1* %vdecl_slot10
  %bop18 = and i1 %bop16, %lhs_or_call17
  %lhs_or_call19 = load i1* %vdecl_slot10
  %bop20 = and i1 %bop18, %lhs_or_call19
  %lhs_or_call21 = load i1* %vdecl_slot10
  %bop22 = and i1 %bop20, %lhs_or_call21
  %lhs_or_call23 = load i1* %vdecl_slot10
  %bop24 = and i1 %bop22, %lhs_or_call23
  %lhs_or_call25 = load i1* %vdecl_slot10
  %bop26 = and i1 %bop24, %lhs_or_call25
  %lhs_or_call27 = load i1* %vdecl_slot10
  %bop28 = and i1 %bop26, %lhs_or_call27
  %lhs_or_call29 = load i1* %vdecl_slot10
  %bop30 = and i1 %bop28, %lhs_or_call29
  %lhs_or_call31 = load i1* %vdecl_slot10
  %bop32 = and i1 %bop30, %lhs_or_call31
  %lhs_or_call33 = load i1* %vdecl_slot10
  %bop34 = and i1 %bop32, %lhs_or_call33
  %lhs_or_call35 = load i1* %vdecl_slot10
  %bop36 = and i1 %bop34, %lhs_or_call35
  %lhs_or_call37 = load i1* %vdecl_slot10
  %bop38 = and i1 %bop36, %lhs_or_call37
  %lhs_or_call39 = load i1* %vdecl_slot10
  %bop40 = and i1 %bop38, %lhs_or_call39
  %lhs_or_call41 = load i1* %vdecl_slot10
  %bop42 = and i1 %bop40, %lhs_or_call41
  %lhs_or_call43 = load i1* %vdecl_slot10
  %bop44 = and i1 %bop42, %lhs_or_call43
  %lhs_or_call45 = load i1* %vdecl_slot10
  %bop46 = and i1 %bop44, %lhs_or_call45
  %lhs_or_call47 = load i1* %vdecl_slot10
  %bop48 = and i1 %bop46, %lhs_or_call47
  %lhs_or_call49 = load i1* %vdecl_slot10
  %bop50 = and i1 %bop48, %lhs_or_call49
  %lhs_or_call51 = load i1* %vdecl_slot10
  %bop52 = and i1 %bop50, %lhs_or_call51
  %lhs_or_call53 = load i1* %vdecl_slot10
  %bop54 = and i1 %bop52, %lhs_or_call53
  %lhs_or_call55 = load i1* %vdecl_slot10
  %bop56 = and i1 %bop54, %lhs_or_call55
  %lhs_or_call57 = load i1* %vdecl_slot10
  %bop58 = and i1 %bop56, %lhs_or_call57
  %lhs_or_call59 = load i1* %vdecl_slot10
  %bop60 = and i1 %bop58, %lhs_or_call59
  %lhs_or_call61 = load i1* %vdecl_slot10
  %bop62 = and i1 %bop60, %lhs_or_call61
  %lhs_or_call63 = load i1* %vdecl_slot10
  %bop64 = and i1 %bop62, %lhs_or_call63
  %lhs_or_call65 = load i1* %vdecl_slot10
  %bop66 = and i1 %bop64, %lhs_or_call65
  %lhs_or_call67 = load i1* %vdecl_slot10
  %bop68 = and i1 %bop66, %lhs_or_call67
  %lhs_or_call69 = load i1* %vdecl_slot10
  %bop70 = and i1 %bop68, %lhs_or_call69
  %lhs_or_call71 = load i1* %vdecl_slot10
  %bop72 = and i1 %bop70, %lhs_or_call71
  %lhs_or_call73 = load i1* %vdecl_slot10
  %bop74 = and i1 %bop72, %lhs_or_call73
  %lhs_or_call75 = load i1* %vdecl_slot10
  %bop76 = and i1 %bop74, %lhs_or_call75
  %lhs_or_call77 = load i1* %vdecl_slot10
  %bop78 = and i1 %bop76, %lhs_or_call77
  %lhs_or_call79 = load i1* %vdecl_slot10
  %bop80 = and i1 %bop78, %lhs_or_call79
  %lhs_or_call81 = load i1* %vdecl_slot10
  %bop82 = and i1 %bop80, %lhs_or_call81
  %lhs_or_call83 = load i1* %vdecl_slot10
  %bop84 = and i1 %bop82, %lhs_or_call83
  %lhs_or_call85 = load i1* %vdecl_slot10
  %bop86 = and i1 %bop84, %lhs_or_call85
  %lhs_or_call87 = load i1* %vdecl_slot10
  %bop88 = and i1 %bop86, %lhs_or_call87
  br i1 %bop88, label %__then4, label %__else3

__fresh6:
  br label %__then4

__then4:
  store i32 7, i32* %vdecl_slot11
  br label %__merge2

__fresh7:
  br label %__else3

__else3:
  br label %__merge2

__merge2:
  ret i32 4
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %path4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %path4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %path2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str2, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}



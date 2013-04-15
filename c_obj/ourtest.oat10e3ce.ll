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
__fresh3:
  ret void
}


define i32 @program (i32 %argc8, { i32, [ 0 x i8* ] }* %argv6){
__fresh2:
  %argc_slot9 = alloca i32
  store i32 %argc8, i32* %argc_slot9
  %argv_slot7 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6, { i32, [ 0 x i8* ] }** %argv_slot7
  %bop10 = add i32 1, 1
  %bop11 = add i32 %bop10, 1
  %bop12 = add i32 %bop11, 1
  %bop13 = add i32 %bop12, 1
  %bop14 = add i32 %bop13, 1
  %bop15 = add i32 %bop14, 1
  %bop16 = add i32 %bop15, 1
  %bop17 = add i32 %bop16, 1
  %bop18 = add i32 %bop17, 1
  %bop19 = add i32 %bop18, 1
  %bop20 = add i32 %bop19, 1
  %bop21 = add i32 %bop20, 1
  %bop22 = add i32 %bop21, 1
  %bop23 = add i32 %bop22, 1
  %bop24 = add i32 %bop23, 1
  %bop25 = add i32 %bop24, 1
  %bop26 = add i32 %bop25, 1
  %bop27 = add i32 %bop26, 1
  %bop28 = add i32 %bop27, 1
  %bop29 = add i32 %bop28, 1
  %bop30 = add i32 %bop29, 1
  %bop31 = add i32 %bop30, 1
  %bop32 = add i32 %bop31, 1
  %bop33 = add i32 %bop32, 1
  %bop34 = add i32 %bop33, 1
  %bop35 = add i32 %bop34, 1
  %bop36 = add i32 %bop35, 1
  %bop37 = add i32 %bop36, 1
  %bop38 = add i32 %bop37, 1
  %bop39 = add i32 %bop38, 1
  %bop40 = add i32 %bop39, 1
  %bop41 = add i32 %bop40, 1
  %bop42 = add i32 %bop41, 1
  %bop43 = add i32 %bop42, 1
  %bop44 = add i32 %bop43, 1
  %bop45 = add i32 %bop44, 1
  %bop46 = add i32 %bop45, 1
  %bop47 = add i32 %bop46, 1
  %bop48 = add i32 %bop47, 1
  %bop49 = add i32 %bop48, 1
  %bop50 = add i32 %bop49, 1
  %bop51 = add i32 %bop50, 1
  %vdecl_slot52 = alloca i32
  store i32 %bop51, i32* %vdecl_slot52
  %lhs_or_call53 = load i32* %vdecl_slot52
  %lhs_or_call54 = load i32* %vdecl_slot52
  %bop55 = add i32 %lhs_or_call53, %lhs_or_call54
  %lhs_or_call56 = load i32* %vdecl_slot52
  %bop57 = add i32 %bop55, %lhs_or_call56
  %lhs_or_call58 = load i32* %vdecl_slot52
  %bop59 = add i32 %bop57, %lhs_or_call58
  %lhs_or_call60 = load i32* %vdecl_slot52
  %bop61 = add i32 %bop59, %lhs_or_call60
  %lhs_or_call62 = load i32* %vdecl_slot52
  %bop63 = add i32 %bop61, %lhs_or_call62
  %lhs_or_call64 = load i32* %vdecl_slot52
  %bop65 = add i32 %bop63, %lhs_or_call64
  %lhs_or_call66 = load i32* %vdecl_slot52
  %bop67 = add i32 %bop65, %lhs_or_call66
  %lhs_or_call68 = load i32* %vdecl_slot52
  %bop69 = add i32 %bop67, %lhs_or_call68
  %lhs_or_call70 = load i32* %vdecl_slot52
  %bop71 = add i32 %bop69, %lhs_or_call70
  %lhs_or_call72 = load i32* %vdecl_slot52
  %bop73 = add i32 %bop71, %lhs_or_call72
  %lhs_or_call74 = load i32* %vdecl_slot52
  %bop75 = add i32 %bop73, %lhs_or_call74
  %lhs_or_call76 = load i32* %vdecl_slot52
  %bop77 = add i32 %bop75, %lhs_or_call76
  %lhs_or_call78 = load i32* %vdecl_slot52
  %bop79 = add i32 %bop77, %lhs_or_call78
  %lhs_or_call80 = load i32* %vdecl_slot52
  %bop81 = add i32 %bop79, %lhs_or_call80
  %lhs_or_call82 = load i32* %vdecl_slot52
  %bop83 = add i32 %bop81, %lhs_or_call82
  %lhs_or_call84 = load i32* %vdecl_slot52
  %bop85 = add i32 %bop83, %lhs_or_call84
  %lhs_or_call86 = load i32* %vdecl_slot52
  %bop87 = add i32 %bop85, %lhs_or_call86
  %lhs_or_call88 = load i32* %vdecl_slot52
  %bop89 = add i32 %bop87, %lhs_or_call88
  %lhs_or_call90 = load i32* %vdecl_slot52
  %bop91 = add i32 %bop89, %lhs_or_call90
  %lhs_or_call92 = load i32* %vdecl_slot52
  %bop93 = add i32 %bop91, %lhs_or_call92
  %lhs_or_call94 = load i32* %vdecl_slot52
  %bop95 = add i32 %bop93, %lhs_or_call94
  %lhs_or_call96 = load i32* %vdecl_slot52
  %bop97 = add i32 %bop95, %lhs_or_call96
  %lhs_or_call98 = load i32* %vdecl_slot52
  %bop99 = add i32 %bop97, %lhs_or_call98
  %lhs_or_call100 = load i32* %vdecl_slot52
  %bop101 = add i32 %bop99, %lhs_or_call100
  %lhs_or_call102 = load i32* %vdecl_slot52
  %bop103 = add i32 %bop101, %lhs_or_call102
  %lhs_or_call104 = load i32* %vdecl_slot52
  %bop105 = add i32 %bop103, %lhs_or_call104
  %lhs_or_call106 = load i32* %vdecl_slot52
  %bop107 = add i32 %bop105, %lhs_or_call106
  %lhs_or_call108 = load i32* %vdecl_slot52
  %bop109 = add i32 %bop107, %lhs_or_call108
  %lhs_or_call110 = load i32* %vdecl_slot52
  %bop111 = add i32 %bop109, %lhs_or_call110
  %lhs_or_call112 = load i32* %vdecl_slot52
  %bop113 = add i32 %bop111, %lhs_or_call112
  %lhs_or_call114 = load i32* %vdecl_slot52
  %bop115 = add i32 %bop113, %lhs_or_call114
  %lhs_or_call116 = load i32* %vdecl_slot52
  %bop117 = add i32 %bop115, %lhs_or_call116
  %lhs_or_call118 = load i32* %vdecl_slot52
  %bop119 = add i32 %bop117, %lhs_or_call118
  %lhs_or_call120 = load i32* %vdecl_slot52
  %bop121 = add i32 %bop119, %lhs_or_call120
  %lhs_or_call122 = load i32* %vdecl_slot52
  %bop123 = add i32 %bop121, %lhs_or_call122
  %lhs_or_call124 = load i32* %vdecl_slot52
  %bop125 = add i32 %bop123, %lhs_or_call124
  %lhs_or_call126 = load i32* %vdecl_slot52
  %bop127 = add i32 %bop125, %lhs_or_call126
  %lhs_or_call128 = load i32* %vdecl_slot52
  %bop129 = add i32 %bop127, %lhs_or_call128
  %lhs_or_call130 = load i32* %vdecl_slot52
  %bop131 = add i32 %bop129, %lhs_or_call130
  %vdecl_slot132 = alloca i32
  store i32 %bop131, i32* %vdecl_slot132
  %lhs_or_call133 = load i32* %vdecl_slot132
  %lhs_or_call134 = load i32* %vdecl_slot132
  %bop135 = add i32 %lhs_or_call133, %lhs_or_call134
  %vdecl_slot136 = alloca i32
  store i32 %bop135, i32* %vdecl_slot136
  %lhs_or_call137 = load i32* %vdecl_slot136
  %lhs_or_call138 = load i32* %vdecl_slot136
  %bop139 = add i32 %lhs_or_call137, %lhs_or_call138
  %lhs_or_call140 = load i32* %vdecl_slot136
  %bop141 = add i32 %bop139, %lhs_or_call140
  ret i32 %bop141
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



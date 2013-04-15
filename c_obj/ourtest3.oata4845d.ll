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
  %vdecl_slot10 = alloca i32
  store i32 1, i32* %vdecl_slot10
  br i1 0, label %__then4, label %__else3

__fresh6:
  br label %__then4

__then4:
  %bop11 = add i32 1, 1
  store i32 %bop11, i32* %vdecl_slot10
  %bop12 = add i32 1, 1
  store i32 %bop12, i32* %vdecl_slot10
  %bop13 = add i32 1, 1
  store i32 %bop13, i32* %vdecl_slot10
  %bop14 = add i32 1, 1
  store i32 %bop14, i32* %vdecl_slot10
  %bop15 = add i32 1, 1
  store i32 %bop15, i32* %vdecl_slot10
  %bop16 = add i32 1, 1
  store i32 %bop16, i32* %vdecl_slot10
  %bop17 = add i32 1, 1
  store i32 %bop17, i32* %vdecl_slot10
  %bop18 = add i32 1, 1
  store i32 %bop18, i32* %vdecl_slot10
  %bop19 = add i32 1, 1
  store i32 %bop19, i32* %vdecl_slot10
  %bop20 = add i32 1, 1
  store i32 %bop20, i32* %vdecl_slot10
  %bop21 = add i32 1, 1
  store i32 %bop21, i32* %vdecl_slot10
  %bop22 = add i32 1, 1
  store i32 %bop22, i32* %vdecl_slot10
  %bop23 = add i32 1, 1
  store i32 %bop23, i32* %vdecl_slot10
  %bop24 = add i32 1, 1
  store i32 %bop24, i32* %vdecl_slot10
  %bop25 = add i32 1, 1
  store i32 %bop25, i32* %vdecl_slot10
  %bop26 = add i32 1, 1
  store i32 %bop26, i32* %vdecl_slot10
  %bop27 = add i32 1, 1
  store i32 %bop27, i32* %vdecl_slot10
  %bop28 = add i32 1, 1
  store i32 %bop28, i32* %vdecl_slot10
  %bop29 = add i32 1, 1
  store i32 %bop29, i32* %vdecl_slot10
  %bop30 = add i32 1, 1
  store i32 %bop30, i32* %vdecl_slot10
  %bop31 = add i32 1, 1
  store i32 %bop31, i32* %vdecl_slot10
  %bop32 = add i32 1, 1
  store i32 %bop32, i32* %vdecl_slot10
  %bop33 = add i32 1, 1
  store i32 %bop33, i32* %vdecl_slot10
  %bop34 = add i32 1, 1
  store i32 %bop34, i32* %vdecl_slot10
  %bop35 = add i32 1, 1
  store i32 %bop35, i32* %vdecl_slot10
  %bop36 = add i32 1, 1
  store i32 %bop36, i32* %vdecl_slot10
  %bop37 = add i32 1, 1
  store i32 %bop37, i32* %vdecl_slot10
  %bop38 = add i32 1, 1
  store i32 %bop38, i32* %vdecl_slot10
  %bop39 = add i32 1, 1
  store i32 %bop39, i32* %vdecl_slot10
  %bop40 = add i32 1, 1
  store i32 %bop40, i32* %vdecl_slot10
  %bop41 = add i32 1, 1
  store i32 %bop41, i32* %vdecl_slot10
  %bop42 = add i32 1, 1
  store i32 %bop42, i32* %vdecl_slot10
  %bop43 = add i32 1, 1
  store i32 %bop43, i32* %vdecl_slot10
  %bop44 = add i32 1, 1
  store i32 %bop44, i32* %vdecl_slot10
  %bop45 = add i32 1, 1
  store i32 %bop45, i32* %vdecl_slot10
  %bop46 = add i32 1, 1
  store i32 %bop46, i32* %vdecl_slot10
  %bop47 = add i32 1, 1
  store i32 %bop47, i32* %vdecl_slot10
  %bop48 = add i32 1, 1
  store i32 %bop48, i32* %vdecl_slot10
  %bop49 = add i32 1, 1
  store i32 %bop49, i32* %vdecl_slot10
  %bop50 = add i32 1, 1
  store i32 %bop50, i32* %vdecl_slot10
  %bop51 = add i32 1, 1
  store i32 %bop51, i32* %vdecl_slot10
  %bop52 = add i32 1, 1
  store i32 %bop52, i32* %vdecl_slot10
  %bop53 = add i32 1, 1
  store i32 %bop53, i32* %vdecl_slot10
  %bop54 = add i32 1, 1
  store i32 %bop54, i32* %vdecl_slot10
  %bop55 = add i32 1, 1
  store i32 %bop55, i32* %vdecl_slot10
  %bop56 = add i32 1, 1
  store i32 %bop56, i32* %vdecl_slot10
  %bop57 = add i32 1, 1
  store i32 %bop57, i32* %vdecl_slot10
  %bop58 = add i32 1, 1
  store i32 %bop58, i32* %vdecl_slot10
  %bop59 = add i32 1, 1
  store i32 %bop59, i32* %vdecl_slot10
  %bop60 = add i32 1, 1
  store i32 %bop60, i32* %vdecl_slot10
  %bop61 = add i32 1, 1
  store i32 %bop61, i32* %vdecl_slot10
  %bop62 = add i32 1, 1
  store i32 %bop62, i32* %vdecl_slot10
  %bop63 = add i32 1, 1
  store i32 %bop63, i32* %vdecl_slot10
  %bop64 = add i32 1, 1
  store i32 %bop64, i32* %vdecl_slot10
  %bop65 = add i32 1, 1
  store i32 %bop65, i32* %vdecl_slot10
  %bop66 = add i32 1, 1
  store i32 %bop66, i32* %vdecl_slot10
  %bop67 = add i32 1, 1
  store i32 %bop67, i32* %vdecl_slot10
  %bop68 = add i32 1, 1
  store i32 %bop68, i32* %vdecl_slot10
  %bop69 = add i32 1, 1
  store i32 %bop69, i32* %vdecl_slot10
  %bop70 = add i32 1, 1
  store i32 %bop70, i32* %vdecl_slot10
  %bop71 = add i32 1, 1
  store i32 %bop71, i32* %vdecl_slot10
  %bop72 = add i32 1, 1
  store i32 %bop72, i32* %vdecl_slot10
  %bop73 = add i32 1, 1
  store i32 %bop73, i32* %vdecl_slot10
  %bop74 = add i32 1, 1
  store i32 %bop74, i32* %vdecl_slot10
  %bop75 = add i32 1, 1
  store i32 %bop75, i32* %vdecl_slot10
  %bop76 = add i32 1, 1
  store i32 %bop76, i32* %vdecl_slot10
  %bop77 = add i32 1, 1
  store i32 %bop77, i32* %vdecl_slot10
  %bop78 = add i32 1, 1
  store i32 %bop78, i32* %vdecl_slot10
  %bop79 = add i32 1, 1
  store i32 %bop79, i32* %vdecl_slot10
  %bop80 = add i32 1, 1
  store i32 %bop80, i32* %vdecl_slot10
  %bop81 = add i32 1, 1
  store i32 %bop81, i32* %vdecl_slot10
  %bop82 = add i32 1, 1
  store i32 %bop82, i32* %vdecl_slot10
  %bop83 = add i32 1, 1
  store i32 %bop83, i32* %vdecl_slot10
  %bop84 = add i32 1, 1
  store i32 %bop84, i32* %vdecl_slot10
  %bop85 = add i32 1, 1
  store i32 %bop85, i32* %vdecl_slot10
  %bop86 = add i32 1, 1
  store i32 %bop86, i32* %vdecl_slot10
  %bop87 = add i32 1, 1
  store i32 %bop87, i32* %vdecl_slot10
  %bop88 = add i32 1, 1
  store i32 %bop88, i32* %vdecl_slot10
  %bop89 = add i32 1, 1
  store i32 %bop89, i32* %vdecl_slot10
  %bop90 = add i32 1, 1
  store i32 %bop90, i32* %vdecl_slot10
  %bop91 = add i32 1, 1
  store i32 %bop91, i32* %vdecl_slot10
  %bop92 = add i32 1, 1
  store i32 %bop92, i32* %vdecl_slot10
  %bop93 = add i32 1, 1
  store i32 %bop93, i32* %vdecl_slot10
  %bop94 = add i32 1, 1
  store i32 %bop94, i32* %vdecl_slot10
  %bop95 = add i32 1, 1
  store i32 %bop95, i32* %vdecl_slot10
  %bop96 = add i32 1, 1
  store i32 %bop96, i32* %vdecl_slot10
  %bop97 = add i32 1, 1
  store i32 %bop97, i32* %vdecl_slot10
  %bop98 = add i32 1, 1
  store i32 %bop98, i32* %vdecl_slot10
  %bop99 = add i32 1, 1
  store i32 %bop99, i32* %vdecl_slot10
  %bop100 = add i32 1, 1
  store i32 %bop100, i32* %vdecl_slot10
  %bop101 = add i32 1, 1
  store i32 %bop101, i32* %vdecl_slot10
  %bop102 = add i32 1, 1
  store i32 %bop102, i32* %vdecl_slot10
  %bop103 = add i32 1, 1
  store i32 %bop103, i32* %vdecl_slot10
  %bop104 = add i32 1, 1
  store i32 %bop104, i32* %vdecl_slot10
  %bop105 = add i32 1, 1
  store i32 %bop105, i32* %vdecl_slot10
  %bop106 = add i32 1, 1
  store i32 %bop106, i32* %vdecl_slot10
  %bop107 = add i32 1, 1
  store i32 %bop107, i32* %vdecl_slot10
  %bop108 = add i32 1, 1
  store i32 %bop108, i32* %vdecl_slot10
  %bop109 = add i32 1, 1
  store i32 %bop109, i32* %vdecl_slot10
  %bop110 = add i32 1, 1
  store i32 %bop110, i32* %vdecl_slot10
  %bop111 = add i32 1, 1
  store i32 %bop111, i32* %vdecl_slot10
  %bop112 = add i32 1, 1
  store i32 %bop112, i32* %vdecl_slot10
  %bop113 = add i32 1, 1
  store i32 %bop113, i32* %vdecl_slot10
  %bop114 = add i32 1, 1
  store i32 %bop114, i32* %vdecl_slot10
  %bop115 = add i32 1, 1
  store i32 %bop115, i32* %vdecl_slot10
  %bop116 = add i32 1, 1
  store i32 %bop116, i32* %vdecl_slot10
  %bop117 = add i32 1, 1
  store i32 %bop117, i32* %vdecl_slot10
  %bop118 = add i32 1, 1
  store i32 %bop118, i32* %vdecl_slot10
  %bop119 = add i32 1, 1
  store i32 %bop119, i32* %vdecl_slot10
  %bop120 = add i32 1, 1
  store i32 %bop120, i32* %vdecl_slot10
  %bop121 = add i32 1, 1
  store i32 %bop121, i32* %vdecl_slot10
  %bop122 = add i32 1, 1
  store i32 %bop122, i32* %vdecl_slot10
  %bop123 = add i32 1, 1
  store i32 %bop123, i32* %vdecl_slot10
  %bop124 = add i32 1, 1
  store i32 %bop124, i32* %vdecl_slot10
  %bop125 = add i32 1, 1
  store i32 %bop125, i32* %vdecl_slot10
  %bop126 = add i32 1, 1
  store i32 %bop126, i32* %vdecl_slot10
  %bop127 = add i32 1, 1
  store i32 %bop127, i32* %vdecl_slot10
  %bop128 = add i32 1, 1
  store i32 %bop128, i32* %vdecl_slot10
  %bop129 = add i32 1, 1
  store i32 %bop129, i32* %vdecl_slot10
  %bop130 = add i32 1, 1
  store i32 %bop130, i32* %vdecl_slot10
  %bop131 = add i32 1, 1
  store i32 %bop131, i32* %vdecl_slot10
  %bop132 = add i32 1, 1
  store i32 %bop132, i32* %vdecl_slot10
  %bop133 = add i32 1, 1
  store i32 %bop133, i32* %vdecl_slot10
  %bop134 = add i32 1, 1
  store i32 %bop134, i32* %vdecl_slot10
  %bop135 = add i32 1, 1
  store i32 %bop135, i32* %vdecl_slot10
  %bop136 = add i32 1, 1
  store i32 %bop136, i32* %vdecl_slot10
  %bop137 = add i32 1, 1
  store i32 %bop137, i32* %vdecl_slot10
  %bop138 = add i32 1, 1
  store i32 %bop138, i32* %vdecl_slot10
  %bop139 = add i32 1, 1
  store i32 %bop139, i32* %vdecl_slot10
  %bop140 = add i32 1, 1
  store i32 %bop140, i32* %vdecl_slot10
  %bop141 = add i32 1, 1
  store i32 %bop141, i32* %vdecl_slot10
  %bop142 = add i32 1, 1
  store i32 %bop142, i32* %vdecl_slot10
  %bop143 = add i32 1, 1
  store i32 %bop143, i32* %vdecl_slot10
  %bop144 = add i32 1, 1
  store i32 %bop144, i32* %vdecl_slot10
  %bop145 = add i32 1, 1
  store i32 %bop145, i32* %vdecl_slot10
  %bop146 = add i32 1, 1
  store i32 %bop146, i32* %vdecl_slot10
  %bop147 = add i32 1, 1
  store i32 %bop147, i32* %vdecl_slot10
  %bop148 = add i32 1, 1
  store i32 %bop148, i32* %vdecl_slot10
  %bop149 = add i32 1, 1
  store i32 %bop149, i32* %vdecl_slot10
  %bop150 = add i32 1, 1
  store i32 %bop150, i32* %vdecl_slot10
  %bop151 = add i32 1, 1
  store i32 %bop151, i32* %vdecl_slot10
  %bop152 = add i32 1, 1
  store i32 %bop152, i32* %vdecl_slot10
  %bop153 = add i32 1, 1
  store i32 %bop153, i32* %vdecl_slot10
  %bop154 = add i32 1, 1
  store i32 %bop154, i32* %vdecl_slot10
  %bop155 = add i32 1, 1
  store i32 %bop155, i32* %vdecl_slot10
  %bop156 = add i32 1, 1
  store i32 %bop156, i32* %vdecl_slot10
  %bop157 = add i32 1, 1
  store i32 %bop157, i32* %vdecl_slot10
  %bop158 = add i32 1, 1
  store i32 %bop158, i32* %vdecl_slot10
  %bop159 = add i32 1, 1
  store i32 %bop159, i32* %vdecl_slot10
  %bop160 = add i32 1, 1
  store i32 %bop160, i32* %vdecl_slot10
  %bop161 = add i32 1, 1
  store i32 %bop161, i32* %vdecl_slot10
  %bop162 = add i32 1, 1
  store i32 %bop162, i32* %vdecl_slot10
  %bop163 = add i32 1, 1
  store i32 %bop163, i32* %vdecl_slot10
  %bop164 = add i32 1, 1
  store i32 %bop164, i32* %vdecl_slot10
  %bop165 = add i32 1, 1
  store i32 %bop165, i32* %vdecl_slot10
  %bop166 = add i32 1, 1
  store i32 %bop166, i32* %vdecl_slot10
  %bop167 = add i32 1, 1
  store i32 %bop167, i32* %vdecl_slot10
  %bop168 = add i32 1, 1
  store i32 %bop168, i32* %vdecl_slot10
  %bop169 = add i32 1, 1
  store i32 %bop169, i32* %vdecl_slot10
  %bop170 = add i32 1, 1
  store i32 %bop170, i32* %vdecl_slot10
  %bop171 = add i32 1, 1
  store i32 %bop171, i32* %vdecl_slot10
  %bop172 = add i32 1, 1
  store i32 %bop172, i32* %vdecl_slot10
  %bop173 = add i32 1, 1
  store i32 %bop173, i32* %vdecl_slot10
  %bop174 = add i32 1, 1
  store i32 %bop174, i32* %vdecl_slot10
  %bop175 = add i32 1, 1
  store i32 %bop175, i32* %vdecl_slot10
  %bop176 = add i32 1, 1
  store i32 %bop176, i32* %vdecl_slot10
  %bop177 = add i32 1, 1
  store i32 %bop177, i32* %vdecl_slot10
  %bop178 = add i32 1, 1
  store i32 %bop178, i32* %vdecl_slot10
  %bop179 = add i32 1, 1
  store i32 %bop179, i32* %vdecl_slot10
  %bop180 = add i32 1, 1
  store i32 %bop180, i32* %vdecl_slot10
  %bop181 = add i32 1, 1
  store i32 %bop181, i32* %vdecl_slot10
  %bop182 = add i32 1, 1
  store i32 %bop182, i32* %vdecl_slot10
  %bop183 = add i32 1, 1
  store i32 %bop183, i32* %vdecl_slot10
  %bop184 = add i32 1, 1
  store i32 %bop184, i32* %vdecl_slot10
  %bop185 = add i32 1, 1
  store i32 %bop185, i32* %vdecl_slot10
  %bop186 = add i32 1, 1
  store i32 %bop186, i32* %vdecl_slot10
  %bop187 = add i32 1, 1
  store i32 %bop187, i32* %vdecl_slot10
  %bop188 = add i32 1, 1
  store i32 %bop188, i32* %vdecl_slot10
  %bop189 = add i32 1, 1
  store i32 %bop189, i32* %vdecl_slot10
  %bop190 = add i32 1, 1
  store i32 %bop190, i32* %vdecl_slot10
  %bop191 = add i32 1, 1
  store i32 %bop191, i32* %vdecl_slot10
  %bop192 = add i32 1, 1
  store i32 %bop192, i32* %vdecl_slot10
  %bop193 = add i32 1, 1
  store i32 %bop193, i32* %vdecl_slot10
  %bop194 = add i32 1, 1
  store i32 %bop194, i32* %vdecl_slot10
  %bop195 = add i32 1, 1
  store i32 %bop195, i32* %vdecl_slot10
  %bop196 = add i32 1, 1
  store i32 %bop196, i32* %vdecl_slot10
  %bop197 = add i32 1, 1
  store i32 %bop197, i32* %vdecl_slot10
  %bop198 = add i32 1, 1
  store i32 %bop198, i32* %vdecl_slot10
  %bop199 = add i32 1, 1
  store i32 %bop199, i32* %vdecl_slot10
  %bop200 = add i32 1, 1
  store i32 %bop200, i32* %vdecl_slot10
  %bop201 = add i32 1, 1
  store i32 %bop201, i32* %vdecl_slot10
  %bop202 = add i32 1, 1
  store i32 %bop202, i32* %vdecl_slot10
  %bop203 = add i32 1, 1
  store i32 %bop203, i32* %vdecl_slot10
  %bop204 = add i32 1, 1
  store i32 %bop204, i32* %vdecl_slot10
  %bop205 = add i32 1, 1
  store i32 %bop205, i32* %vdecl_slot10
  %bop206 = add i32 1, 1
  store i32 %bop206, i32* %vdecl_slot10
  %bop207 = add i32 1, 1
  store i32 %bop207, i32* %vdecl_slot10
  %bop208 = add i32 1, 1
  store i32 %bop208, i32* %vdecl_slot10
  %bop209 = add i32 1, 1
  store i32 %bop209, i32* %vdecl_slot10
  %bop210 = add i32 1, 1
  store i32 %bop210, i32* %vdecl_slot10
  %bop211 = add i32 1, 1
  store i32 %bop211, i32* %vdecl_slot10
  %bop212 = add i32 1, 1
  store i32 %bop212, i32* %vdecl_slot10
  %bop213 = add i32 1, 1
  store i32 %bop213, i32* %vdecl_slot10
  %bop214 = add i32 1, 1
  store i32 %bop214, i32* %vdecl_slot10
  %bop215 = add i32 1, 1
  store i32 %bop215, i32* %vdecl_slot10
  %bop216 = add i32 1, 1
  store i32 %bop216, i32* %vdecl_slot10
  %bop217 = add i32 1, 1
  store i32 %bop217, i32* %vdecl_slot10
  %bop218 = add i32 1, 1
  store i32 %bop218, i32* %vdecl_slot10
  %bop219 = add i32 1, 1
  store i32 %bop219, i32* %vdecl_slot10
  %bop220 = add i32 1, 1
  store i32 %bop220, i32* %vdecl_slot10
  %bop221 = add i32 1, 1
  store i32 %bop221, i32* %vdecl_slot10
  %bop222 = add i32 1, 1
  store i32 %bop222, i32* %vdecl_slot10
  %bop223 = add i32 1, 1
  store i32 %bop223, i32* %vdecl_slot10
  %bop224 = add i32 1, 1
  store i32 %bop224, i32* %vdecl_slot10
  %bop225 = add i32 1, 1
  store i32 %bop225, i32* %vdecl_slot10
  %bop226 = add i32 1, 1
  store i32 %bop226, i32* %vdecl_slot10
  %bop227 = add i32 1, 1
  store i32 %bop227, i32* %vdecl_slot10
  %bop228 = add i32 1, 1
  store i32 %bop228, i32* %vdecl_slot10
  %bop229 = add i32 1, 1
  store i32 %bop229, i32* %vdecl_slot10
  %bop230 = add i32 1, 1
  store i32 %bop230, i32* %vdecl_slot10
  %bop231 = add i32 1, 1
  store i32 %bop231, i32* %vdecl_slot10
  %bop232 = add i32 1, 1
  store i32 %bop232, i32* %vdecl_slot10
  %bop233 = add i32 1, 1
  store i32 %bop233, i32* %vdecl_slot10
  %bop234 = add i32 1, 1
  store i32 %bop234, i32* %vdecl_slot10
  %bop235 = add i32 1, 1
  store i32 %bop235, i32* %vdecl_slot10
  %bop236 = add i32 1, 1
  store i32 %bop236, i32* %vdecl_slot10
  %bop237 = add i32 1, 1
  store i32 %bop237, i32* %vdecl_slot10
  %bop238 = add i32 1, 1
  store i32 %bop238, i32* %vdecl_slot10
  %bop239 = add i32 1, 1
  store i32 %bop239, i32* %vdecl_slot10
  %bop240 = add i32 1, 1
  store i32 %bop240, i32* %vdecl_slot10
  %bop241 = add i32 1, 1
  store i32 %bop241, i32* %vdecl_slot10
  %bop242 = add i32 1, 1
  store i32 %bop242, i32* %vdecl_slot10
  %bop243 = add i32 1, 1
  store i32 %bop243, i32* %vdecl_slot10
  %bop244 = add i32 1, 1
  store i32 %bop244, i32* %vdecl_slot10
  %bop245 = add i32 1, 1
  store i32 %bop245, i32* %vdecl_slot10
  %bop246 = add i32 1, 1
  store i32 %bop246, i32* %vdecl_slot10
  %bop247 = add i32 1, 1
  store i32 %bop247, i32* %vdecl_slot10
  %bop248 = add i32 1, 1
  store i32 %bop248, i32* %vdecl_slot10
  %bop249 = add i32 1, 1
  store i32 %bop249, i32* %vdecl_slot10
  %bop250 = add i32 1, 1
  store i32 %bop250, i32* %vdecl_slot10
  %bop251 = add i32 1, 1
  store i32 %bop251, i32* %vdecl_slot10
  %bop252 = add i32 1, 1
  store i32 %bop252, i32* %vdecl_slot10
  %bop253 = add i32 1, 1
  store i32 %bop253, i32* %vdecl_slot10
  %bop254 = add i32 1, 1
  store i32 %bop254, i32* %vdecl_slot10
  %bop255 = add i32 1, 1
  store i32 %bop255, i32* %vdecl_slot10
  %bop256 = add i32 1, 1
  store i32 %bop256, i32* %vdecl_slot10
  %bop257 = add i32 1, 1
  store i32 %bop257, i32* %vdecl_slot10
  %bop258 = add i32 1, 1
  store i32 %bop258, i32* %vdecl_slot10
  %bop259 = add i32 1, 1
  store i32 %bop259, i32* %vdecl_slot10
  %bop260 = add i32 1, 1
  store i32 %bop260, i32* %vdecl_slot10
  %bop261 = add i32 1, 1
  store i32 %bop261, i32* %vdecl_slot10
  %bop262 = add i32 1, 1
  store i32 %bop262, i32* %vdecl_slot10
  %bop263 = add i32 1, 1
  store i32 %bop263, i32* %vdecl_slot10
  %bop264 = add i32 1, 1
  store i32 %bop264, i32* %vdecl_slot10
  %bop265 = add i32 1, 1
  store i32 %bop265, i32* %vdecl_slot10
  %bop266 = add i32 1, 1
  store i32 %bop266, i32* %vdecl_slot10
  %bop267 = add i32 1, 1
  store i32 %bop267, i32* %vdecl_slot10
  %bop268 = add i32 1, 1
  store i32 %bop268, i32* %vdecl_slot10
  %bop269 = add i32 1, 1
  store i32 %bop269, i32* %vdecl_slot10
  %bop270 = add i32 1, 1
  store i32 %bop270, i32* %vdecl_slot10
  %bop271 = add i32 1, 1
  store i32 %bop271, i32* %vdecl_slot10
  %bop272 = add i32 1, 1
  store i32 %bop272, i32* %vdecl_slot10
  %bop273 = add i32 1, 1
  store i32 %bop273, i32* %vdecl_slot10
  %bop274 = add i32 1, 1
  store i32 %bop274, i32* %vdecl_slot10
  %bop275 = add i32 1, 1
  store i32 %bop275, i32* %vdecl_slot10
  %bop276 = add i32 1, 1
  store i32 %bop276, i32* %vdecl_slot10
  %bop277 = add i32 1, 1
  store i32 %bop277, i32* %vdecl_slot10
  %bop278 = add i32 1, 1
  store i32 %bop278, i32* %vdecl_slot10
  %bop279 = add i32 1, 1
  store i32 %bop279, i32* %vdecl_slot10
  %bop280 = add i32 1, 1
  store i32 %bop280, i32* %vdecl_slot10
  %bop281 = add i32 1, 1
  store i32 %bop281, i32* %vdecl_slot10
  %bop282 = add i32 1, 1
  store i32 %bop282, i32* %vdecl_slot10
  %bop283 = add i32 1, 1
  store i32 %bop283, i32* %vdecl_slot10
  %bop284 = add i32 1, 1
  store i32 %bop284, i32* %vdecl_slot10
  %bop285 = add i32 1, 1
  store i32 %bop285, i32* %vdecl_slot10
  %bop286 = add i32 1, 1
  store i32 %bop286, i32* %vdecl_slot10
  %bop287 = add i32 1, 1
  store i32 %bop287, i32* %vdecl_slot10
  %bop288 = add i32 1, 1
  store i32 %bop288, i32* %vdecl_slot10
  %bop289 = add i32 1, 1
  store i32 %bop289, i32* %vdecl_slot10
  %bop290 = add i32 1, 1
  store i32 %bop290, i32* %vdecl_slot10
  %bop291 = add i32 1, 1
  store i32 %bop291, i32* %vdecl_slot10
  %bop292 = add i32 1, 1
  store i32 %bop292, i32* %vdecl_slot10
  %bop293 = add i32 1, 1
  store i32 %bop293, i32* %vdecl_slot10
  %bop294 = add i32 1, 1
  store i32 %bop294, i32* %vdecl_slot10
  %bop295 = add i32 1, 1
  store i32 %bop295, i32* %vdecl_slot10
  %bop296 = add i32 1, 1
  store i32 %bop296, i32* %vdecl_slot10
  %bop297 = add i32 1, 1
  store i32 %bop297, i32* %vdecl_slot10
  %bop298 = add i32 1, 1
  store i32 %bop298, i32* %vdecl_slot10
  %bop299 = add i32 1, 1
  store i32 %bop299, i32* %vdecl_slot10
  %bop300 = add i32 1, 1
  store i32 %bop300, i32* %vdecl_slot10
  %bop301 = add i32 1, 1
  store i32 %bop301, i32* %vdecl_slot10
  %bop302 = add i32 1, 1
  store i32 %bop302, i32* %vdecl_slot10
  %bop303 = add i32 1, 1
  store i32 %bop303, i32* %vdecl_slot10
  %bop304 = add i32 1, 1
  store i32 %bop304, i32* %vdecl_slot10
  %bop305 = add i32 1, 1
  store i32 %bop305, i32* %vdecl_slot10
  %bop306 = add i32 1, 1
  store i32 %bop306, i32* %vdecl_slot10
  %bop307 = add i32 1, 1
  store i32 %bop307, i32* %vdecl_slot10
  %bop308 = add i32 1, 1
  store i32 %bop308, i32* %vdecl_slot10
  %bop309 = add i32 1, 1
  store i32 %bop309, i32* %vdecl_slot10
  %bop310 = add i32 1, 1
  store i32 %bop310, i32* %vdecl_slot10
  %bop311 = add i32 1, 1
  store i32 %bop311, i32* %vdecl_slot10
  %bop312 = add i32 1, 1
  store i32 %bop312, i32* %vdecl_slot10
  %bop313 = add i32 1, 1
  store i32 %bop313, i32* %vdecl_slot10
  %bop314 = add i32 1, 1
  store i32 %bop314, i32* %vdecl_slot10
  %bop315 = add i32 1, 1
  store i32 %bop315, i32* %vdecl_slot10
  %bop316 = add i32 1, 1
  store i32 %bop316, i32* %vdecl_slot10
  %bop317 = add i32 1, 1
  store i32 %bop317, i32* %vdecl_slot10
  %bop318 = add i32 1, 1
  store i32 %bop318, i32* %vdecl_slot10
  %bop319 = add i32 1, 1
  store i32 %bop319, i32* %vdecl_slot10
  %bop320 = add i32 1, 1
  store i32 %bop320, i32* %vdecl_slot10
  %bop321 = add i32 1, 1
  store i32 %bop321, i32* %vdecl_slot10
  %bop322 = add i32 1, 1
  store i32 %bop322, i32* %vdecl_slot10
  %bop323 = add i32 1, 1
  store i32 %bop323, i32* %vdecl_slot10
  %bop324 = add i32 1, 1
  store i32 %bop324, i32* %vdecl_slot10
  %bop325 = add i32 1, 1
  store i32 %bop325, i32* %vdecl_slot10
  %bop326 = add i32 1, 1
  store i32 %bop326, i32* %vdecl_slot10
  %bop327 = add i32 1, 1
  store i32 %bop327, i32* %vdecl_slot10
  %bop328 = add i32 1, 1
  store i32 %bop328, i32* %vdecl_slot10
  %bop329 = add i32 1, 1
  store i32 %bop329, i32* %vdecl_slot10
  %bop330 = add i32 1, 1
  store i32 %bop330, i32* %vdecl_slot10
  %bop331 = add i32 1, 1
  store i32 %bop331, i32* %vdecl_slot10
  %bop332 = add i32 1, 1
  store i32 %bop332, i32* %vdecl_slot10
  %bop333 = add i32 1, 1
  store i32 %bop333, i32* %vdecl_slot10
  %bop334 = add i32 1, 1
  store i32 %bop334, i32* %vdecl_slot10
  %bop335 = add i32 1, 1
  store i32 %bop335, i32* %vdecl_slot10
  %bop336 = add i32 1, 1
  store i32 %bop336, i32* %vdecl_slot10
  %bop337 = add i32 1, 1
  store i32 %bop337, i32* %vdecl_slot10
  %bop338 = add i32 1, 1
  store i32 %bop338, i32* %vdecl_slot10
  %bop339 = add i32 1, 1
  store i32 %bop339, i32* %vdecl_slot10
  %bop340 = add i32 1, 1
  store i32 %bop340, i32* %vdecl_slot10
  %bop341 = add i32 1, 1
  store i32 %bop341, i32* %vdecl_slot10
  %bop342 = add i32 1, 1
  store i32 %bop342, i32* %vdecl_slot10
  %bop343 = add i32 1, 1
  store i32 %bop343, i32* %vdecl_slot10
  %bop344 = add i32 1, 1
  store i32 %bop344, i32* %vdecl_slot10
  %bop345 = add i32 1, 1
  store i32 %bop345, i32* %vdecl_slot10
  %bop346 = add i32 1, 1
  store i32 %bop346, i32* %vdecl_slot10
  %bop347 = add i32 1, 1
  store i32 %bop347, i32* %vdecl_slot10
  %bop348 = add i32 1, 1
  store i32 %bop348, i32* %vdecl_slot10
  %bop349 = add i32 1, 1
  store i32 %bop349, i32* %vdecl_slot10
  %bop350 = add i32 1, 1
  store i32 %bop350, i32* %vdecl_slot10
  %bop351 = add i32 1, 1
  store i32 %bop351, i32* %vdecl_slot10
  %bop352 = add i32 1, 1
  store i32 %bop352, i32* %vdecl_slot10
  %bop353 = add i32 1, 1
  store i32 %bop353, i32* %vdecl_slot10
  %bop354 = add i32 1, 1
  store i32 %bop354, i32* %vdecl_slot10
  %bop355 = add i32 1, 1
  store i32 %bop355, i32* %vdecl_slot10
  %bop356 = add i32 1, 1
  store i32 %bop356, i32* %vdecl_slot10
  %bop357 = add i32 1, 1
  store i32 %bop357, i32* %vdecl_slot10
  %bop358 = add i32 1, 1
  store i32 %bop358, i32* %vdecl_slot10
  %bop359 = add i32 1, 1
  store i32 %bop359, i32* %vdecl_slot10
  %bop360 = add i32 1, 1
  store i32 %bop360, i32* %vdecl_slot10
  %bop361 = add i32 1, 1
  store i32 %bop361, i32* %vdecl_slot10
  %bop362 = add i32 1, 1
  store i32 %bop362, i32* %vdecl_slot10
  %bop363 = add i32 1, 1
  store i32 %bop363, i32* %vdecl_slot10
  %bop364 = add i32 1, 1
  store i32 %bop364, i32* %vdecl_slot10
  %bop365 = add i32 1, 1
  store i32 %bop365, i32* %vdecl_slot10
  %bop366 = add i32 1, 1
  store i32 %bop366, i32* %vdecl_slot10
  %bop367 = add i32 1, 1
  store i32 %bop367, i32* %vdecl_slot10
  %bop368 = add i32 1, 1
  store i32 %bop368, i32* %vdecl_slot10
  %bop369 = add i32 1, 1
  store i32 %bop369, i32* %vdecl_slot10
  %bop370 = add i32 1, 1
  store i32 %bop370, i32* %vdecl_slot10
  %bop371 = add i32 1, 1
  store i32 %bop371, i32* %vdecl_slot10
  %bop372 = add i32 1, 1
  store i32 %bop372, i32* %vdecl_slot10
  %bop373 = add i32 1, 1
  store i32 %bop373, i32* %vdecl_slot10
  %bop374 = add i32 1, 1
  store i32 %bop374, i32* %vdecl_slot10
  %bop375 = add i32 1, 1
  store i32 %bop375, i32* %vdecl_slot10
  %bop376 = add i32 1, 1
  store i32 %bop376, i32* %vdecl_slot10
  %bop377 = add i32 1, 1
  store i32 %bop377, i32* %vdecl_slot10
  %bop378 = add i32 1, 1
  store i32 %bop378, i32* %vdecl_slot10
  %bop379 = add i32 1, 1
  store i32 %bop379, i32* %vdecl_slot10
  %bop380 = add i32 1, 1
  store i32 %bop380, i32* %vdecl_slot10
  %bop381 = add i32 1, 1
  store i32 %bop381, i32* %vdecl_slot10
  %bop382 = add i32 1, 1
  store i32 %bop382, i32* %vdecl_slot10
  %bop383 = add i32 1, 1
  store i32 %bop383, i32* %vdecl_slot10
  %bop384 = add i32 1, 1
  store i32 %bop384, i32* %vdecl_slot10
  %bop385 = add i32 1, 1
  store i32 %bop385, i32* %vdecl_slot10
  %bop386 = add i32 1, 1
  store i32 %bop386, i32* %vdecl_slot10
  %bop387 = add i32 1, 1
  store i32 %bop387, i32* %vdecl_slot10
  %bop388 = add i32 1, 1
  store i32 %bop388, i32* %vdecl_slot10
  %bop389 = add i32 1, 1
  store i32 %bop389, i32* %vdecl_slot10
  %bop390 = add i32 1, 1
  store i32 %bop390, i32* %vdecl_slot10
  %bop391 = add i32 1, 1
  store i32 %bop391, i32* %vdecl_slot10
  %bop392 = add i32 1, 1
  store i32 %bop392, i32* %vdecl_slot10
  %bop393 = add i32 1, 1
  store i32 %bop393, i32* %vdecl_slot10
  %bop394 = add i32 1, 1
  store i32 %bop394, i32* %vdecl_slot10
  %bop395 = add i32 1, 1
  store i32 %bop395, i32* %vdecl_slot10
  %bop396 = add i32 1, 1
  store i32 %bop396, i32* %vdecl_slot10
  %bop397 = add i32 1, 1
  store i32 %bop397, i32* %vdecl_slot10
  %bop398 = add i32 1, 1
  store i32 %bop398, i32* %vdecl_slot10
  %bop399 = add i32 1, 1
  store i32 %bop399, i32* %vdecl_slot10
  %bop400 = add i32 1, 1
  store i32 %bop400, i32* %vdecl_slot10
  %bop401 = add i32 1, 1
  store i32 %bop401, i32* %vdecl_slot10
  %bop402 = add i32 1, 1
  store i32 %bop402, i32* %vdecl_slot10
  %bop403 = add i32 1, 1
  store i32 %bop403, i32* %vdecl_slot10
  %bop404 = add i32 1, 1
  store i32 %bop404, i32* %vdecl_slot10
  %bop405 = add i32 1, 1
  store i32 %bop405, i32* %vdecl_slot10
  %bop406 = add i32 1, 1
  store i32 %bop406, i32* %vdecl_slot10
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



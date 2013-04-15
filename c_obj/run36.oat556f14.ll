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
@_const_str232.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str232 = alias bitcast([ 3 x i8 ]* @_const_str232.str. to i8*)@_const_str233.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str233 = alias bitcast([ 4 x i8 ]* @_const_str233.str. to i8*)@_const_str231.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str231 = alias bitcast([ 2 x i8 ]* @_const_str231.str. to i8*)@_const_str230.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str230 = alias bitcast([ 2 x i8 ]* @_const_str230.str. to i8*)@_const_str229.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str229 = alias bitcast([ 2 x i8 ]* @_const_str229.str. to i8*)@_const_str228.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str228 = alias bitcast([ 7 x i8 ]* @_const_str228.str. to i8*)@_C_vtable227 = private constant %_C_vtable {%_B_vtable* @_B_vtable226, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable226 = private constant %_B_vtable {%_A_vtable* @_A_vtable225, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable225 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable224, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable224 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh377:
  ret void
}


define i32 @program (i32 %argc1167, { i32, [ 0 x i8* ] }* %argv1165){
__fresh372:
  %argc_slot1168 = alloca i32
  store i32 %argc1167, i32* %argc_slot1168
  %argv_slot1166 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1165, { i32, [ 0 x i8* ] }** %argv_slot1166
  %mem_ptr1169 = call i32* @oat_malloc ( i32 12 )
  %obj1170 = bitcast i32* %mem_ptr1169 to %B* 
  %new_obj1171 = call %B* @_B_ctor ( %B* %obj1170 )
  %cast_op1172 = bitcast %B* %new_obj1171 to %A* 
  %vdecl_slot1173 = alloca %A*
  store %A* %cast_op1172, %A** %vdecl_slot1173
  %vdecl_slot1174 = alloca i32
  store i32 -1, i32* %vdecl_slot1174
  %lhs_or_call1175 = load %A** %vdecl_slot1173
  %cast_op1176 = bitcast %A* %lhs_or_call1175 to i8** 
  %cast_op1177 = bitcast %_A_vtable* @_A_vtable225 to i8* 
  %vt_ptr_slot1178 = alloca i8*
  %tmp01180 = load i8** %cast_op1176
  store i8* %tmp01180, i8** %vt_ptr_slot1178
  br label %__loop371

__loop371:
  %tmp11181 = load i8** %vt_ptr_slot1178
  %guard11185 = icmp eq i8* %tmp11181, %cast_op1177
  br i1 %guard11185, label %__then368, label %__fall1370

__fresh373:
  br label %__fall1370

__fall1370:
  %guard21186 = icmp eq i8* %tmp11181, null
  br i1 %guard21186, label %__else367, label %__fall2369

__fresh374:
  br label %__fall2369

__fall2369:
  %tmp21182 = load i8** %vt_ptr_slot1178
  %tmp31183 = bitcast i8* %tmp21182 to i8** 
  %tmp41184 = load i8** %tmp31183
  store i8* %tmp41184, i8** %vt_ptr_slot1178
  br label %__loop371

__fresh375:
  br label %__then368

__then368:
  %var_slot1179 = alloca %A*
  store %A* %lhs_or_call1175, %A** %var_slot1179
  call void @print_string( i8* @_const_str233 )
  %lhs_or_call1190 = load %A** %var_slot1179
  %path1191 = getelementptr %A* %lhs_or_call1190, i32 0, i32 2
  %lhs_or_call1192 = load i32* %path1191
  store i32 %lhs_or_call1192, i32* %vdecl_slot1174
  br label %__done366

__fresh376:
  br label %__else367

__else367:
  call void @print_string( i8* @_const_str232 )
  %lhs_or_call1187 = load %A** %vdecl_slot1173
  %path1188 = getelementptr %A* %lhs_or_call1187, i32 0, i32 2
  %lhs_or_call1189 = load i32* %path1188
  store i32 %lhs_or_call1189, i32* %vdecl_slot1174
  br label %__done366

__done366:
  %lhs_or_call1193 = load i32* %vdecl_slot1174
  ret i32 %lhs_or_call1193
}


define %C* @_C_ctor (%C* %_this1){
__fresh365:
  %cast_op1160 = bitcast %C* %_this1 to %B* 
  %dummy1161 = call %B* @_B_ctor ( %B* %cast_op1160 )
  %path1162 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str231, i8** %path1162
  %vt_slot1163 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable227, %_C_vtable** %vt_slot1163
  %path1164 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %path1164
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh364:
  %cast_op1155 = bitcast %B* %_this1 to %A* 
  %dummy1156 = call %A* @_A_ctor ( %A* %cast_op1155 )
  %path1157 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str230, i8** %path1157
  %vt_slot1158 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable226, %_B_vtable** %vt_slot1158
  %path1159 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %path1159
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh363:
  %cast_op1150 = bitcast %A* %_this1 to %Object* 
  %dummy1151 = call %Object* @_Object_ctor ( %Object* %cast_op1150 )
  %path1152 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str229, i8** %path1152
  %vt_slot1153 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable225, %_A_vtable** %vt_slot1153
  %path1154 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %path1154
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh362:
  %path1148 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1149 = load i8** %path1148
  ret i8* %lhs_or_call1149
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh361:
  %path1146 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str228, i8** %path1146
  %vt_slot1147 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable224, %_Object_vtable** %vt_slot1147
  ret %Object* %_this1
}



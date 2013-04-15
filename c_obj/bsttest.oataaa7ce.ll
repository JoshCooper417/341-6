%BST = type { %_BST_vtable*, i8*, %Node* }
%_BST_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%BST*, i32)*, i32 (%BST*, i32)*, void (%BST*, i32)*, void (%BST*, %Node*)* }
%Node = type { %_Node_vtable*, i8*, i32, %Node*, %Node*, %Node* }
%_Node_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@t638 = global %BST* zeroinitializer, align 4		; initialized by @t638.init639
@_const_str637.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str637 = alias bitcast([ 11 x i8 ]* @_const_str637.str. to i8*)@_const_str636.str. = private unnamed_addr constant [ 11 x i8 ] c "Unexpected\00", align 4
@_const_str636 = alias bitcast([ 11 x i8 ]* @_const_str636.str. to i8*)@_const_str635.str. = private unnamed_addr constant [ 38 x i8 ] c "Fatal Error: Inconsistent node state.\00", align 4
@_const_str635 = alias bitcast([ 38 x i8 ]* @_const_str635.str. to i8*)@_const_str634.str. = private unnamed_addr constant [ 18 x i8 ] c "Element not found\00", align 4
@_const_str634 = alias bitcast([ 18 x i8 ]* @_const_str634.str. to i8*)@_const_str633.str. = private unnamed_addr constant [ 4 x i8 ] c "BST\00", align 4
@_const_str633 = alias bitcast([ 4 x i8 ]* @_const_str633.str. to i8*)@_const_str632.str. = private unnamed_addr constant [ 5 x i8 ] c "Node\00", align 4
@_const_str632 = alias bitcast([ 5 x i8 ]* @_const_str632.str. to i8*)@_const_str631.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str631 = alias bitcast([ 7 x i8 ]* @_const_str631.str. to i8*)@_BST_vtable630 = private constant %_BST_vtable {%_Object_vtable* @_Object_vtable628, i8* (%Object*)* @_Object_get_name, void (%BST*, i32)* @_BST_insert, i32 (%BST*, i32)* @_BST_find, void (%BST*, i32)* @_BST_remove, void (%BST*, %Node*)* @_BST_remove_node}, align 4
@_Node_vtable629 = private constant %_Node_vtable {%_Object_vtable* @_Object_vtable628, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable628 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh1765:
  call void @t638.init639(  )
  ret void
}


define i32 @program (i32 %argc5328, { i32, [ 0 x i8* ] }* %argv5326){
__fresh1764:
  %argc_slot5329 = alloca i32
  store i32 %argc5328, i32* %argc_slot5329
  %argv_slot5327 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5326, { i32, [ 0 x i8* ] }** %argv_slot5327
  %vdecl_slot5330 = alloca i32
  store i32 0, i32* %vdecl_slot5330
  %lhs_or_call5331 = load %BST** @t638
  %vtmp5333 = getelementptr %BST* %lhs_or_call5331, i32 0, i32 0
  %vtable5332 = load %_BST_vtable** %vtmp5333
  %fptmp5334 = getelementptr %_BST_vtable* %vtable5332, i32 0, i32 2
  %method5335 = load void (%BST*, i32)** %fptmp5334
  call void %method5335( %BST* %lhs_or_call5331, i32 3 )
  %lhs_or_call5336 = load %BST** @t638
  %vtmp5338 = getelementptr %BST* %lhs_or_call5336, i32 0, i32 0
  %vtable5337 = load %_BST_vtable** %vtmp5338
  %fptmp5339 = getelementptr %_BST_vtable* %vtable5337, i32 0, i32 2
  %method5340 = load void (%BST*, i32)** %fptmp5339
  call void %method5340( %BST* %lhs_or_call5336, i32 1 )
  %lhs_or_call5341 = load %BST** @t638
  %vtmp5343 = getelementptr %BST* %lhs_or_call5341, i32 0, i32 0
  %vtable5342 = load %_BST_vtable** %vtmp5343
  %fptmp5344 = getelementptr %_BST_vtable* %vtable5342, i32 0, i32 2
  %method5345 = load void (%BST*, i32)** %fptmp5344
  call void %method5345( %BST* %lhs_or_call5341, i32 0 )
  %lhs_or_call5346 = load %BST** @t638
  %vtmp5348 = getelementptr %BST* %lhs_or_call5346, i32 0, i32 0
  %vtable5347 = load %_BST_vtable** %vtmp5348
  %fptmp5349 = getelementptr %_BST_vtable* %vtable5347, i32 0, i32 2
  %method5350 = load void (%BST*, i32)** %fptmp5349
  call void %method5350( %BST* %lhs_or_call5346, i32 5 )
  %lhs_or_call5351 = load %BST** @t638
  %vtmp5353 = getelementptr %BST* %lhs_or_call5351, i32 0, i32 0
  %vtable5352 = load %_BST_vtable** %vtmp5353
  %fptmp5354 = getelementptr %_BST_vtable* %vtable5352, i32 0, i32 2
  %method5355 = load void (%BST*, i32)** %fptmp5354
  call void %method5355( %BST* %lhs_or_call5351, i32 2 )
  %lhs_or_call5356 = load %BST** @t638
  %vtmp5358 = getelementptr %BST* %lhs_or_call5356, i32 0, i32 0
  %vtable5357 = load %_BST_vtable** %vtmp5358
  %fptmp5359 = getelementptr %_BST_vtable* %vtable5357, i32 0, i32 2
  %method5360 = load void (%BST*, i32)** %fptmp5359
  call void %method5360( %BST* %lhs_or_call5356, i32 4 )
  %lhs_or_call5361 = load %BST** @t638
  %vtmp5363 = getelementptr %BST* %lhs_or_call5361, i32 0, i32 0
  %vtable5362 = load %_BST_vtable** %vtmp5363
  %fptmp5364 = getelementptr %_BST_vtable* %vtable5362, i32 0, i32 3
  %method5365 = load i32 (%BST*, i32)** %fptmp5364
  %ret5366 = call i32 %method5365 ( %BST* %lhs_or_call5361, i32 0 )
  %vdecl_slot5367 = alloca i32
  store i32 %ret5366, i32* %vdecl_slot5367
  %lhs_or_call5368 = load %BST** @t638
  %vtmp5370 = getelementptr %BST* %lhs_or_call5368, i32 0, i32 0
  %vtable5369 = load %_BST_vtable** %vtmp5370
  %fptmp5371 = getelementptr %_BST_vtable* %vtable5369, i32 0, i32 4
  %method5372 = load void (%BST*, i32)** %fptmp5371
  call void %method5372( %BST* %lhs_or_call5368, i32 3 )
  %lhs_or_call5373 = load %BST** @t638
  %vtmp5375 = getelementptr %BST* %lhs_or_call5373, i32 0, i32 0
  %vtable5374 = load %_BST_vtable** %vtmp5375
  %fptmp5376 = getelementptr %_BST_vtable* %vtable5374, i32 0, i32 3
  %method5377 = load i32 (%BST*, i32)** %fptmp5376
  %ret5378 = call i32 %method5377 ( %BST* %lhs_or_call5373, i32 5 )
  %vdecl_slot5379 = alloca i32
  store i32 %ret5378, i32* %vdecl_slot5379
  %lhs_or_call5380 = load %BST** @t638
  %vtmp5382 = getelementptr %BST* %lhs_or_call5380, i32 0, i32 0
  %vtable5381 = load %_BST_vtable** %vtmp5382
  %fptmp5383 = getelementptr %_BST_vtable* %vtable5381, i32 0, i32 3
  %method5384 = load i32 (%BST*, i32)** %fptmp5383
  %ret5385 = call i32 %method5384 ( %BST* %lhs_or_call5380, i32 3 )
  %vdecl_slot5386 = alloca i32
  store i32 %ret5385, i32* %vdecl_slot5386
  %lhs_or_call5387 = load i32* %vdecl_slot5367
  %bop5388 = mul i32 100, %lhs_or_call5387
  %lhs_or_call5389 = load i32* %vdecl_slot5379
  %bop5390 = mul i32 10, %lhs_or_call5389
  %bop5391 = add i32 %bop5388, %bop5390
  %lhs_or_call5392 = load i32* %vdecl_slot5386
  %bop5393 = add i32 %bop5391, %lhs_or_call5392
  store i32 %bop5393, i32* %vdecl_slot5330
  %lhs_or_call5394 = load i32* %vdecl_slot5330
  ret i32 %lhs_or_call5394
}


define void @t638.init639 (){
__fresh1763:
  %mem_ptr5323 = call i32* @oat_malloc ( i32 12 )
  %obj5324 = bitcast i32* %mem_ptr5323 to %BST* 
  %new_obj5325 = call %BST* @_BST_ctor ( %BST* %obj5324 )
  store %BST* %new_obj5325, %BST** @t638
  ret void
}


define void @_BST_remove_node (%BST* %_this1, %Node* %c5196){
__fresh1738:
  %c_slot5197 = alloca %Node*
  store %Node* %c5196, %Node** %c_slot5197
  %lhs_or_call5198 = load %Node** %c_slot5197
  %path5199 = getelementptr %Node* %lhs_or_call5198, i32 0, i32 4
  %lhs_or_call5200 = load %Node** %path5199
  %cast_op5201 = bitcast i8* null to %Object* 
  %cast_op5202 = bitcast %Node* %lhs_or_call5200 to %Object* 
  %ret5203 = call i1 @equals ( %Object* %cast_op5202, %Object* %cast_op5201 )
  %lhs_or_call5204 = load %Node** %c_slot5197
  %path5205 = getelementptr %Node* %lhs_or_call5204, i32 0, i32 5
  %lhs_or_call5206 = load %Node** %path5205
  %cast_op5207 = bitcast i8* null to %Object* 
  %cast_op5208 = bitcast %Node* %lhs_or_call5206 to %Object* 
  %ret5209 = call i1 @equals ( %Object* %cast_op5208, %Object* %cast_op5207 )
  %bop5210 = and i1 %ret5203, %ret5209
  br i1 %bop5210, label %__then1737, label %__else1736

__fresh1739:
  br label %__then1737

__then1737:
  %lhs_or_call5211 = load %Node** %c_slot5197
  %path5212 = getelementptr %Node* %lhs_or_call5211, i32 0, i32 3
  %lhs_or_call5213 = load %Node** %path5212
  %ifnull_slot5214 = alloca %Node*
  store %Node* %lhs_or_call5213, %Node** %ifnull_slot5214
  %ifnull_guard5215 = icmp ne %Node* %lhs_or_call5213, null
  br i1 %ifnull_guard5215, label %__then1707, label %__else1706

__fresh1740:
  br label %__then1707

__then1707:
  %lhs_or_call5216 = load %Node** %c_slot5197
  %lhs_or_call5217 = load %Node** %ifnull_slot5214
  %path5218 = getelementptr %Node* %lhs_or_call5217, i32 0, i32 4
  %lhs_or_call5219 = load %Node** %path5218
  %cast_op5220 = bitcast %Node* %lhs_or_call5216 to %Object* 
  %cast_op5221 = bitcast %Node* %lhs_or_call5219 to %Object* 
  %ret5222 = call i1 @equals ( %Object* %cast_op5221, %Object* %cast_op5220 )
  br i1 %ret5222, label %__then1704, label %__else1703

__fresh1741:
  br label %__then1704

__then1704:
  %lhs_or_call5223 = load %Node** %ifnull_slot5214
  %path5224 = getelementptr %Node* %lhs_or_call5223, i32 0, i32 4
  %cast_op5225 = bitcast i8* null to %Node* 
  store %Node* %cast_op5225, %Node** %path5224
  br label %__merge1702

__fresh1742:
  br label %__else1703

__else1703:
  %lhs_or_call5226 = load %Node** %ifnull_slot5214
  %path5227 = getelementptr %Node* %lhs_or_call5226, i32 0, i32 5
  %cast_op5228 = bitcast i8* null to %Node* 
  store %Node* %cast_op5228, %Node** %path5227
  br label %__merge1702

__merge1702:
  br label %__merge1705

__fresh1743:
  br label %__else1706

__else1706:
  %path5229 = getelementptr %BST* %_this1, i32 0, i32 2
  %cast_op5230 = bitcast i8* null to %Node* 
  store %Node* %cast_op5230, %Node** %path5229
  br label %__merge1705

__merge1705:
  br label %__merge1735

__fresh1744:
  br label %__else1736

__else1736:
  %lhs_or_call5231 = load %Node** %c_slot5197
  %path5232 = getelementptr %Node* %lhs_or_call5231, i32 0, i32 4
  %lhs_or_call5233 = load %Node** %path5232
  %cast_op5234 = bitcast i8* null to %Object* 
  %cast_op5235 = bitcast %Node* %lhs_or_call5233 to %Object* 
  %ret5236 = call i1 @equals ( %Object* %cast_op5235, %Object* %cast_op5234 )
  br i1 %ret5236, label %__then1734, label %__else1733

__fresh1745:
  br label %__then1734

__then1734:
  %lhs_or_call5237 = load %Node** %c_slot5197
  %path5238 = getelementptr %Node* %lhs_or_call5237, i32 0, i32 3
  %lhs_or_call5239 = load %Node** %path5238
  %ifnull_slot5240 = alloca %Node*
  store %Node* %lhs_or_call5239, %Node** %ifnull_slot5240
  %ifnull_guard5241 = icmp ne %Node* %lhs_or_call5239, null
  br i1 %ifnull_guard5241, label %__then1713, label %__else1712

__fresh1746:
  br label %__then1713

__then1713:
  %lhs_or_call5242 = load %Node** %c_slot5197
  %lhs_or_call5243 = load %Node** %ifnull_slot5240
  %path5244 = getelementptr %Node* %lhs_or_call5243, i32 0, i32 4
  %lhs_or_call5245 = load %Node** %path5244
  %cast_op5246 = bitcast %Node* %lhs_or_call5242 to %Object* 
  %cast_op5247 = bitcast %Node* %lhs_or_call5245 to %Object* 
  %ret5248 = call i1 @equals ( %Object* %cast_op5247, %Object* %cast_op5246 )
  br i1 %ret5248, label %__then1710, label %__else1709

__fresh1747:
  br label %__then1710

__then1710:
  %lhs_or_call5249 = load %Node** %ifnull_slot5240
  %path5250 = getelementptr %Node* %lhs_or_call5249, i32 0, i32 4
  %lhs_or_call5251 = load %Node** %c_slot5197
  %path5252 = getelementptr %Node* %lhs_or_call5251, i32 0, i32 5
  %lhs_or_call5253 = load %Node** %path5252
  store %Node* %lhs_or_call5253, %Node** %path5250
  br label %__merge1708

__fresh1748:
  br label %__else1709

__else1709:
  %lhs_or_call5254 = load %Node** %ifnull_slot5240
  %path5255 = getelementptr %Node* %lhs_or_call5254, i32 0, i32 5
  %lhs_or_call5256 = load %Node** %c_slot5197
  %path5257 = getelementptr %Node* %lhs_or_call5256, i32 0, i32 5
  %lhs_or_call5258 = load %Node** %path5257
  store %Node* %lhs_or_call5258, %Node** %path5255
  br label %__merge1708

__merge1708:
  br label %__merge1711

__fresh1749:
  br label %__else1712

__else1712:
  %path5259 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5260 = load %Node** %c_slot5197
  %path5261 = getelementptr %Node* %lhs_or_call5260, i32 0, i32 5
  %lhs_or_call5262 = load %Node** %path5261
  store %Node* %lhs_or_call5262, %Node** %path5259
  br label %__merge1711

__merge1711:
  br label %__merge1732

__fresh1750:
  br label %__else1733

__else1733:
  %lhs_or_call5263 = load %Node** %c_slot5197
  %path5264 = getelementptr %Node* %lhs_or_call5263, i32 0, i32 5
  %lhs_or_call5265 = load %Node** %path5264
  %cast_op5266 = bitcast i8* null to %Object* 
  %cast_op5267 = bitcast %Node* %lhs_or_call5265 to %Object* 
  %ret5268 = call i1 @equals ( %Object* %cast_op5267, %Object* %cast_op5266 )
  br i1 %ret5268, label %__then1731, label %__else1730

__fresh1751:
  br label %__then1731

__then1731:
  %lhs_or_call5269 = load %Node** %c_slot5197
  %path5270 = getelementptr %Node* %lhs_or_call5269, i32 0, i32 3
  %lhs_or_call5271 = load %Node** %path5270
  %ifnull_slot5272 = alloca %Node*
  store %Node* %lhs_or_call5271, %Node** %ifnull_slot5272
  %ifnull_guard5273 = icmp ne %Node* %lhs_or_call5271, null
  br i1 %ifnull_guard5273, label %__then1719, label %__else1718

__fresh1752:
  br label %__then1719

__then1719:
  %lhs_or_call5274 = load %Node** %c_slot5197
  %lhs_or_call5275 = load %Node** %ifnull_slot5272
  %path5276 = getelementptr %Node* %lhs_or_call5275, i32 0, i32 4
  %lhs_or_call5277 = load %Node** %path5276
  %cast_op5278 = bitcast %Node* %lhs_or_call5274 to %Object* 
  %cast_op5279 = bitcast %Node* %lhs_or_call5277 to %Object* 
  %ret5280 = call i1 @equals ( %Object* %cast_op5279, %Object* %cast_op5278 )
  br i1 %ret5280, label %__then1716, label %__else1715

__fresh1753:
  br label %__then1716

__then1716:
  %lhs_or_call5281 = load %Node** %ifnull_slot5272
  %path5282 = getelementptr %Node* %lhs_or_call5281, i32 0, i32 4
  %lhs_or_call5283 = load %Node** %c_slot5197
  %path5284 = getelementptr %Node* %lhs_or_call5283, i32 0, i32 4
  %lhs_or_call5285 = load %Node** %path5284
  store %Node* %lhs_or_call5285, %Node** %path5282
  br label %__merge1714

__fresh1754:
  br label %__else1715

__else1715:
  %lhs_or_call5286 = load %Node** %ifnull_slot5272
  %path5287 = getelementptr %Node* %lhs_or_call5286, i32 0, i32 5
  %lhs_or_call5288 = load %Node** %c_slot5197
  %path5289 = getelementptr %Node* %lhs_or_call5288, i32 0, i32 4
  %lhs_or_call5290 = load %Node** %path5289
  store %Node* %lhs_or_call5290, %Node** %path5287
  br label %__merge1714

__merge1714:
  br label %__merge1717

__fresh1755:
  br label %__else1718

__else1718:
  %path5291 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5292 = load %Node** %c_slot5197
  %path5293 = getelementptr %Node* %lhs_or_call5292, i32 0, i32 4
  %lhs_or_call5294 = load %Node** %path5293
  store %Node* %lhs_or_call5294, %Node** %path5291
  br label %__merge1717

__merge1717:
  br label %__merge1729

__fresh1756:
  br label %__else1730

__else1730:
  %lhs_or_call5295 = load %Node** %c_slot5197
  %path5296 = getelementptr %Node* %lhs_or_call5295, i32 0, i32 5
  %lhs_or_call5297 = load %Node** %path5296
  %ifnull_slot5298 = alloca %Node*
  store %Node* %lhs_or_call5297, %Node** %ifnull_slot5298
  %ifnull_guard5299 = icmp ne %Node* %lhs_or_call5297, null
  br i1 %ifnull_guard5299, label %__then1728, label %__else1727

__fresh1757:
  br label %__then1728

__then1728:
  br label %__cond1722

__cond1722:
  %lhs_or_call5300 = load %Node** %ifnull_slot5298
  %path5301 = getelementptr %Node* %lhs_or_call5300, i32 0, i32 4
  %lhs_or_call5302 = load %Node** %path5301
  %cast_op5303 = bitcast i8* null to %Object* 
  %cast_op5304 = bitcast %Node* %lhs_or_call5302 to %Object* 
  %ret5305 = call i1 @equals ( %Object* %cast_op5304, %Object* %cast_op5303 )
  %unop5306 = icmp eq i1 %ret5305, 0
  br i1 %unop5306, label %__body1721, label %__post1720

__fresh1758:
  br label %__body1721

__body1721:
  %lhs_or_call5307 = load %Node** %ifnull_slot5298
  %path5308 = getelementptr %Node* %lhs_or_call5307, i32 0, i32 4
  %lhs_or_call5309 = load %Node** %path5308
  %ifnull_slot5310 = alloca %Node*
  store %Node* %lhs_or_call5309, %Node** %ifnull_slot5310
  %ifnull_guard5311 = icmp ne %Node* %lhs_or_call5309, null
  br i1 %ifnull_guard5311, label %__then1725, label %__else1724

__fresh1759:
  br label %__then1725

__then1725:
  %lhs_or_call5312 = load %Node** %ifnull_slot5310
  store %Node* %lhs_or_call5312, %Node** %ifnull_slot5298
  br label %__merge1723

__fresh1760:
  br label %__else1724

__else1724:
  call void @print_string( i8* @_const_str636 )
  call void @oat_abort( i32 -1 )
  br label %__merge1723

__merge1723:
  br label %__cond1722

__fresh1761:
  br label %__post1720

__post1720:
  %lhs_or_call5313 = load %Node** %c_slot5197
  %path5314 = getelementptr %Node* %lhs_or_call5313, i32 0, i32 2
  %lhs_or_call5315 = load %Node** %ifnull_slot5298
  %path5316 = getelementptr %Node* %lhs_or_call5315, i32 0, i32 2
  %lhs_or_call5317 = load i32* %path5316
  store i32 %lhs_or_call5317, i32* %path5314
  %vtmp5320 = getelementptr %BST* %_this1, i32 0, i32 0
  %vtable5319 = load %_BST_vtable** %vtmp5320
  %fptmp5321 = getelementptr %_BST_vtable* %vtable5319, i32 0, i32 5
  %method5322 = load void (%BST*, %Node*)** %fptmp5321
  %lhs_or_call5318 = load %Node** %ifnull_slot5298
  call void %method5322( %BST* %_this1, %Node* %lhs_or_call5318 )
  br label %__merge1726

__fresh1762:
  br label %__else1727

__else1727:
  call void @print_string( i8* @_const_str637 )
  call void @oat_abort( i32 -1 )
  br label %__merge1726

__merge1726:
  br label %__merge1729

__merge1729:
  br label %__merge1732

__merge1732:
  br label %__merge1735

__merge1735:
  ret void
}


define void @_BST_remove (%BST* %_this1, i32 %x5149){
__fresh1689:
  %x_slot5150 = alloca i32
  store i32 %x5149, i32* %x_slot5150
  %path5151 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5152 = load %Node** %path5151
  %vdecl_slot5153 = alloca %Node*
  store %Node* %lhs_or_call5152, %Node** %vdecl_slot5153
  %cast_op5154 = bitcast i8* null to %Node* 
  %vdecl_slot5155 = alloca %Node*
  store %Node* %cast_op5154, %Node** %vdecl_slot5155
  %vdecl_slot5156 = alloca i32
  store i32 0, i32* %vdecl_slot5156
  br label %__cond1673

__cond1673:
  %lhs_or_call5157 = load i32* %vdecl_slot5156
  %bop5158 = icmp eq i32 %lhs_or_call5157, 0
  %lhs_or_call5159 = load %Node** %vdecl_slot5153
  %cast_op5160 = bitcast i8* null to %Object* 
  %cast_op5161 = bitcast %Node* %lhs_or_call5159 to %Object* 
  %ret5162 = call i1 @equals ( %Object* %cast_op5161, %Object* %cast_op5160 )
  %unop5163 = icmp eq i1 %ret5162, 0
  %bop5164 = and i1 %bop5158, %unop5163
  br i1 %bop5164, label %__body1672, label %__post1671

__fresh1690:
  br label %__body1672

__body1672:
  %lhs_or_call5165 = load %Node** %vdecl_slot5153
  %ifnull_slot5166 = alloca %Node*
  store %Node* %lhs_or_call5165, %Node** %ifnull_slot5166
  %ifnull_guard5167 = icmp ne %Node* %lhs_or_call5165, null
  br i1 %ifnull_guard5167, label %__then1682, label %__else1681

__fresh1691:
  br label %__then1682

__then1682:
  %lhs_or_call5168 = load i32* %x_slot5150
  %lhs_or_call5169 = load %Node** %ifnull_slot5166
  %path5170 = getelementptr %Node* %lhs_or_call5169, i32 0, i32 2
  %lhs_or_call5171 = load i32* %path5170
  %bop5172 = icmp eq i32 %lhs_or_call5168, %lhs_or_call5171
  br i1 %bop5172, label %__then1679, label %__else1678

__fresh1692:
  br label %__then1679

__then1679:
  store i32 1, i32* %vdecl_slot5156
  br label %__merge1677

__fresh1693:
  br label %__else1678

__else1678:
  %lhs_or_call5173 = load i32* %x_slot5150
  %lhs_or_call5174 = load %Node** %ifnull_slot5166
  %path5175 = getelementptr %Node* %lhs_or_call5174, i32 0, i32 2
  %lhs_or_call5176 = load i32* %path5175
  %bop5177 = icmp slt i32 %lhs_or_call5173, %lhs_or_call5176
  br i1 %bop5177, label %__then1676, label %__else1675

__fresh1694:
  br label %__then1676

__then1676:
  %lhs_or_call5178 = load %Node** %vdecl_slot5153
  store %Node* %lhs_or_call5178, %Node** %vdecl_slot5155
  %lhs_or_call5179 = load %Node** %ifnull_slot5166
  %path5180 = getelementptr %Node* %lhs_or_call5179, i32 0, i32 4
  %lhs_or_call5181 = load %Node** %path5180
  store %Node* %lhs_or_call5181, %Node** %vdecl_slot5153
  br label %__merge1674

__fresh1695:
  br label %__else1675

__else1675:
  %lhs_or_call5182 = load %Node** %vdecl_slot5153
  store %Node* %lhs_or_call5182, %Node** %vdecl_slot5155
  %lhs_or_call5183 = load %Node** %ifnull_slot5166
  %path5184 = getelementptr %Node* %lhs_or_call5183, i32 0, i32 5
  %lhs_or_call5185 = load %Node** %path5184
  store %Node* %lhs_or_call5185, %Node** %vdecl_slot5153
  br label %__merge1674

__merge1674:
  br label %__merge1677

__merge1677:
  br label %__merge1680

__fresh1696:
  br label %__else1681

__else1681:
  br label %__merge1680

__merge1680:
  br label %__cond1673

__fresh1697:
  br label %__post1671

__post1671:
  %lhs_or_call5186 = load i32* %vdecl_slot5156
  %bop5187 = icmp eq i32 %lhs_or_call5186, 0
  br i1 %bop5187, label %__then1688, label %__else1687

__fresh1698:
  br label %__then1688

__then1688:
  call void @print_string( i8* @_const_str634 )
  call void @oat_abort( i32 -1 )
  br label %__merge1686

__fresh1699:
  br label %__else1687

__else1687:
  %lhs_or_call5188 = load %Node** %vdecl_slot5153
  %ifnull_slot5189 = alloca %Node*
  store %Node* %lhs_or_call5188, %Node** %ifnull_slot5189
  %ifnull_guard5190 = icmp ne %Node* %lhs_or_call5188, null
  br i1 %ifnull_guard5190, label %__then1685, label %__else1684

__fresh1700:
  br label %__then1685

__then1685:
  %vtmp5193 = getelementptr %BST* %_this1, i32 0, i32 0
  %vtable5192 = load %_BST_vtable** %vtmp5193
  %fptmp5194 = getelementptr %_BST_vtable* %vtable5192, i32 0, i32 5
  %method5195 = load void (%BST*, %Node*)** %fptmp5194
  %lhs_or_call5191 = load %Node** %ifnull_slot5189
  call void %method5195( %BST* %_this1, %Node* %lhs_or_call5191 )
  br label %__merge1683

__fresh1701:
  br label %__else1684

__else1684:
  call void @print_string( i8* @_const_str635 )
  call void @oat_abort( i32 -1 )
  br label %__merge1683

__merge1683:
  br label %__merge1686

__merge1686:
  ret void
}


define i32 @_BST_find (%BST* %_this1, i32 %x5115){
__fresh1662:
  %x_slot5116 = alloca i32
  store i32 %x5115, i32* %x_slot5116
  %path5117 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5118 = load %Node** %path5117
  %vdecl_slot5119 = alloca %Node*
  store %Node* %lhs_or_call5118, %Node** %vdecl_slot5119
  %vdecl_slot5120 = alloca i32
  store i32 0, i32* %vdecl_slot5120
  br label %__cond1652

__cond1652:
  %lhs_or_call5121 = load i32* %vdecl_slot5120
  %bop5122 = icmp eq i32 %lhs_or_call5121, 0
  %lhs_or_call5123 = load %Node** %vdecl_slot5119
  %cast_op5124 = bitcast i8* null to %Object* 
  %cast_op5125 = bitcast %Node* %lhs_or_call5123 to %Object* 
  %ret5126 = call i1 @equals ( %Object* %cast_op5125, %Object* %cast_op5124 )
  %unop5127 = icmp eq i1 %ret5126, 0
  %bop5128 = and i1 %bop5122, %unop5127
  br i1 %bop5128, label %__body1651, label %__post1650

__fresh1663:
  br label %__body1651

__body1651:
  %lhs_or_call5129 = load %Node** %vdecl_slot5119
  %ifnull_slot5130 = alloca %Node*
  store %Node* %lhs_or_call5129, %Node** %ifnull_slot5130
  %ifnull_guard5131 = icmp ne %Node* %lhs_or_call5129, null
  br i1 %ifnull_guard5131, label %__then1661, label %__else1660

__fresh1664:
  br label %__then1661

__then1661:
  %lhs_or_call5132 = load i32* %x_slot5116
  %lhs_or_call5133 = load %Node** %ifnull_slot5130
  %path5134 = getelementptr %Node* %lhs_or_call5133, i32 0, i32 2
  %lhs_or_call5135 = load i32* %path5134
  %bop5136 = icmp eq i32 %lhs_or_call5132, %lhs_or_call5135
  br i1 %bop5136, label %__then1658, label %__else1657

__fresh1665:
  br label %__then1658

__then1658:
  store i32 1, i32* %vdecl_slot5120
  br label %__merge1656

__fresh1666:
  br label %__else1657

__else1657:
  %lhs_or_call5137 = load i32* %x_slot5116
  %lhs_or_call5138 = load %Node** %ifnull_slot5130
  %path5139 = getelementptr %Node* %lhs_or_call5138, i32 0, i32 2
  %lhs_or_call5140 = load i32* %path5139
  %bop5141 = icmp slt i32 %lhs_or_call5137, %lhs_or_call5140
  br i1 %bop5141, label %__then1655, label %__else1654

__fresh1667:
  br label %__then1655

__then1655:
  %lhs_or_call5142 = load %Node** %ifnull_slot5130
  %path5143 = getelementptr %Node* %lhs_or_call5142, i32 0, i32 4
  %lhs_or_call5144 = load %Node** %path5143
  store %Node* %lhs_or_call5144, %Node** %vdecl_slot5119
  br label %__merge1653

__fresh1668:
  br label %__else1654

__else1654:
  %lhs_or_call5145 = load %Node** %ifnull_slot5130
  %path5146 = getelementptr %Node* %lhs_or_call5145, i32 0, i32 5
  %lhs_or_call5147 = load %Node** %path5146
  store %Node* %lhs_or_call5147, %Node** %vdecl_slot5119
  br label %__merge1653

__merge1653:
  br label %__merge1656

__merge1656:
  br label %__merge1659

__fresh1669:
  br label %__else1660

__else1660:
  br label %__merge1659

__merge1659:
  br label %__cond1652

__fresh1670:
  br label %__post1650

__post1650:
  %lhs_or_call5148 = load i32* %vdecl_slot5120
  ret i32 %lhs_or_call5148
}


define void @_BST_insert (%BST* %_this1, i32 %x5052){
__fresh1635:
  %x_slot5053 = alloca i32
  store i32 %x5052, i32* %x_slot5053
  %path5054 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5055 = load %Node** %path5054
  %vdecl_slot5056 = alloca %Node*
  store %Node* %lhs_or_call5055, %Node** %vdecl_slot5056
  %cast_op5057 = bitcast i8* null to %Node* 
  %vdecl_slot5058 = alloca %Node*
  store %Node* %cast_op5057, %Node** %vdecl_slot5058
  %vdecl_slot5059 = alloca i32
  store i32 0, i32* %vdecl_slot5059
  br label %__cond1616

__cond1616:
  %lhs_or_call5060 = load i32* %vdecl_slot5059
  %bop5061 = icmp eq i32 %lhs_or_call5060, 0
  %lhs_or_call5062 = load %Node** %vdecl_slot5056
  %cast_op5063 = bitcast i8* null to %Object* 
  %cast_op5064 = bitcast %Node* %lhs_or_call5062 to %Object* 
  %ret5065 = call i1 @equals ( %Object* %cast_op5064, %Object* %cast_op5063 )
  %unop5066 = icmp eq i1 %ret5065, 0
  %bop5067 = and i1 %bop5061, %unop5066
  br i1 %bop5067, label %__body1615, label %__post1614

__fresh1636:
  br label %__body1615

__body1615:
  %lhs_or_call5068 = load %Node** %vdecl_slot5056
  %ifnull_slot5069 = alloca %Node*
  store %Node* %lhs_or_call5068, %Node** %ifnull_slot5069
  %ifnull_guard5070 = icmp ne %Node* %lhs_or_call5068, null
  br i1 %ifnull_guard5070, label %__then1625, label %__else1624

__fresh1637:
  br label %__then1625

__then1625:
  %lhs_or_call5071 = load i32* %x_slot5053
  %lhs_or_call5072 = load %Node** %ifnull_slot5069
  %path5073 = getelementptr %Node* %lhs_or_call5072, i32 0, i32 2
  %lhs_or_call5074 = load i32* %path5073
  %bop5075 = icmp eq i32 %lhs_or_call5071, %lhs_or_call5074
  br i1 %bop5075, label %__then1622, label %__else1621

__fresh1638:
  br label %__then1622

__then1622:
  store i32 1, i32* %vdecl_slot5059
  br label %__merge1620

__fresh1639:
  br label %__else1621

__else1621:
  %lhs_or_call5076 = load i32* %x_slot5053
  %lhs_or_call5077 = load %Node** %ifnull_slot5069
  %path5078 = getelementptr %Node* %lhs_or_call5077, i32 0, i32 2
  %lhs_or_call5079 = load i32* %path5078
  %bop5080 = icmp slt i32 %lhs_or_call5076, %lhs_or_call5079
  br i1 %bop5080, label %__then1619, label %__else1618

__fresh1640:
  br label %__then1619

__then1619:
  %lhs_or_call5081 = load %Node** %vdecl_slot5056
  store %Node* %lhs_or_call5081, %Node** %vdecl_slot5058
  %lhs_or_call5082 = load %Node** %ifnull_slot5069
  %path5083 = getelementptr %Node* %lhs_or_call5082, i32 0, i32 4
  %lhs_or_call5084 = load %Node** %path5083
  store %Node* %lhs_or_call5084, %Node** %vdecl_slot5056
  br label %__merge1617

__fresh1641:
  br label %__else1618

__else1618:
  %lhs_or_call5085 = load %Node** %vdecl_slot5056
  store %Node* %lhs_or_call5085, %Node** %vdecl_slot5058
  %lhs_or_call5086 = load %Node** %ifnull_slot5069
  %path5087 = getelementptr %Node* %lhs_or_call5086, i32 0, i32 5
  %lhs_or_call5088 = load %Node** %path5087
  store %Node* %lhs_or_call5088, %Node** %vdecl_slot5056
  br label %__merge1617

__merge1617:
  br label %__merge1620

__merge1620:
  br label %__merge1623

__fresh1642:
  br label %__else1624

__else1624:
  br label %__merge1623

__merge1623:
  br label %__cond1616

__fresh1643:
  br label %__post1614

__post1614:
  %lhs_or_call5089 = load i32* %vdecl_slot5059
  %bop5090 = icmp eq i32 %lhs_or_call5089, 0
  br i1 %bop5090, label %__then1634, label %__else1633

__fresh1644:
  br label %__then1634

__then1634:
  %lhs_or_call5091 = load i32* %x_slot5053
  %mem_ptr5092 = call i32* @oat_malloc ( i32 24 )
  %obj5093 = bitcast i32* %mem_ptr5092 to %Node* 
  %new_obj5094 = call %Node* @_Node_ctor ( %Node* %obj5093, i32 %lhs_or_call5091 )
  %vdecl_slot5095 = alloca %Node*
  store %Node* %new_obj5094, %Node** %vdecl_slot5095
  %lhs_or_call5096 = load %Node** %vdecl_slot5095
  %path5097 = getelementptr %Node* %lhs_or_call5096, i32 0, i32 3
  %lhs_or_call5098 = load %Node** %vdecl_slot5058
  store %Node* %lhs_or_call5098, %Node** %path5097
  %lhs_or_call5099 = load %Node** %vdecl_slot5058
  %ifnull_slot5100 = alloca %Node*
  store %Node* %lhs_or_call5099, %Node** %ifnull_slot5100
  %ifnull_guard5101 = icmp ne %Node* %lhs_or_call5099, null
  br i1 %ifnull_guard5101, label %__then1631, label %__else1630

__fresh1645:
  br label %__then1631

__then1631:
  %lhs_or_call5102 = load i32* %x_slot5053
  %lhs_or_call5103 = load %Node** %ifnull_slot5100
  %path5104 = getelementptr %Node* %lhs_or_call5103, i32 0, i32 2
  %lhs_or_call5105 = load i32* %path5104
  %bop5106 = icmp slt i32 %lhs_or_call5102, %lhs_or_call5105
  br i1 %bop5106, label %__then1628, label %__else1627

__fresh1646:
  br label %__then1628

__then1628:
  %lhs_or_call5107 = load %Node** %ifnull_slot5100
  %path5108 = getelementptr %Node* %lhs_or_call5107, i32 0, i32 4
  %lhs_or_call5109 = load %Node** %vdecl_slot5095
  store %Node* %lhs_or_call5109, %Node** %path5108
  br label %__merge1626

__fresh1647:
  br label %__else1627

__else1627:
  %lhs_or_call5110 = load %Node** %ifnull_slot5100
  %path5111 = getelementptr %Node* %lhs_or_call5110, i32 0, i32 5
  %lhs_or_call5112 = load %Node** %vdecl_slot5095
  store %Node* %lhs_or_call5112, %Node** %path5111
  br label %__merge1626

__merge1626:
  br label %__merge1629

__fresh1648:
  br label %__else1630

__else1630:
  %path5113 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5114 = load %Node** %vdecl_slot5095
  store %Node* %lhs_or_call5114, %Node** %path5113
  br label %__merge1629

__merge1629:
  br label %__merge1632

__fresh1649:
  br label %__else1633

__else1633:
  br label %__merge1632

__merge1632:
  ret void
}


define %BST* @_BST_ctor (%BST* %_this1){
__fresh1613:
  %cast_op5046 = bitcast %BST* %_this1 to %Object* 
  %dummy5047 = call %Object* @_Object_ctor ( %Object* %cast_op5046 )
  %path5048 = getelementptr %BST* %_this1, i32 0, i32 1
  store i8* @_const_str633, i8** %path5048
  %vt_slot5049 = getelementptr %BST* %_this1, i32 0, i32 0
  store %_BST_vtable* @_BST_vtable630, %_BST_vtable** %vt_slot5049
  %path5050 = getelementptr %BST* %_this1, i32 0, i32 2
  %cast_op5051 = bitcast i8* null to %Node* 
  store %Node* %cast_op5051, %Node** %path5050
  ret %BST* %_this1
}


define %Node* @_Node_ctor (%Node* %_this1, i32 %val5032){
__fresh1612:
  %val_slot5033 = alloca i32
  store i32 %val5032, i32* %val_slot5033
  %cast_op5034 = bitcast %Node* %_this1 to %Object* 
  %dummy5035 = call %Object* @_Object_ctor ( %Object* %cast_op5034 )
  %path5036 = getelementptr %Node* %_this1, i32 0, i32 1
  store i8* @_const_str632, i8** %path5036
  %vt_slot5037 = getelementptr %Node* %_this1, i32 0, i32 0
  store %_Node_vtable* @_Node_vtable629, %_Node_vtable** %vt_slot5037
  %path5038 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5039 = load i32* %val_slot5033
  store i32 %lhs_or_call5039, i32* %path5038
  %path5040 = getelementptr %Node* %_this1, i32 0, i32 3
  %cast_op5041 = bitcast i8* null to %Node* 
  store %Node* %cast_op5041, %Node** %path5040
  %path5042 = getelementptr %Node* %_this1, i32 0, i32 4
  %cast_op5043 = bitcast i8* null to %Node* 
  store %Node* %cast_op5043, %Node** %path5042
  %path5044 = getelementptr %Node* %_this1, i32 0, i32 5
  %cast_op5045 = bitcast i8* null to %Node* 
  store %Node* %cast_op5045, %Node** %path5044
  ret %Node* %_this1
}


define i1 @equals (%Object* %o15027, %Object* %o25025){
__fresh1611:
  %o1_slot5028 = alloca %Object*
  store %Object* %o15027, %Object** %o1_slot5028
  %o2_slot5026 = alloca %Object*
  store %Object* %o25025, %Object** %o2_slot5026
  %lhs_or_call5029 = load %Object** %o1_slot5028
  %lhs_or_call5030 = load %Object** %o2_slot5026
  %bop5031 = icmp eq %Object* %lhs_or_call5029, %lhs_or_call5030
  ret i1 %bop5031
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1610:
  %path5023 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5024 = load i8** %path5023
  ret i8* %lhs_or_call5024
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1609:
  %path5021 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str631, i8** %path5021
  %vt_slot5022 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable628, %_Object_vtable** %vt_slot5022
  ret %Object* %_this1
}



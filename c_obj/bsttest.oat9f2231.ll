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


define i32 @program (i32 %argc5337, { i32, [ 0 x i8* ] }* %argv5335){
__fresh1764:
  %argc_slot5338 = alloca i32
  store i32 %argc5337, i32* %argc_slot5338
  %argv_slot5336 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5335, { i32, [ 0 x i8* ] }** %argv_slot5336
  %vdecl_slot5339 = alloca i32
  store i32 0, i32* %vdecl_slot5339
  %lhs_or_call5340 = load %BST** @t638
  %vtmp5342 = getelementptr %BST* %lhs_or_call5340, i32 0, i32 0
  %vtable5341 = load %_BST_vtable** %vtmp5342
  %fptmp5343 = getelementptr %_BST_vtable* %vtable5341, i32 0, i32 2
  %method5344 = load void (%BST*, i32)** %fptmp5343
  call void %method5344( %BST* %lhs_or_call5340, i32 3 )
  %lhs_or_call5345 = load %BST** @t638
  %vtmp5347 = getelementptr %BST* %lhs_or_call5345, i32 0, i32 0
  %vtable5346 = load %_BST_vtable** %vtmp5347
  %fptmp5348 = getelementptr %_BST_vtable* %vtable5346, i32 0, i32 2
  %method5349 = load void (%BST*, i32)** %fptmp5348
  call void %method5349( %BST* %lhs_or_call5345, i32 1 )
  %lhs_or_call5350 = load %BST** @t638
  %vtmp5352 = getelementptr %BST* %lhs_or_call5350, i32 0, i32 0
  %vtable5351 = load %_BST_vtable** %vtmp5352
  %fptmp5353 = getelementptr %_BST_vtable* %vtable5351, i32 0, i32 2
  %method5354 = load void (%BST*, i32)** %fptmp5353
  call void %method5354( %BST* %lhs_or_call5350, i32 0 )
  %lhs_or_call5355 = load %BST** @t638
  %vtmp5357 = getelementptr %BST* %lhs_or_call5355, i32 0, i32 0
  %vtable5356 = load %_BST_vtable** %vtmp5357
  %fptmp5358 = getelementptr %_BST_vtable* %vtable5356, i32 0, i32 2
  %method5359 = load void (%BST*, i32)** %fptmp5358
  call void %method5359( %BST* %lhs_or_call5355, i32 5 )
  %lhs_or_call5360 = load %BST** @t638
  %vtmp5362 = getelementptr %BST* %lhs_or_call5360, i32 0, i32 0
  %vtable5361 = load %_BST_vtable** %vtmp5362
  %fptmp5363 = getelementptr %_BST_vtable* %vtable5361, i32 0, i32 2
  %method5364 = load void (%BST*, i32)** %fptmp5363
  call void %method5364( %BST* %lhs_or_call5360, i32 2 )
  %lhs_or_call5365 = load %BST** @t638
  %vtmp5367 = getelementptr %BST* %lhs_or_call5365, i32 0, i32 0
  %vtable5366 = load %_BST_vtable** %vtmp5367
  %fptmp5368 = getelementptr %_BST_vtable* %vtable5366, i32 0, i32 2
  %method5369 = load void (%BST*, i32)** %fptmp5368
  call void %method5369( %BST* %lhs_or_call5365, i32 4 )
  %lhs_or_call5370 = load %BST** @t638
  %vtmp5372 = getelementptr %BST* %lhs_or_call5370, i32 0, i32 0
  %vtable5371 = load %_BST_vtable** %vtmp5372
  %fptmp5373 = getelementptr %_BST_vtable* %vtable5371, i32 0, i32 3
  %method5374 = load i32 (%BST*, i32)** %fptmp5373
  %ret5375 = call i32 %method5374 ( %BST* %lhs_or_call5370, i32 0 )
  %vdecl_slot5376 = alloca i32
  store i32 %ret5375, i32* %vdecl_slot5376
  %lhs_or_call5377 = load %BST** @t638
  %vtmp5379 = getelementptr %BST* %lhs_or_call5377, i32 0, i32 0
  %vtable5378 = load %_BST_vtable** %vtmp5379
  %fptmp5380 = getelementptr %_BST_vtable* %vtable5378, i32 0, i32 4
  %method5381 = load void (%BST*, i32)** %fptmp5380
  call void %method5381( %BST* %lhs_or_call5377, i32 3 )
  %lhs_or_call5382 = load %BST** @t638
  %vtmp5384 = getelementptr %BST* %lhs_or_call5382, i32 0, i32 0
  %vtable5383 = load %_BST_vtable** %vtmp5384
  %fptmp5385 = getelementptr %_BST_vtable* %vtable5383, i32 0, i32 3
  %method5386 = load i32 (%BST*, i32)** %fptmp5385
  %ret5387 = call i32 %method5386 ( %BST* %lhs_or_call5382, i32 5 )
  %vdecl_slot5388 = alloca i32
  store i32 %ret5387, i32* %vdecl_slot5388
  %lhs_or_call5389 = load %BST** @t638
  %vtmp5391 = getelementptr %BST* %lhs_or_call5389, i32 0, i32 0
  %vtable5390 = load %_BST_vtable** %vtmp5391
  %fptmp5392 = getelementptr %_BST_vtable* %vtable5390, i32 0, i32 3
  %method5393 = load i32 (%BST*, i32)** %fptmp5392
  %ret5394 = call i32 %method5393 ( %BST* %lhs_or_call5389, i32 3 )
  %vdecl_slot5395 = alloca i32
  store i32 %ret5394, i32* %vdecl_slot5395
  %lhs_or_call5396 = load i32* %vdecl_slot5376
  %bop5397 = mul i32 100, %lhs_or_call5396
  %lhs_or_call5398 = load i32* %vdecl_slot5388
  %bop5399 = mul i32 10, %lhs_or_call5398
  %bop5400 = add i32 %bop5397, %bop5399
  %lhs_or_call5401 = load i32* %vdecl_slot5395
  %bop5402 = add i32 %bop5400, %lhs_or_call5401
  store i32 %bop5402, i32* %vdecl_slot5339
  %lhs_or_call5403 = load i32* %vdecl_slot5339
  ret i32 %lhs_or_call5403
}


define void @t638.init639 (){
__fresh1763:
  %mem_ptr5332 = call i32* @oat_malloc ( i32 12 )
  %obj5333 = bitcast i32* %mem_ptr5332 to %BST* 
  %new_obj5334 = call %BST* @_BST_ctor ( %BST* %obj5333 )
  store %BST* %new_obj5334, %BST** @t638
  ret void
}


define void @_BST_remove_node (%BST* %_this1, %Node* %c5205){
__fresh1738:
  %c_slot5206 = alloca %Node*
  store %Node* %c5205, %Node** %c_slot5206
  %lhs_or_call5207 = load %Node** %c_slot5206
  %path5208 = getelementptr %Node* %lhs_or_call5207, i32 0, i32 4
  %lhs_or_call5209 = load %Node** %path5208
  %cast_op5210 = bitcast i8* null to %Object* 
  %cast_op5211 = bitcast %Node* %lhs_or_call5209 to %Object* 
  %ret5212 = call i1 @equals ( %Object* %cast_op5211, %Object* %cast_op5210 )
  %lhs_or_call5213 = load %Node** %c_slot5206
  %path5214 = getelementptr %Node* %lhs_or_call5213, i32 0, i32 5
  %lhs_or_call5215 = load %Node** %path5214
  %cast_op5216 = bitcast i8* null to %Object* 
  %cast_op5217 = bitcast %Node* %lhs_or_call5215 to %Object* 
  %ret5218 = call i1 @equals ( %Object* %cast_op5217, %Object* %cast_op5216 )
  %bop5219 = and i1 %ret5212, %ret5218
  br i1 %bop5219, label %__then1737, label %__else1736

__fresh1739:
  br label %__then1737

__then1737:
  %lhs_or_call5220 = load %Node** %c_slot5206
  %path5221 = getelementptr %Node* %lhs_or_call5220, i32 0, i32 3
  %lhs_or_call5222 = load %Node** %path5221
  %ifnull_slot5223 = alloca %Node*
  store %Node* %lhs_or_call5222, %Node** %ifnull_slot5223
  %ifnull_guard5224 = icmp ne %Node* %lhs_or_call5222, null
  br i1 %ifnull_guard5224, label %__then1707, label %__else1706

__fresh1740:
  br label %__then1707

__then1707:
  %lhs_or_call5225 = load %Node** %c_slot5206
  %lhs_or_call5226 = load %Node** %ifnull_slot5223
  %path5227 = getelementptr %Node* %lhs_or_call5226, i32 0, i32 4
  %lhs_or_call5228 = load %Node** %path5227
  %cast_op5229 = bitcast %Node* %lhs_or_call5225 to %Object* 
  %cast_op5230 = bitcast %Node* %lhs_or_call5228 to %Object* 
  %ret5231 = call i1 @equals ( %Object* %cast_op5230, %Object* %cast_op5229 )
  br i1 %ret5231, label %__then1704, label %__else1703

__fresh1741:
  br label %__then1704

__then1704:
  %lhs_or_call5232 = load %Node** %ifnull_slot5223
  %path5233 = getelementptr %Node* %lhs_or_call5232, i32 0, i32 4
  %cast_op5234 = bitcast i8* null to %Node* 
  store %Node* %cast_op5234, %Node** %path5233
  br label %__merge1702

__fresh1742:
  br label %__else1703

__else1703:
  %lhs_or_call5235 = load %Node** %ifnull_slot5223
  %path5236 = getelementptr %Node* %lhs_or_call5235, i32 0, i32 5
  %cast_op5237 = bitcast i8* null to %Node* 
  store %Node* %cast_op5237, %Node** %path5236
  br label %__merge1702

__merge1702:
  br label %__merge1705

__fresh1743:
  br label %__else1706

__else1706:
  %path5238 = getelementptr %BST* %_this1, i32 0, i32 2
  %cast_op5239 = bitcast i8* null to %Node* 
  store %Node* %cast_op5239, %Node** %path5238
  br label %__merge1705

__merge1705:
  br label %__merge1735

__fresh1744:
  br label %__else1736

__else1736:
  %lhs_or_call5240 = load %Node** %c_slot5206
  %path5241 = getelementptr %Node* %lhs_or_call5240, i32 0, i32 4
  %lhs_or_call5242 = load %Node** %path5241
  %cast_op5243 = bitcast i8* null to %Object* 
  %cast_op5244 = bitcast %Node* %lhs_or_call5242 to %Object* 
  %ret5245 = call i1 @equals ( %Object* %cast_op5244, %Object* %cast_op5243 )
  br i1 %ret5245, label %__then1734, label %__else1733

__fresh1745:
  br label %__then1734

__then1734:
  %lhs_or_call5246 = load %Node** %c_slot5206
  %path5247 = getelementptr %Node* %lhs_or_call5246, i32 0, i32 3
  %lhs_or_call5248 = load %Node** %path5247
  %ifnull_slot5249 = alloca %Node*
  store %Node* %lhs_or_call5248, %Node** %ifnull_slot5249
  %ifnull_guard5250 = icmp ne %Node* %lhs_or_call5248, null
  br i1 %ifnull_guard5250, label %__then1713, label %__else1712

__fresh1746:
  br label %__then1713

__then1713:
  %lhs_or_call5251 = load %Node** %c_slot5206
  %lhs_or_call5252 = load %Node** %ifnull_slot5249
  %path5253 = getelementptr %Node* %lhs_or_call5252, i32 0, i32 4
  %lhs_or_call5254 = load %Node** %path5253
  %cast_op5255 = bitcast %Node* %lhs_or_call5251 to %Object* 
  %cast_op5256 = bitcast %Node* %lhs_or_call5254 to %Object* 
  %ret5257 = call i1 @equals ( %Object* %cast_op5256, %Object* %cast_op5255 )
  br i1 %ret5257, label %__then1710, label %__else1709

__fresh1747:
  br label %__then1710

__then1710:
  %lhs_or_call5258 = load %Node** %ifnull_slot5249
  %path5259 = getelementptr %Node* %lhs_or_call5258, i32 0, i32 4
  %lhs_or_call5260 = load %Node** %c_slot5206
  %path5261 = getelementptr %Node* %lhs_or_call5260, i32 0, i32 5
  %lhs_or_call5262 = load %Node** %path5261
  store %Node* %lhs_or_call5262, %Node** %path5259
  br label %__merge1708

__fresh1748:
  br label %__else1709

__else1709:
  %lhs_or_call5263 = load %Node** %ifnull_slot5249
  %path5264 = getelementptr %Node* %lhs_or_call5263, i32 0, i32 5
  %lhs_or_call5265 = load %Node** %c_slot5206
  %path5266 = getelementptr %Node* %lhs_or_call5265, i32 0, i32 5
  %lhs_or_call5267 = load %Node** %path5266
  store %Node* %lhs_or_call5267, %Node** %path5264
  br label %__merge1708

__merge1708:
  br label %__merge1711

__fresh1749:
  br label %__else1712

__else1712:
  %path5268 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5269 = load %Node** %c_slot5206
  %path5270 = getelementptr %Node* %lhs_or_call5269, i32 0, i32 5
  %lhs_or_call5271 = load %Node** %path5270
  store %Node* %lhs_or_call5271, %Node** %path5268
  br label %__merge1711

__merge1711:
  br label %__merge1732

__fresh1750:
  br label %__else1733

__else1733:
  %lhs_or_call5272 = load %Node** %c_slot5206
  %path5273 = getelementptr %Node* %lhs_or_call5272, i32 0, i32 5
  %lhs_or_call5274 = load %Node** %path5273
  %cast_op5275 = bitcast i8* null to %Object* 
  %cast_op5276 = bitcast %Node* %lhs_or_call5274 to %Object* 
  %ret5277 = call i1 @equals ( %Object* %cast_op5276, %Object* %cast_op5275 )
  br i1 %ret5277, label %__then1731, label %__else1730

__fresh1751:
  br label %__then1731

__then1731:
  %lhs_or_call5278 = load %Node** %c_slot5206
  %path5279 = getelementptr %Node* %lhs_or_call5278, i32 0, i32 3
  %lhs_or_call5280 = load %Node** %path5279
  %ifnull_slot5281 = alloca %Node*
  store %Node* %lhs_or_call5280, %Node** %ifnull_slot5281
  %ifnull_guard5282 = icmp ne %Node* %lhs_or_call5280, null
  br i1 %ifnull_guard5282, label %__then1719, label %__else1718

__fresh1752:
  br label %__then1719

__then1719:
  %lhs_or_call5283 = load %Node** %c_slot5206
  %lhs_or_call5284 = load %Node** %ifnull_slot5281
  %path5285 = getelementptr %Node* %lhs_or_call5284, i32 0, i32 4
  %lhs_or_call5286 = load %Node** %path5285
  %cast_op5287 = bitcast %Node* %lhs_or_call5283 to %Object* 
  %cast_op5288 = bitcast %Node* %lhs_or_call5286 to %Object* 
  %ret5289 = call i1 @equals ( %Object* %cast_op5288, %Object* %cast_op5287 )
  br i1 %ret5289, label %__then1716, label %__else1715

__fresh1753:
  br label %__then1716

__then1716:
  %lhs_or_call5290 = load %Node** %ifnull_slot5281
  %path5291 = getelementptr %Node* %lhs_or_call5290, i32 0, i32 4
  %lhs_or_call5292 = load %Node** %c_slot5206
  %path5293 = getelementptr %Node* %lhs_or_call5292, i32 0, i32 4
  %lhs_or_call5294 = load %Node** %path5293
  store %Node* %lhs_or_call5294, %Node** %path5291
  br label %__merge1714

__fresh1754:
  br label %__else1715

__else1715:
  %lhs_or_call5295 = load %Node** %ifnull_slot5281
  %path5296 = getelementptr %Node* %lhs_or_call5295, i32 0, i32 5
  %lhs_or_call5297 = load %Node** %c_slot5206
  %path5298 = getelementptr %Node* %lhs_or_call5297, i32 0, i32 4
  %lhs_or_call5299 = load %Node** %path5298
  store %Node* %lhs_or_call5299, %Node** %path5296
  br label %__merge1714

__merge1714:
  br label %__merge1717

__fresh1755:
  br label %__else1718

__else1718:
  %path5300 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5301 = load %Node** %c_slot5206
  %path5302 = getelementptr %Node* %lhs_or_call5301, i32 0, i32 4
  %lhs_or_call5303 = load %Node** %path5302
  store %Node* %lhs_or_call5303, %Node** %path5300
  br label %__merge1717

__merge1717:
  br label %__merge1729

__fresh1756:
  br label %__else1730

__else1730:
  %lhs_or_call5304 = load %Node** %c_slot5206
  %path5305 = getelementptr %Node* %lhs_or_call5304, i32 0, i32 5
  %lhs_or_call5306 = load %Node** %path5305
  %ifnull_slot5307 = alloca %Node*
  store %Node* %lhs_or_call5306, %Node** %ifnull_slot5307
  %ifnull_guard5308 = icmp ne %Node* %lhs_or_call5306, null
  br i1 %ifnull_guard5308, label %__then1728, label %__else1727

__fresh1757:
  br label %__then1728

__then1728:
  br label %__cond1722

__cond1722:
  %lhs_or_call5309 = load %Node** %ifnull_slot5307
  %path5310 = getelementptr %Node* %lhs_or_call5309, i32 0, i32 4
  %lhs_or_call5311 = load %Node** %path5310
  %cast_op5312 = bitcast i8* null to %Object* 
  %cast_op5313 = bitcast %Node* %lhs_or_call5311 to %Object* 
  %ret5314 = call i1 @equals ( %Object* %cast_op5313, %Object* %cast_op5312 )
  %unop5315 = icmp eq i1 %ret5314, 0
  br i1 %unop5315, label %__body1721, label %__post1720

__fresh1758:
  br label %__body1721

__body1721:
  %lhs_or_call5316 = load %Node** %ifnull_slot5307
  %path5317 = getelementptr %Node* %lhs_or_call5316, i32 0, i32 4
  %lhs_or_call5318 = load %Node** %path5317
  %ifnull_slot5319 = alloca %Node*
  store %Node* %lhs_or_call5318, %Node** %ifnull_slot5319
  %ifnull_guard5320 = icmp ne %Node* %lhs_or_call5318, null
  br i1 %ifnull_guard5320, label %__then1725, label %__else1724

__fresh1759:
  br label %__then1725

__then1725:
  %lhs_or_call5321 = load %Node** %ifnull_slot5319
  store %Node* %lhs_or_call5321, %Node** %ifnull_slot5307
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
  %lhs_or_call5322 = load %Node** %c_slot5206
  %path5323 = getelementptr %Node* %lhs_or_call5322, i32 0, i32 2
  %lhs_or_call5324 = load %Node** %ifnull_slot5307
  %path5325 = getelementptr %Node* %lhs_or_call5324, i32 0, i32 2
  %lhs_or_call5326 = load i32* %path5325
  store i32 %lhs_or_call5326, i32* %path5323
  %vtmp5329 = getelementptr %BST* %_this1, i32 0, i32 0
  %vtable5328 = load %_BST_vtable** %vtmp5329
  %fptmp5330 = getelementptr %_BST_vtable* %vtable5328, i32 0, i32 5
  %method5331 = load void (%BST*, %Node*)** %fptmp5330
  %lhs_or_call5327 = load %Node** %ifnull_slot5307
  call void %method5331( %BST* %_this1, %Node* %lhs_or_call5327 )
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


define void @_BST_remove (%BST* %_this1, i32 %x5158){
__fresh1689:
  %x_slot5159 = alloca i32
  store i32 %x5158, i32* %x_slot5159
  %path5160 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5161 = load %Node** %path5160
  %vdecl_slot5162 = alloca %Node*
  store %Node* %lhs_or_call5161, %Node** %vdecl_slot5162
  %cast_op5163 = bitcast i8* null to %Node* 
  %vdecl_slot5164 = alloca %Node*
  store %Node* %cast_op5163, %Node** %vdecl_slot5164
  %vdecl_slot5165 = alloca i32
  store i32 0, i32* %vdecl_slot5165
  br label %__cond1673

__cond1673:
  %lhs_or_call5166 = load i32* %vdecl_slot5165
  %bop5167 = icmp eq i32 %lhs_or_call5166, 0
  %lhs_or_call5168 = load %Node** %vdecl_slot5162
  %cast_op5169 = bitcast i8* null to %Object* 
  %cast_op5170 = bitcast %Node* %lhs_or_call5168 to %Object* 
  %ret5171 = call i1 @equals ( %Object* %cast_op5170, %Object* %cast_op5169 )
  %unop5172 = icmp eq i1 %ret5171, 0
  %bop5173 = and i1 %bop5167, %unop5172
  br i1 %bop5173, label %__body1672, label %__post1671

__fresh1690:
  br label %__body1672

__body1672:
  %lhs_or_call5174 = load %Node** %vdecl_slot5162
  %ifnull_slot5175 = alloca %Node*
  store %Node* %lhs_or_call5174, %Node** %ifnull_slot5175
  %ifnull_guard5176 = icmp ne %Node* %lhs_or_call5174, null
  br i1 %ifnull_guard5176, label %__then1682, label %__else1681

__fresh1691:
  br label %__then1682

__then1682:
  %lhs_or_call5177 = load i32* %x_slot5159
  %lhs_or_call5178 = load %Node** %ifnull_slot5175
  %path5179 = getelementptr %Node* %lhs_or_call5178, i32 0, i32 2
  %lhs_or_call5180 = load i32* %path5179
  %bop5181 = icmp eq i32 %lhs_or_call5177, %lhs_or_call5180
  br i1 %bop5181, label %__then1679, label %__else1678

__fresh1692:
  br label %__then1679

__then1679:
  store i32 1, i32* %vdecl_slot5165
  br label %__merge1677

__fresh1693:
  br label %__else1678

__else1678:
  %lhs_or_call5182 = load i32* %x_slot5159
  %lhs_or_call5183 = load %Node** %ifnull_slot5175
  %path5184 = getelementptr %Node* %lhs_or_call5183, i32 0, i32 2
  %lhs_or_call5185 = load i32* %path5184
  %bop5186 = icmp slt i32 %lhs_or_call5182, %lhs_or_call5185
  br i1 %bop5186, label %__then1676, label %__else1675

__fresh1694:
  br label %__then1676

__then1676:
  %lhs_or_call5187 = load %Node** %vdecl_slot5162
  store %Node* %lhs_or_call5187, %Node** %vdecl_slot5164
  %lhs_or_call5188 = load %Node** %ifnull_slot5175
  %path5189 = getelementptr %Node* %lhs_or_call5188, i32 0, i32 4
  %lhs_or_call5190 = load %Node** %path5189
  store %Node* %lhs_or_call5190, %Node** %vdecl_slot5162
  br label %__merge1674

__fresh1695:
  br label %__else1675

__else1675:
  %lhs_or_call5191 = load %Node** %vdecl_slot5162
  store %Node* %lhs_or_call5191, %Node** %vdecl_slot5164
  %lhs_or_call5192 = load %Node** %ifnull_slot5175
  %path5193 = getelementptr %Node* %lhs_or_call5192, i32 0, i32 5
  %lhs_or_call5194 = load %Node** %path5193
  store %Node* %lhs_or_call5194, %Node** %vdecl_slot5162
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
  %lhs_or_call5195 = load i32* %vdecl_slot5165
  %bop5196 = icmp eq i32 %lhs_or_call5195, 0
  br i1 %bop5196, label %__then1688, label %__else1687

__fresh1698:
  br label %__then1688

__then1688:
  call void @print_string( i8* @_const_str634 )
  call void @oat_abort( i32 -1 )
  br label %__merge1686

__fresh1699:
  br label %__else1687

__else1687:
  %lhs_or_call5197 = load %Node** %vdecl_slot5162
  %ifnull_slot5198 = alloca %Node*
  store %Node* %lhs_or_call5197, %Node** %ifnull_slot5198
  %ifnull_guard5199 = icmp ne %Node* %lhs_or_call5197, null
  br i1 %ifnull_guard5199, label %__then1685, label %__else1684

__fresh1700:
  br label %__then1685

__then1685:
  %vtmp5202 = getelementptr %BST* %_this1, i32 0, i32 0
  %vtable5201 = load %_BST_vtable** %vtmp5202
  %fptmp5203 = getelementptr %_BST_vtable* %vtable5201, i32 0, i32 5
  %method5204 = load void (%BST*, %Node*)** %fptmp5203
  %lhs_or_call5200 = load %Node** %ifnull_slot5198
  call void %method5204( %BST* %_this1, %Node* %lhs_or_call5200 )
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


define i32 @_BST_find (%BST* %_this1, i32 %x5124){
__fresh1662:
  %x_slot5125 = alloca i32
  store i32 %x5124, i32* %x_slot5125
  %path5126 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5127 = load %Node** %path5126
  %vdecl_slot5128 = alloca %Node*
  store %Node* %lhs_or_call5127, %Node** %vdecl_slot5128
  %vdecl_slot5129 = alloca i32
  store i32 0, i32* %vdecl_slot5129
  br label %__cond1652

__cond1652:
  %lhs_or_call5130 = load i32* %vdecl_slot5129
  %bop5131 = icmp eq i32 %lhs_or_call5130, 0
  %lhs_or_call5132 = load %Node** %vdecl_slot5128
  %cast_op5133 = bitcast i8* null to %Object* 
  %cast_op5134 = bitcast %Node* %lhs_or_call5132 to %Object* 
  %ret5135 = call i1 @equals ( %Object* %cast_op5134, %Object* %cast_op5133 )
  %unop5136 = icmp eq i1 %ret5135, 0
  %bop5137 = and i1 %bop5131, %unop5136
  br i1 %bop5137, label %__body1651, label %__post1650

__fresh1663:
  br label %__body1651

__body1651:
  %lhs_or_call5138 = load %Node** %vdecl_slot5128
  %ifnull_slot5139 = alloca %Node*
  store %Node* %lhs_or_call5138, %Node** %ifnull_slot5139
  %ifnull_guard5140 = icmp ne %Node* %lhs_or_call5138, null
  br i1 %ifnull_guard5140, label %__then1661, label %__else1660

__fresh1664:
  br label %__then1661

__then1661:
  %lhs_or_call5141 = load i32* %x_slot5125
  %lhs_or_call5142 = load %Node** %ifnull_slot5139
  %path5143 = getelementptr %Node* %lhs_or_call5142, i32 0, i32 2
  %lhs_or_call5144 = load i32* %path5143
  %bop5145 = icmp eq i32 %lhs_or_call5141, %lhs_or_call5144
  br i1 %bop5145, label %__then1658, label %__else1657

__fresh1665:
  br label %__then1658

__then1658:
  store i32 1, i32* %vdecl_slot5129
  br label %__merge1656

__fresh1666:
  br label %__else1657

__else1657:
  %lhs_or_call5146 = load i32* %x_slot5125
  %lhs_or_call5147 = load %Node** %ifnull_slot5139
  %path5148 = getelementptr %Node* %lhs_or_call5147, i32 0, i32 2
  %lhs_or_call5149 = load i32* %path5148
  %bop5150 = icmp slt i32 %lhs_or_call5146, %lhs_or_call5149
  br i1 %bop5150, label %__then1655, label %__else1654

__fresh1667:
  br label %__then1655

__then1655:
  %lhs_or_call5151 = load %Node** %ifnull_slot5139
  %path5152 = getelementptr %Node* %lhs_or_call5151, i32 0, i32 4
  %lhs_or_call5153 = load %Node** %path5152
  store %Node* %lhs_or_call5153, %Node** %vdecl_slot5128
  br label %__merge1653

__fresh1668:
  br label %__else1654

__else1654:
  %lhs_or_call5154 = load %Node** %ifnull_slot5139
  %path5155 = getelementptr %Node* %lhs_or_call5154, i32 0, i32 5
  %lhs_or_call5156 = load %Node** %path5155
  store %Node* %lhs_or_call5156, %Node** %vdecl_slot5128
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
  %lhs_or_call5157 = load i32* %vdecl_slot5129
  ret i32 %lhs_or_call5157
}


define void @_BST_insert (%BST* %_this1, i32 %x5061){
__fresh1635:
  %x_slot5062 = alloca i32
  store i32 %x5061, i32* %x_slot5062
  %path5063 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5064 = load %Node** %path5063
  %vdecl_slot5065 = alloca %Node*
  store %Node* %lhs_or_call5064, %Node** %vdecl_slot5065
  %cast_op5066 = bitcast i8* null to %Node* 
  %vdecl_slot5067 = alloca %Node*
  store %Node* %cast_op5066, %Node** %vdecl_slot5067
  %vdecl_slot5068 = alloca i32
  store i32 0, i32* %vdecl_slot5068
  br label %__cond1616

__cond1616:
  %lhs_or_call5069 = load i32* %vdecl_slot5068
  %bop5070 = icmp eq i32 %lhs_or_call5069, 0
  %lhs_or_call5071 = load %Node** %vdecl_slot5065
  %cast_op5072 = bitcast i8* null to %Object* 
  %cast_op5073 = bitcast %Node* %lhs_or_call5071 to %Object* 
  %ret5074 = call i1 @equals ( %Object* %cast_op5073, %Object* %cast_op5072 )
  %unop5075 = icmp eq i1 %ret5074, 0
  %bop5076 = and i1 %bop5070, %unop5075
  br i1 %bop5076, label %__body1615, label %__post1614

__fresh1636:
  br label %__body1615

__body1615:
  %lhs_or_call5077 = load %Node** %vdecl_slot5065
  %ifnull_slot5078 = alloca %Node*
  store %Node* %lhs_or_call5077, %Node** %ifnull_slot5078
  %ifnull_guard5079 = icmp ne %Node* %lhs_or_call5077, null
  br i1 %ifnull_guard5079, label %__then1625, label %__else1624

__fresh1637:
  br label %__then1625

__then1625:
  %lhs_or_call5080 = load i32* %x_slot5062
  %lhs_or_call5081 = load %Node** %ifnull_slot5078
  %path5082 = getelementptr %Node* %lhs_or_call5081, i32 0, i32 2
  %lhs_or_call5083 = load i32* %path5082
  %bop5084 = icmp eq i32 %lhs_or_call5080, %lhs_or_call5083
  br i1 %bop5084, label %__then1622, label %__else1621

__fresh1638:
  br label %__then1622

__then1622:
  store i32 1, i32* %vdecl_slot5068
  br label %__merge1620

__fresh1639:
  br label %__else1621

__else1621:
  %lhs_or_call5085 = load i32* %x_slot5062
  %lhs_or_call5086 = load %Node** %ifnull_slot5078
  %path5087 = getelementptr %Node* %lhs_or_call5086, i32 0, i32 2
  %lhs_or_call5088 = load i32* %path5087
  %bop5089 = icmp slt i32 %lhs_or_call5085, %lhs_or_call5088
  br i1 %bop5089, label %__then1619, label %__else1618

__fresh1640:
  br label %__then1619

__then1619:
  %lhs_or_call5090 = load %Node** %vdecl_slot5065
  store %Node* %lhs_or_call5090, %Node** %vdecl_slot5067
  %lhs_or_call5091 = load %Node** %ifnull_slot5078
  %path5092 = getelementptr %Node* %lhs_or_call5091, i32 0, i32 4
  %lhs_or_call5093 = load %Node** %path5092
  store %Node* %lhs_or_call5093, %Node** %vdecl_slot5065
  br label %__merge1617

__fresh1641:
  br label %__else1618

__else1618:
  %lhs_or_call5094 = load %Node** %vdecl_slot5065
  store %Node* %lhs_or_call5094, %Node** %vdecl_slot5067
  %lhs_or_call5095 = load %Node** %ifnull_slot5078
  %path5096 = getelementptr %Node* %lhs_or_call5095, i32 0, i32 5
  %lhs_or_call5097 = load %Node** %path5096
  store %Node* %lhs_or_call5097, %Node** %vdecl_slot5065
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
  %lhs_or_call5098 = load i32* %vdecl_slot5068
  %bop5099 = icmp eq i32 %lhs_or_call5098, 0
  br i1 %bop5099, label %__then1634, label %__else1633

__fresh1644:
  br label %__then1634

__then1634:
  %lhs_or_call5100 = load i32* %x_slot5062
  %mem_ptr5101 = call i32* @oat_malloc ( i32 24 )
  %obj5102 = bitcast i32* %mem_ptr5101 to %Node* 
  %new_obj5103 = call %Node* @_Node_ctor ( %Node* %obj5102, i32 %lhs_or_call5100 )
  %vdecl_slot5104 = alloca %Node*
  store %Node* %new_obj5103, %Node** %vdecl_slot5104
  %lhs_or_call5105 = load %Node** %vdecl_slot5104
  %path5106 = getelementptr %Node* %lhs_or_call5105, i32 0, i32 3
  %lhs_or_call5107 = load %Node** %vdecl_slot5067
  store %Node* %lhs_or_call5107, %Node** %path5106
  %lhs_or_call5108 = load %Node** %vdecl_slot5067
  %ifnull_slot5109 = alloca %Node*
  store %Node* %lhs_or_call5108, %Node** %ifnull_slot5109
  %ifnull_guard5110 = icmp ne %Node* %lhs_or_call5108, null
  br i1 %ifnull_guard5110, label %__then1631, label %__else1630

__fresh1645:
  br label %__then1631

__then1631:
  %lhs_or_call5111 = load i32* %x_slot5062
  %lhs_or_call5112 = load %Node** %ifnull_slot5109
  %path5113 = getelementptr %Node* %lhs_or_call5112, i32 0, i32 2
  %lhs_or_call5114 = load i32* %path5113
  %bop5115 = icmp slt i32 %lhs_or_call5111, %lhs_or_call5114
  br i1 %bop5115, label %__then1628, label %__else1627

__fresh1646:
  br label %__then1628

__then1628:
  %lhs_or_call5116 = load %Node** %ifnull_slot5109
  %path5117 = getelementptr %Node* %lhs_or_call5116, i32 0, i32 4
  %lhs_or_call5118 = load %Node** %vdecl_slot5104
  store %Node* %lhs_or_call5118, %Node** %path5117
  br label %__merge1626

__fresh1647:
  br label %__else1627

__else1627:
  %lhs_or_call5119 = load %Node** %ifnull_slot5109
  %path5120 = getelementptr %Node* %lhs_or_call5119, i32 0, i32 5
  %lhs_or_call5121 = load %Node** %vdecl_slot5104
  store %Node* %lhs_or_call5121, %Node** %path5120
  br label %__merge1626

__merge1626:
  br label %__merge1629

__fresh1648:
  br label %__else1630

__else1630:
  %path5122 = getelementptr %BST* %_this1, i32 0, i32 2
  %lhs_or_call5123 = load %Node** %vdecl_slot5104
  store %Node* %lhs_or_call5123, %Node** %path5122
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
  %cast_op5055 = bitcast %BST* %_this1 to %Object* 
  %dummy5056 = call %Object* @_Object_ctor ( %Object* %cast_op5055 )
  %path5057 = getelementptr %BST* %_this1, i32 0, i32 1
  store i8* @_const_str633, i8** %path5057
  %vt_slot5058 = getelementptr %BST* %_this1, i32 0, i32 0
  store %_BST_vtable* @_BST_vtable630, %_BST_vtable** %vt_slot5058
  %path5059 = getelementptr %BST* %_this1, i32 0, i32 2
  %cast_op5060 = bitcast i8* null to %Node* 
  store %Node* %cast_op5060, %Node** %path5059
  ret %BST* %_this1
}


define %Node* @_Node_ctor (%Node* %_this1, i32 %val5041){
__fresh1612:
  %val_slot5042 = alloca i32
  store i32 %val5041, i32* %val_slot5042
  %cast_op5043 = bitcast %Node* %_this1 to %Object* 
  %dummy5044 = call %Object* @_Object_ctor ( %Object* %cast_op5043 )
  %path5045 = getelementptr %Node* %_this1, i32 0, i32 1
  store i8* @_const_str632, i8** %path5045
  %vt_slot5046 = getelementptr %Node* %_this1, i32 0, i32 0
  store %_Node_vtable* @_Node_vtable629, %_Node_vtable** %vt_slot5046
  %path5047 = getelementptr %Node* %_this1, i32 0, i32 2
  %lhs_or_call5048 = load i32* %val_slot5042
  store i32 %lhs_or_call5048, i32* %path5047
  %path5049 = getelementptr %Node* %_this1, i32 0, i32 3
  %cast_op5050 = bitcast i8* null to %Node* 
  store %Node* %cast_op5050, %Node** %path5049
  %path5051 = getelementptr %Node* %_this1, i32 0, i32 4
  %cast_op5052 = bitcast i8* null to %Node* 
  store %Node* %cast_op5052, %Node** %path5051
  %path5053 = getelementptr %Node* %_this1, i32 0, i32 5
  %cast_op5054 = bitcast i8* null to %Node* 
  store %Node* %cast_op5054, %Node** %path5053
  ret %Node* %_this1
}


define i1 @equals (%Object* %o15036, %Object* %o25034){
__fresh1611:
  %o1_slot5037 = alloca %Object*
  store %Object* %o15036, %Object** %o1_slot5037
  %o2_slot5035 = alloca %Object*
  store %Object* %o25034, %Object** %o2_slot5035
  %lhs_or_call5038 = load %Object** %o1_slot5037
  %lhs_or_call5039 = load %Object** %o2_slot5035
  %bop5040 = icmp eq %Object* %lhs_or_call5038, %lhs_or_call5039
  ret i1 %bop5040
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1610:
  %path5032 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5033 = load i8** %path5032
  ret i8* %lhs_or_call5033
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh1609:
  %path5030 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str631, i8** %path5030
  %vt_slot5031 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable628, %_Object_vtable** %vt_slot5031
  ret %Object* %_this1
}



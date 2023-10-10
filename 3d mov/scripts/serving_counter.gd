extends StaticBody3D

signal sig_cooked_patty_served
signal sig_cheese_slice_served
signal sig_top_bun_served
signal sig_bottom_bun_served
signal sig_tomato1_served
signal sig_tomato2_served
signal sig_tomato3_served
signal sig_tomato_slices_served

signal sig_cooked_patty_unserved
signal sig_cheese_slice_unserved
signal sig_top_bun_unserved
signal sig_bottom_bun_unserved
signal sig_tomato1_unserved
signal sig_tomato2_unserved
signal sig_tomato3_unserved
signal sig_tomato_slices_unserved

#var total_points = 0
var cooked_chicken_served = false
var cooked_vegetable_served = false
var cut_vegetable_served = false
var cooked_whole_chicken_served = false
var cooked_patty_served = false
var cheese_slice_served = false
var top_bun_served = false
var bottom_bun_served = false
var tomato1_served = false
var tomato2_served = false
var tomato3_served = false

func _static(body, item):
	add_sibling(item)
	body.queue_free()

func _on_serving_area_body_entered(body):
	if top_bun_served == false:
		if body.has_meta("top_bun"):
			print("Serving top bun.")
			emit_signal("sig_top_bun_served")
			top_bun_served = true
			var item = load("res://scenes/static_top_bun.tscn").instantiate()
			_static(body, item)

	if cooked_patty_served == false:
		if body.has_meta("cooked_patty"):
			print("Serving cooked patty.")
			emit_signal("sig_cooked_patty_served")
			cooked_patty_served = true
			var item = load("res://scenes/static_cooked_patty.tscn").instantiate()
			_static(body, item)

	if cheese_slice_served == false:
		if body.has_meta("cheese_slice"):
			print("Serving cheese slice.")
			emit_signal("sig_cheese_slice_served")
			cheese_slice_served = true
			var item = load("res://scenes/static_cheese_slice.tscn").instantiate()
			_static(body, item)

	if bottom_bun_served == false:
		if body.has_meta("bottom_bun"):
			print("Serving bottom bun.")
			emit_signal("sig_bottom_bun_served")
			bottom_bun_served = true
			var item = load("res://scenes/static_bottom_bun.tscn").instantiate()
			_static(body, item)

	if tomato2_served == true:
		if body.has_meta("sliced_tomato"):
			print("serving sliced tomato3")
			var item = load("res://scenes/static_sliced_tomato_3.tscn").instantiate()
			_static(body, item)
			tomato3_served = true
			emit_signal("sig_tomato3_served")
			emit_signal("sig_tomato_slices_served")
	elif tomato1_served == true:
		if body.has_meta("sliced_tomato"):
			print("serving sliced tomato2")
			var item = load("res://scenes/static_sliced_tomato_2.tscn").instantiate()
			_static(body, item)
			tomato2_served = true
			emit_signal("sig_tomato2_served")
	elif tomato1_served == false:
		if body.has_meta("sliced_tomato"):
			print("serving sliced tomato1")
			var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
			_static(body, item)
			tomato1_served = true
			emit_signal("sig_tomato1_served")
			


#func _on_serving_area_body_exited(body):
#	if top_bun_served == true:
#		if body.has_meta("top_bun"):
#			print("unserving top bun")
#			emit_signal("sig_top_bun_unserved")
#			top_bun_served = false
#
#	if cheese_slice_served == true:
#		if body.has_meta("cheese_slice"):
#			print("unserving cheese slice")
#			emit_signal("sig_cheese_slice_unserved")
#			cheese_slice_served = false
#
##	if cooked_patty_served == true:
##		if body.has_meta("cooked_patty"):
##			print("unserving cooked patty")
##			emit_signal("sig_cooked_patty_unserved")
##			cooked_patty_served = false
#
#	if cooked_patty_served == true:
#		if body.has_meta("cooked_patty"):
#			print("unserving cooked patty")
#			emit_signal("sig_cooked_patty_unserved")
#			cooked_patty_served = false

#	if bottom_bun_served == true:
#		if body.has_meta("bottom_bun"):
#			print("unserving bottom bun")
#			emit_signal("sig_bottom_bun_unserved")
#			bottom_bun_served = false

#	if body.has_meta("raw_vegetable"):
#		if body.has_meta("burnt_vegetable"):
#			print("Unserving burnt vegetable")
#		elif body.has_meta("cooked_vegetable"):
#			print("Unserving cooked vegetable")
#			cooked_vegetable_served = false
#		else:
#			print("Unserving raw vegetable")
			

#func _on_bottom_bun_bottom_bun_served():
#	var item = preload("res://scenes/static_bottom_bun.tscn").instantiate()
#	print("inst")
#	add_sibling(item)
#	item.global_position = Vector3(2,3.084,-3)

##move to serving counter script
#	if tomato2_served == true:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato3")
#			emit_signal("sig_tomato3_served")
#			tomato3_served = true
#	elif tomato1_served == false:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato1")
#			emit_signal("sig_tomato1_served")
#			tomato1_served = true
#	elif tomato1_served == true:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato2")
#			emit_signal("sig_tomato2_served")
#			tomato2_served = true

#	if cooked_chicken_served == false:
#		if body.has_meta("chicken"):
#			if body.has_meta("burnt_chicken"):
#				print("Serving burnt chicken")
#			elif body.has_meta("cooked_chicken"):
#				print("Serving cooked chicken")
#				cooked_chicken_served = true
#				emit_signal("kfc")
#			else:
#				print("serving raw chicken")
				
#	if cooked_vegetable_served == false:
#		if body.has_meta("raw_vegetable"):
#			if body.has_meta("burnt_vegetable"):
#				print("Serving burnt vegetable")
#			elif body.has_meta("cooked_vegetable"):
#				print("Serving cooked vegetable")
#				cooked_vegetable_served = true
#				emit_signal("sig_cooked_vegetable_served")
#			else:
#				print("Serving raw vegetable")
#
#	if cut_vegetable_served == false:
#		if body.has_meta("cut_vegetable"):
#			print("Serving cut vegetable")
#			emit_signal("sig_cut_vegetable_served")


#func _on_bottom_bun_test():
#	var item = load("res://scenes/static_bottom_bun.tscn").instantiate()
#	add_sibling(item)
#	print(item.global_position)
#	print(item.position)
#	var knife_pos = $"../Knife".global_position
#	print("knife", knife_pos)
#	print(item.global_position)

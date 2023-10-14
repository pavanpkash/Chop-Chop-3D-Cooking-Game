extends StaticBody3D

#signals emitted when items are served
signal sig_cooked_patty_served
signal sig_cheese_slice_served
signal sig_top_bun_served
signal sig_bottom_bun_served
signal sig_tomato1_served
signal sig_tomato2_served
signal sig_tomato3_served
signal sig_tomato_slices_served

#variables that are set to true when items are served
var cooked_patty_served = false
var cheese_slice_served = false
var top_bun_served = false
var bottom_bun_served = false
var tomato1_served = false
var tomato2_served = false
var tomato3_served = false

#function that instantiates a static food item and removes the rigidbody from the scene.
func _static(body, item):
	add_sibling(item)
	body.queue_free()

#function that runs when certain bodies enter the serving area
#if the items have not been served, when they enter the serving area they will be removed from the scene and a static version will instantiate on the plate.
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
			print("Serving sliced tomato.")
			var item = load("res://scenes/static_sliced_tomato_3.tscn").instantiate()
			_static(body, item)
			tomato3_served = true
			emit_signal("sig_tomato3_served")
			emit_signal("sig_tomato_slices_served")
	elif tomato1_served == true:
		if body.has_meta("sliced_tomato"):
			print("Serving sliced tomato.")
			var item = load("res://scenes/static_sliced_tomato_2.tscn").instantiate()
			_static(body, item)
			tomato2_served = true
			emit_signal("sig_tomato2_served")
	elif tomato1_served == false:
		if body.has_meta("sliced_tomato"):
			print("Serving sliced tomato.")
			var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
			_static(body, item)
			tomato1_served = true
			emit_signal("sig_tomato1_served")

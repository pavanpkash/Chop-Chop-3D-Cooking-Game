extends RigidBody3D

var tomato1_served = false
var tomato2_served = false
var tomato3_served = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#func _on_serving_counter_sig_cheese_slice_served():
#	print("serving bun")
#	var item = load("res://scenes/static_cheese_slice.tscn").instantiate()
#	add_sibling(item)
#	queue_free()

#func _on_body_entered(body):
#move to serving counter script
#	if tomato1_served == false:
#		if body.has_meta("plate"):
#			print("serving sliced tomato1")
#			tomato1_served = true
#			queue_free()
#	elif tomato1_served == true:
#		if body.has_meta("plate"):
#			print("serving sliced tomato2")
#			tomato2_served = true
#			queue_free()
#	elif tomato2_served == true:
#		if body.has_meta("plate"):
#			print("serving sliced tomato3")
#			tomato3_served = true

#	if tomato2_served == true:
#		if body.has_meta("plate"):
#			print("serving sliced tomato3")
##			emit_signal("sig_tomato3_served")
#			var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#			add_sibling(item)
##			queue_free()
#			tomato3_served = true
#	if tomato1_served == true:
#		if body.has_meta("plate"):
#			print("serving sliced tomato2")
##			emit_signal("sig_tomato2_served")
#			var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#			add_sibling(item)
##			queue_free()
#			tomato2_served = true
#	elif tomato1_served == false:
#		if body.has_meta("plate"):
#			print("serving sliced tomato1")
##			emit_signal("sig_tomato1_served")
##			var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
##			add_sibling(item)
#			var cut_item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#			var item_position = position 
#			cut_item.global_position = item_position
#			add_sibling(cut_item)
##			queue_free()
#			tomato1_served = true

#func _on_serving_counter_sig_tomato_1_served():
#	print("serving tomato1")
#	var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#	add_sibling(item)
#	queue_free()
#
#func _on_serving_counter_sig_tomato_2_served():
#	print("serving tomato2")
#	var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#	add_sibling(item)
#	queue_free()
#
#func _on_serving_counter_sig_tomato_3_served():
#	print("serving tomato3")
#	var item = load("res://scenes/static_sliced_tomato.tscn").instantiate()
#	add_sibling(item)
#	queue_free()

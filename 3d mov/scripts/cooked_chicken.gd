extends RigidBody3D

var cooked_whole_chicken_served = false

func _on_serving_area_body_entered(body):
	if body.has_meta("cooked_whole_chicken"):
		print("entering match point!")

func _on_body_entered(body):
	if body.has_meta("serving_counter"):
		print("aaaaaaa")
	elif body.has_meta("blue_top"):
		print("pretend cook")
	elif body.has_meta("plate"):
		if cooked_whole_chicken_served == false:
			print("putting on a plate")
			var whole_cooked_chicken_on_plate = load("res://scenes/plate_with_whole_cooked_chicken.tscn").instantiate()
			whole_cooked_chicken_on_plate.global_position = Vector3(2,1.05,-3)
			add_sibling(whole_cooked_chicken_on_plate)
			queue_free()
			cooked_whole_chicken_served = true

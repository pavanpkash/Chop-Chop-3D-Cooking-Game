extends StaticBody3D

signal kfc
signal sig_cooked_vegetable_served
signal sig_two_cooked_vegetable_served
signal sig_cut_vegetable_served

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#recipe = 2 cooked vegetables and a cooked chicken
var total_points = 0
var cooked_chicken_served = false
var cooked_vegetable_served = false
var cut_vegetable_served = false
var cooked_whole_chicken_served = false
var raw_patty_served = false


func points():
	if cooked_chicken_served:
		print("kfc")
		total_points += 1
		print(total_points)
	if cooked_vegetable_served:
		print("cokveg")


func _on_serving_area_body_entered(body):
#	if cooked_whole_chicken_served == false:
#		if body.has_meta("cooked_whole_chicken"):
#			print("serving cooked whole chicken")
#			var whole_cooked_chicken_on_plate = load("res://scenes/plate_with_whole_cooked_chicken.tscn").instantiate()
#			var chickenposition = position 
#			chickenposition.y += 0.551
#			whole_cooked_chicken_on_plate.global_position = chickenposition
#			add_sibling(whole_cooked_chicken_on_plate)
#			cooked_whole_chicken_served = true
##			$plate.queue_free()
#			plate = $plate
#			plate.queue_free()
	
	if cooked_chicken_served == false:
		if body.has_meta("chicken"):
			if body.has_meta("burnt_chicken"):
				print("Serving burnt chicken")
			elif body.has_meta("cooked_chicken"):
				print("Serving cooked chicken")
				cooked_chicken_served = true
				emit_signal("kfc")
			else:
				print("serving raw chicken")
				
	if cooked_vegetable_served == false:
		if body.has_meta("raw_vegetable"):
			if body.has_meta("burnt_vegetable"):
				print("Serving burnt vegetable")
			elif body.has_meta("cooked_vegetable"):
				print("Serving cooked vegetable")
				cooked_vegetable_served = true
				emit_signal("sig_cooked_vegetable_served")
			else:
				print("Serving raw vegetable")
			
	if cut_vegetable_served == false:
		if body.has_meta("cut_vegetable"):
			print("Serving cut vegetable")
			emit_signal("sig_cut_vegetable_served")
			
	if raw_patty_served == false:
		if body.has_meta("raw_patty"):
			print("serving raw patty")
			emit_signal("sig_raw_patty_served")
			raw_patty_served = true

func _on_serving_area_body_exited(body):
		if body.has_meta("raw_vegetable"):
			if body.has_meta("burnt_vegetable"):
				print("Unserving burnt vegetable")
			elif body.has_meta("cooked_vegetable"):
				print("Unserving cooked vegetable")
				cooked_vegetable_served = false
			else:
				print("Unserving raw vegetable")

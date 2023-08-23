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

func _on_area_3d_body_entered(body):
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
		
func _on_area_3d_body_exited(body):
	if body.has_meta("raw_vegetable"):
		if body.has_meta("burnt_vegetable"):
			print("Unserving burnt vegetable")
		elif body.has_meta("cooked_vegetable"):
			print("Unserving cooked vegetable")
			cooked_vegetable_served = false
		else:
			print("Unserving raw vegetable")

func points():
	if cooked_chicken_served:
		print("kfc")
		total_points += 1
		print(total_points)
	if cooked_vegetable_served:
		print("cokveg")

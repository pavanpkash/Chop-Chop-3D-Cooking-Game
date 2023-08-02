extends StaticBody3D

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

func _on_area_3d_body_entered(body):
#		if cooked:
#			points += 1
#		if !cooked: 
#			points += 0.1
	if body.has_meta("chicken"):
		if body.has_meta("burnt_chicken"):
			print("Serving burnt chicken")
		elif body.has_meta("cooked_chicken"):
			print("Serving cooked chicken")
			cooked_chicken_served = true
			#emit signal for cooked chicken to counter script
		else:
			print("serving raw chicken")
	
	if body.has_meta("raw_vegetable"):
		if body.has_meta("burnt_vegetable"):
			print("Serving burnt vegetable")
		elif body.has_meta("cooked_vegetable"):
			print("Serving cooked vegetable")
			cooked_vegetable_served = true
		else:
			print("Serving raw vegetable")

func points():
	if cooked_chicken_served:
		print("kfc")
		total_points += 1
		print(total_points)
	if cooked_vegetable_served:
		print("cokveg")

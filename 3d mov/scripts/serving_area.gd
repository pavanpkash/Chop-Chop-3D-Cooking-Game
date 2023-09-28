extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var veg_served = false
var chick_served = false
var both_served = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	if both_served == true:
#		print("both served")
#		var burga = load("res://scenes/plate_with_burger.tscn").instantiate()
#		burga.global_position = Vector3(5,1.046,-0.954)
#		add_sibling(burga)
	
#if vegetable and chicken in area
#instantiate plate w veg and chicken

func _on_body_entered(body):
	if body.has_meta("vegetable"):
		veg_served = true
		if chick_served == false:
			print("raw veg serving")
		if chick_served == true:
			both_served = true
			_test()
			
	elif body.has_meta("raw_cut_chicken"):
		chick_served = true
		if veg_served == false:
			print("raw chicken serving")
		if veg_served == true:
			both_served = true
			_test()

func _test():
	if both_served == true:
		print("both served")
		var burga = load("res://scenes/plate_with_burger.tscn").instantiate()
#		burga.global_position = Vector3(5,1.046,-0.954)
		burga.global_position = Vector3(0,0.55,0)
		add_sibling(burga)

func _on_body_exited(body):
	if body.has_meta("vegetable"):
		veg_served = false
	elif body.has_meta("raw_cut_chicken"):
		chick_served = false

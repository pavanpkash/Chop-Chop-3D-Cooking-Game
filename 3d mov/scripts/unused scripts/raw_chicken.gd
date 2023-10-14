extends RigidBody3D
#class_name Interactable

var object : MeshInstance3D
var cooked = false
var burned = false
# Called when the node enters the scene tree for the first time.

func _ready():
	set_meta("chicken", 1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if burned:
#		var new_color2 = $"chickenmesh".get_active_material(0)
#		new_color2.albedo_color = Color.BLACK
#		set_meta("burnt_chicken", 1)
		print("burnt")
	elif cooked:
		var cooked_chicken = load("res://scenes/cooked_chicken.tscn")
		var chicken4 = cooked_chicken.instantiate()
		var chickenposition = position
		chicken4.global_position = chickenposition
		add_sibling(chicken4)
		queue_free()
	elif !cooked:
		set_meta("raw_chicken", 1)

func _on_body_entered(body):
	if body.has_meta("blue_top"):
		if burned:
			print("your food is burnt!")
		elif cooked:
			print("cooked")
			$chickenburntimer.start()
		elif !cooked:
			print("raw")
			$chickentimer.start()
			print("Cooking!")
	elif body.has_meta("knife"):
		print("knife cutting chicken")
		var cut_chicken = load("res://scenes/raw_cut_chicken.tscn")
		var chicken3 = cut_chicken.instantiate()
		var chickenposition2 = position
		chicken3.global_position = chickenposition2
		add_sibling(chicken3)
		queue_free()

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		$chickentimer.stop()
		$chickenburntimer.stop()
		print("Off the stove.")

func _on_chickentimer_timeout():
	print("Cooked!")
	cooked = true
	$chickenburntimer.start()

func _on_chickenburntimer_timeout():
	print("Burned!")
	burned = true

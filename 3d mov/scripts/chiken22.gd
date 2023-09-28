extends RigidBody3D
#class_name Interactable

var object : MeshInstance3D
var cooked = false
var burned = false
# Called when the node enters the scene tree for the first time.

func _ready():
	set_meta("cut_chicken", 1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if burned:
#		var new_color2 = $"vegmesh".get_active_material(0)
#		new_color2.albedo_color = Color.BLACK
#		set_meta("burnt_chicken", 1)
		print("burned")
	elif cooked:
#		var material = $"vegmesh".get_active_material(0)
#		material.albedo_color = Color.DARK_GREEN
		var cooked_cut_chicken = load("res://scenes/cooked_cut_chicken.tscn").instantiate()
		#the cut vegetables instantiate where the old vegetable was cut
		var chickenposition = position 
		cooked_cut_chicken.global_position = chickenposition
		add_sibling(cooked_cut_chicken)
		#the old vegetable is removed from the scene
		queue_free()
		set_meta("cooked_cut_chicken", 1)
	elif !cooked:
		set_meta("raw_cut_chicken", 1)

func _on_body_entered(body):
	#if the vegetable is touching the stove
	if body.has_meta("blue_top"):
		if burned:
			#if the vegetable is burnt, it will not start the cook timer
			print("your food is burnt!")
		elif cooked:
			#if the vegetable is cooked, it will start the burn timer
			print("cooked")
			$burntimer.start()
		elif !cooked:
			#if the vegetable is raw, it will start the cook timer
			print("raw")
			$Timer.start()
			print("Cooking!")
	elif body.has_meta("knife"):
		if !cooked:
			#if the vegetable is raw, the knife can cut the vegetable
			#when the knife collides with the vegetable, it instantiates the 2 cut vegetables
			var cut_vegetable = load("res://scenes/cutveg_2.tscn").instantiate()
			#the cut vegetables instantiate where the old vegetable was cut
			var vegposition = position 
			cut_vegetable.global_position = vegposition
			add_sibling(cut_vegetable)
			#the old vegetable is removed from the scene
			queue_free()
		else:
			#if the vegetable is not raw it cannot be cut
			print("Already cooked!")

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		$Timer.stop()
		$burntimer.stop()
		print("Off the stove.")

func _on_timer_timeout():
	print("Cooked!")
	cooked = true
	$burntimer.start()

func _on_burntimer_timeout():
	print("Burned!")
	burned = true

func _on_area_3d_body_entered(body):
	if body.has_meta("vegetable") or body.has_meta("burnt_vegetable"):
		print("Binned vegetable.")
		body.queue_free()
		spawn_veg_copies()

func spawn_veg_copies():
	var vegetable = preload("res://scenes/vegetable.tscn")
	var veg2 = vegetable.instantiate()
	add_sibling(veg2)
	veg2.set_meta("vegetable", 1)
	print("respawning vegetable")

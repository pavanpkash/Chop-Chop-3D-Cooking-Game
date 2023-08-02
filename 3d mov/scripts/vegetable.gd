extends RigidBody3D
class_name Interactable

var object : MeshInstance3D
var cooked = false
var burned = false
# Called when the node enters the scene tree for the first time.

func _ready():
	set_meta("vegetable", 1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if burned:
		var new_color2 = $"vegmesh".get_active_material(0)
		new_color2.albedo_color = Color.BLACK
		set_meta("burnt_vegetable", 1)
	elif cooked:
		var material = $"vegmesh".get_active_material(0)
		material.albedo_color = Color.DARK_GREEN
		set_meta("cooked_vegetable", 1)
	elif !cooked:
		set_meta("raw_vegetable", 1)



func _on_body_entered(body):
	if body.has_meta("blue_top"):
		if burned:
			print("your food is burnt!")
		elif cooked:
			print("cooked")
			$burntimer.start()
		elif !cooked:
			print("raw")
			$Timer.start()
			print("Cooking!")
#	elif body.has_meta("serve_top"):
#		print('Serving!')
	elif body.has_meta("whole_meat"):
		print("test")
	elif body.has_meta("knife"):
		var knife = $knife
		print("knife cutting vegetable")
#		cut()
		#var knifepos = Vector3(knife)
		
		
		queue_free()
		var cut_vegetable = load("res://scenes/cut_vegetable.tscn")
		var veg3 = cut_vegetable.instantiate()
#		cut_vegetable.position = (1,0,1)
		add_sibling(veg3)
		#var vegetable = "res://scenes/vegetable.tscn"
		#var veg_pos = vegetable.position
		#veg3.position = veg_pos

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
	if body.has_meta("vegetable"):
		print("Binned vegetable.")
		body.queue_free()
		spawn_veg_copies()

func spawn_veg_copies():
	var vegetable = preload("res://scenes/vegetable.tscn")
	var veg2 = vegetable.instantiate()
	add_sibling(veg2)
	veg2.set_meta("vegetable", 1)
	print("respawning vegetable")
	
#func cut():
#	var whole_position = $vegmesh.position
#	var cut_position = $cut_vegetable.position
#	cut_position = whole_position 

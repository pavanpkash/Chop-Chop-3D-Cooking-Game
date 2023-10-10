extends RigidBody3D

var cooked = false
var burned = false

func _ready():
	cooked = false
	burned = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if burned:
		var new_color2 = $Cylinder.get_active_material(0)
		new_color2.albedo_color = Color.BLACK
		remove_meta("cooked_patty")
		set_meta("burnt_patty", 1)
	elif cooked:
		var material = $Cylinder.get_active_material(0)
		material.albedo_color = Color(0.41176471114159, 0.2392156869173, 0.2392156869173)
		set_meta("cooked_patty", 1)
	if !cooked:
#		var material = $Cylinder.get_active_material(0)
#		material.albedo_color = Color(1, 0.5, .49)
		set_meta("raw_patty", 1)

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

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		$Timer.stop()
		$burntimer.stop()
		print("Off the stove.")

func _on_timer_timeout():
	print("Cooked!")
	cooked = true
	$burntimer.start()
	print("burning")

func _on_burntimer_timeout():
	print("Burned!")
	burned = true

extends RigidBody3D

var cooked = false
var burned = false

func _ready():
	cooked = false
	burned = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if the patty is burnt, it will be black and will not be able to be served
	if burned:
		var new_color2 = $Cylinder.get_active_material(0)
		new_color2.albedo_color = Color.BLACK
		remove_meta("cooked_patty")
		set_meta("burnt_patty", 1)
	#if the patty is cooked, it will be brown and will be able to be served
	elif cooked:
		var material = $Cylinder.get_active_material(0)
		material.albedo_color = Color(0.41176471114159, 0.2392156869173, 0.2392156869173)
		set_meta("cooked_patty", 1)
	#if the patty is raw, it will be pink and won't be able to be served
	if !cooked:
		set_meta("raw_patty", 1)


func _on_body_entered(body):
	#code for when the raw patty is colliding with the stove top (blue_top) 
	if body.has_meta("blue_top"):
		#if the patty is burnt, it can no longer be cooked
		if burned:
			print("Your food is burnt!")
		#if the patty is cooked, it will start to burn
		elif cooked:
			$burntimer.start()
		#if the patty is raw, it will start to cook
		elif !cooked:
			$Timer.start()


func _on_body_exited(body):
	#when the patty is no longer on the stove, it will stop cooking/burning
	if body.has_meta("blue_top"):
		$Timer.stop()
		$burntimer.stop()
		print("Off the stove.")

#when the cook timer has ended after 5 seconds, the patty will turn brown and the burntimer will start
func _on_timer_timeout():
	print("Cooked!")
	cooked = true
	$burntimer.start()

#when the burn timer has ended after 5 seconds, the patty will turn black
func _on_burntimer_timeout():
	print("Burned!")
	burned = true

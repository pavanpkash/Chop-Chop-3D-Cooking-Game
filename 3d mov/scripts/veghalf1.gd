#extends RigidBody3D
#
#var cooked = false
#var burned = false
## Called when the node enters the scene tree for the first time.
#
#func _ready():
#	set_meta("cut_vegetable", 1)
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if burned:
#		var new_color2 = $"half1".get_active_material(0)
#		new_color2.albedo_color = Color.BLACK
#		set_meta("burnt_vegetable", 1)
#	elif cooked:
#		var material = $"half1".get_active_material(0)
#		material.albedo_color = Color.DARK_GREEN
#		set_meta("cooked_vegetable", 1)
#	elif !cooked:
#		set_meta("raw_vegetable", 1)
#
#func _on_body_entered(body):
#	if body.has_meta("blue_top"):
#		if burned:
#			print("your food is burnt!")
#		elif cooked:
#			print("cooked")
#			$burntimerhalf.start()
#		elif !cooked:
#			print("raw")
#			$timerhalf.start()
#			print("Cooking!")
#	if body.has_meta("knife"):
#		print("knife touching")
#
#func _on_body_exited(body):
#	if body.has_meta("blue_top"):
#		$timerhalf.stop()
#		$burntimerhalf.stop()
#		print("Off the stove.")
#
#func _on_timerhalf_timeout():
#	print("Cooked!")
#	cooked = true
#	$burntimerhalf.start()
#
#func _on_burntimerhalf_timeout():
#	print("Burned!")
#	burned = true

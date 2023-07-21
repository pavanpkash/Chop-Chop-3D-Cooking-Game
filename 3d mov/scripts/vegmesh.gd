extends MeshInstance3D

#@onready var burned =  get_node("/root/scripts/vegetable.gd/burned")
#@onready var cooked =  get_node("/root/scripts/vegetable.gd/cooked")

# when the vegetable is cooked perfectly, it goes dark green
#func _on_timer_timeout():
#	var new_color = $".".get_active_material(0)
#	new_color.albedo_color = Color.DARK_GREEN
#
## when the vegetable is burnt, it goes black
#func _on_buntimer_timeout():
#	var new_color2 = $".".get_active_material(0)
#	new_color2.albedo_color = Color.BLACK

#func change_color():
#	if burned:
#		print("burned color")
#	elif cooked:
#		print("cooked color")
#	elif !cooked:
#		print("raw color")

extends MeshInstance3D

# when the vegetable is cooked perfectly, it goes dark green
func _on_chickentimer_timeout():
	var new_color = $".".get_active_material(0)
	new_color.albedo_color = Color.SADDLE_BROWN

# when the vegetable is burnt, it goes black
func _on_chickenburntimer_timeout():
	var new_color2 = $".".get_active_material(0)
	new_color2.albedo_color = Color.BLACK

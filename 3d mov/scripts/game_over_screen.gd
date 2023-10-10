extends Control

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
#func set_score(value):
#	$Panel/Score.text = "Score: " + str(value)


func _on_counter_score(value):
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Panel/Score.text = "Score: " + str(value) + "/7"


func _on_quit_button_pressed():
	get_tree().quit()

extends Control

func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_button_quit_pressed():
	get_tree().quit()

func _on_button_htp_pressed():
	get_tree().change_scene_to_file("res://scenes/how_to_play.tscn")
	
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

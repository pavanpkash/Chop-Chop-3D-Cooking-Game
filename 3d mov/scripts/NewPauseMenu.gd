extends Control

#when the restart button is pressed, the scene is changed to a fresh world scene
func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

#when the player presses quit the game will quit.
func _on_quit_button_pressed():
	get_tree().quit()

#when the player presses the resume button, the pause menu will go invisible and mouse will be captured.
func _on_resume_2_pressed():
	$".".visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

#when the player presses the how to play button, the how to play scene will be shown
func _on_how_to_play_pressed():
	get_tree().change_scene_to_file("res://scenes/how_to_play.tscn")

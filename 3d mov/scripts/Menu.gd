extends Control

#when play button is presseed, world scene is instantiated
func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

#when quit button is perssed, game is closed
func _on_button_quit_pressed():
	get_tree().quit()

#when how to play button is pressed, how to play scene is instantiated
func _on_button_htp_pressed():
	get_tree().change_scene_to_file("res://scenes/how_to_play.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

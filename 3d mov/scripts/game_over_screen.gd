extends Control

#when the restart button is pressed, the scene is changed to a fresh world scene
func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

#score is equal to value from serving counter script. Score on game over screen changes depending on the value.
func _on_counter_score(value):
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Panel/Score.text = "Score: " + str(value) + "/7"

#when the player presses quit the game will quit.
func _on_quit_button_pressed():
	get_tree().quit()

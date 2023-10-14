extends Control

#when user presses back to menu, main menu scene is instantiated.
func _on_btm_pressed():
	get_tree().change_scene_to_file("res://scenes/background.tscn")

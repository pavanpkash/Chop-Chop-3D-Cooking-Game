extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _on_resume_button_pressed():
#	$".".visible = false
#	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_quit_button_pressed():
	get_tree().quit()

func _on_resume_2_pressed():
	$".".visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

#func _input(event):
#	if event.is_action_pressed("ui_cancel"):
#		$".".visible = false
#		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _on_how_to_play_pressed():
	get_tree().change_scene_to_file("res://scenes/how_to_play.tscn")

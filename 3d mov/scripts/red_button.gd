extends StaticBody3D
class_name  Interactable
signal interacted(body)
signal end_game

#prompt message i.e. keymapping to press
@export var prompt_message = "Interact"
#keymapping (input mapping, project settings)
@export var prompt_action = "interact"

func _get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.keycode)
	return prompt_message + "\n[" + key_name + "]"

func interact(body):
	#print to console for debugging
	print("Serving!")
	emit_signal("interacted", body)
	emit_signal("end_game")
#	get_tree().change_scene_to_file("res://scenes/game_over_screen.tscn")
	$"../GameOverScreen".visible = true
#	get_tree().quit()
#change_scene_to_file("res://scenes/world.tscn")

extends RayCast3D

@onready var prompt = $Prompt

# Called every frame. 'delta' is the elapsed time since the previous frame.
#when user looks at red button, 'press 'e' to serve' will be shown
func _process(delta):
	prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		if detected is Interactable:
			prompt.text = ("Press 'e' to serve")
			if Input.is_action_just_pressed(detected.prompt_action):
				detected.interact(owner)

extends RayCast3D

@onready var prompt = $Prompt

# Called when the node enters the scene tree for the first time.
#func _ready():
	#add_exception(owner)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		
		if detected is Interactable:
			prompt.text = detected.name


func _on_vegetable_body_exited(body):
	pass # Replace with function body.

extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	if body.has_meta("blue_top"):
		print("pan on stove")
		set_meta("blue_top", 1)

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		print("pan off stove")
		remove_meta("blue_top")

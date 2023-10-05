extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_cheese = load("res://scenes/lp_cheese_slice.tscn").instantiate()
		var cheeseposition = position 
		cut_cheese.global_position = cheeseposition
		add_sibling(cut_cheese)
		queue_free()

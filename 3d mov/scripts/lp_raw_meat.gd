extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_item = load("res://scenes/lp_raw_patty.tscn").instantiate()
		var item_position = position 
		cut_item.global_position = item_position
		add_sibling(cut_item)
		queue_free()

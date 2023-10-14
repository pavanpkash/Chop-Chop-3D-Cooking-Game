extends RigidBody3D

#when the body collides with the knife it is replaced by a cheese slice
func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_cheese = load("res://scenes/lp_cheese_slice.tscn").instantiate()
		cut_cheese.global_position = position
		add_sibling(cut_cheese)
		queue_free()

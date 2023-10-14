extends RigidBody3D

#when the body collides with the knife it is replaced by three tomato slices
func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_item = load("res://scenes/lp_cut_tomatoes.tscn").instantiate()
		cut_item.global_position = position
		add_sibling(cut_item)
		queue_free()

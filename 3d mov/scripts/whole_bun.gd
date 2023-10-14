extends RigidBody3D

#when the whole bun collides with the knife, 2 bun halves spawn in its place, essentially cutting it in 2.
func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_item = load("res://scenes/buns.tscn").instantiate()
		cut_item.global_position = position
		add_sibling(cut_item)
		queue_free()

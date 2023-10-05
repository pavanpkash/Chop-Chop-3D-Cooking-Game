extends RigidBody3D

func _on_body_entered(body):
	if body.has_meta("knife"):
		var cut_item = load("res://scenes/buns.tscn").instantiate()
		var item_position = position 
		cut_item.global_position = item_position
		add_sibling(cut_item)
		queue_free()

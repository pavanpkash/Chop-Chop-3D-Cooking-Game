extends RigidBody3D

func _on_serving_counter_sig_cheese_slice_served():
	print("serving bun")
	var item = load("res://scenes/static_cheese_slice.tscn").instantiate()
	add_sibling(item)
	queue_free()

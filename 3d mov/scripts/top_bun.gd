extends RigidBody3D

func _on_serving_counter_sig_top_bun_served():
	print("serving bun")
	var item = load("res://scenes/static_top_bun.tscn").instantiate()
	add_sibling(item)
	queue_free()

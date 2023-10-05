extends RigidBody3D

func _on_body_entered(body):
	if body.has_meta("blue_top"):
		print("pan on stove")
		set_meta("blue_top", 1)

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		print("pan off stove")
		remove_meta("blue_top")

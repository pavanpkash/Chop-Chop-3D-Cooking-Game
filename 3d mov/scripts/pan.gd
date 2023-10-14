extends RigidBody3D

#when the pan is on the stove, it acts as a stove and cooks the itme inside the pan.
func _on_body_entered(body):
	if body.has_meta("blue_top"):
		set_meta("blue_top", 1)

#when the pan is off ths stove it no longer cooks the item.
func _on_body_exited(body):
	if body.has_meta("blue_top"):
		remove_meta("blue_top")

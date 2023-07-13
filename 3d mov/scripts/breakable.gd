extends RigidBody3D
# Setting a breakable scene.

func _ready():
	set_meta("whole_meat", 1)

#func break_object():
#	var breakable = resource.instance()
#	var parent = self.get_parent()
#	parent.add_child(breakable)
#	breakable.translation = self.translation
#	breakable.rotation_degrees = self.rotation_degrees
#	
#	self.queue_free()
#	pass
#func _on_mouse_entered():
#	pass # Replace with function body.

func _on_knife_body_entered(body):
	if body.has_meta("whole_meat"):
		print('blah')
		queue_free()

func _on_body_entered(body):
	if body.has_meta("knife"):
		print("hasfdash")
	elif body.has_meta("blue_top"):
		print("bluetop")

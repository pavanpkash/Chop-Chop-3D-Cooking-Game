extends RigidBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("knife", 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _on_whole_meat_area_entered(area):
	#queue_free()

func _on_whole_meat_body_entered(body):
	if body.has_meta("knife"):
		print("aaaok")
		queue_free()
	else:
		print("asfasf")


func _on_body_entered(body):
	if body.has_meta("whole_meat"):
		print("abab")

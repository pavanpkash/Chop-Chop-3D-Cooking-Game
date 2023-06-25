extends RigidBody3D
class_name Interactable

var object : MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("vegetable", 1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.has_meta("blue_top"):
		$Timer.start()
		print("Cooking!")
	elif body.has_meta("serve_top"):
		print("Serving!")

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		$Timer.stop()
		$burntimer.stop()
		print("Off the stove.")

func _on_timer_timeout():
	print("Cooked!")
	$burntimer.start()

func _on_burntimer_timeout():
	print("Burned!")

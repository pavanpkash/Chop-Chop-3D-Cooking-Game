extends Node3D

var served = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if served == false:
		visible = false
	if served == true:
		visible = true



func _on_lp_raw_patty_cooked_patty_served():
	served = true

extends Label

var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(points)

#receive signal for cooked chicken from serve top

func _on_serve_top_kfc():
	points += 1
	_ready()
	
func _on_serve_top_sig_cooked_vegetable_served():
	points += 1
	_ready()

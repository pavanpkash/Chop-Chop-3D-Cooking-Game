extends Label

var points = 0
signal score(value)

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(points)

func _on_serving_counter_sig_bottom_bun_served():
	points += 1
	_ready()

func _on_serving_counter_sig_cheese_slice_served():
	points += 1
	_ready()

func _on_serving_counter_sig_cooked_patty_served():
	points += 1
	_ready()

func _on_serving_counter_sig_top_bun_served():
	points += 1
	_ready()

func _on_red_button_end_game():
	emit_signal("score", str(points))

func _on_serving_counter_sig_tomato_1_served():
	points += 1
	_ready()

func _on_serving_counter_sig_tomato_2_served():
	points += 1
	_ready()

func _on_serving_counter_sig_tomato_3_served():
	points += 1
	_ready()

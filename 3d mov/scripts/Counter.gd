extends Label

#player starts with 0 points
var points = 0

#signal for score used when red button is pressed
signal score(value)

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(points)

#when the player presses the red button to serve, total points will be emitted as a signal to the game over menu to show the score
func _on_red_button_end_game():
	emit_signal("score", str(points))

#when timer runs out, game over screen will become visible
func _on_time_time_up():
	emit_signal("score", str(points))

#when the bottom bun is served points increase by 1
func _on_serving_counter_sig_bottom_bun_served():
	points += 1
	_ready()

#when the cheese slice is served points increase by 1
func _on_serving_counter_sig_cheese_slice_served():
	points += 1
	_ready()

#when the cooked patty is served points increase by 1
func _on_serving_counter_sig_cooked_patty_served():
	points += 1
	_ready()

#when the top bun is served points increase by 1
func _on_serving_counter_sig_top_bun_served():
	points += 1
	_ready()

#when one tomato is served points increase by 1
func _on_serving_counter_sig_tomato_1_served():
	points += 1
	_ready()

#when two tomatoes are served points increase by 1
func _on_serving_counter_sig_tomato_2_served():
	points += 1
	_ready()

#when three tomatoes are served points increase by 1
func _on_serving_counter_sig_tomato_3_served():
	points += 1
	_ready()

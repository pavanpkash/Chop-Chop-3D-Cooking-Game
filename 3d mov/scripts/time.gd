extends Label

#timer starts at 60s and counts down
var time = 60.0
var time_available = false
signal time_up

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../../Timer".start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if time_available == false:
		time -= delta
		var rounded_time = "%.2f" % time
		text = "Time: " + str(rounded_time)
	else:
		pass

#after 60s passes, game is over and game over screen is shown
func _on_gametimer_timeout():
	print("times up")
	time_available = true
	emit_signal("time_up")
	$"../../GameOverScreen".visible = true

#when red button is presesd, timer is paused
func _on_red_button_end_game():
	time_available = true

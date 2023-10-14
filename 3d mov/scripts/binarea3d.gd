extends Area3D

func _static(body, item):
	add_sibling(item)

var patty_binned = false
var meat_binned = false
var cheese_binned = false
var bun_binned = false

func _on_body_entered(body):
	if patty_binned == false:
		if body.has_meta("raw_patty"):
			print("Binned")
			var item = load("res://scenes/lp_raw_meat.tscn").instantiate()
			add_sibling(item)
			patty_binned = true
	if meat_binned == false:
		if body.has_meta("meat"):
			print("binning meat")
			var item = load("res://scenes/unused scenes/raw_meat.tscn").instantiate()
			add_sibling(item)
			meat_binned = true
	if cheese_binned == false:
		if body.has_meta("cheese"):
			print("binning cheese")
			var item = load("res://scenes/lp_whole_cheese.tscn").instantiate()
			_static(body, item)
			cheese_binned = true
	if bun_binned == false:
		if body.has_meta("bun"):
			print("bun gone")
			var item = load("res://scenes/whole_bun.tscn").instantiate()
			_static(body, item)
			bun_binned = true

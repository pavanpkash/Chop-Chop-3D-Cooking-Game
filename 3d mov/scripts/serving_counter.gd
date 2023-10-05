extends StaticBody3D

signal kfc
signal sig_cooked_vegetable_served
signal sig_two_cooked_vegetable_served
signal sig_cut_vegetable_served
signal sig_cooked_patty_served
signal sig_cheese_slice_served
signal sig_top_bun_served
signal sig_bottom_bun_served
signal sig_tomato1_served
signal sig_tomato2_served
signal sig_tomato3_served

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#recipe = 2 cooked vegetables and a cooked chicken
var total_points = 0
var cooked_chicken_served = false
var cooked_vegetable_served = false
var cut_vegetable_served = false
var cooked_whole_chicken_served = false
var cooked_patty_served = false
var cheese_slice_served = false
var top_bun_served = false
var bottom_bun_served = false
var tomato1_served = false
var tomato2_served = false
var tomato3_served = false


func points():
	if cooked_chicken_served:
		print("kfc")
		total_points += 1
		print(total_points)
	if cooked_vegetable_served:
		print("cokveg")

func _on_serving_area_body_entered(body):
	if cooked_patty_served == false:
		if body.has_meta("cooked_patty"):
			print("serving cooked patty")
			emit_signal("sig_cooked_patty_served")
			cooked_patty_served = true
			
	if cheese_slice_served == false:
		if body.has_meta("cheese_slice"):
			print("serving cheese slice")
			emit_signal("sig_cheese_slice_served")
			cheese_slice_served = true
	
	if top_bun_served == false:
		if body.has_meta("top_bun"):
			print("serving top bun")
			emit_signal("sig_top_bun_served")
			top_bun_served = true
			
##move to serving counter script
#	if tomato2_served == true:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato3")
#			emit_signal("sig_tomato3_served")
#			tomato3_served = true
#	elif tomato1_served == false:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato1")
#			emit_signal("sig_tomato1_served")
#			tomato1_served = true
#	elif tomato1_served == true:
#		if body.has_meta("sliced_tomato"):
#			print("serving sliced tomato2")
#			emit_signal("sig_tomato2_served")
#			tomato2_served = true

#	if cooked_chicken_served == false:
#		if body.has_meta("chicken"):
#			if body.has_meta("burnt_chicken"):
#				print("Serving burnt chicken")
#			elif body.has_meta("cooked_chicken"):
#				print("Serving cooked chicken")
#				cooked_chicken_served = true
#				emit_signal("kfc")
#			else:
#				print("serving raw chicken")
				
#	if cooked_vegetable_served == false:
#		if body.has_meta("raw_vegetable"):
#			if body.has_meta("burnt_vegetable"):
#				print("Serving burnt vegetable")
#			elif body.has_meta("cooked_vegetable"):
#				print("Serving cooked vegetable")
#				cooked_vegetable_served = true
#				emit_signal("sig_cooked_vegetable_served")
#			else:
#				print("Serving raw vegetable")
#
#	if cut_vegetable_served == false:
#		if body.has_meta("cut_vegetable"):
#			print("Serving cut vegetable")
#			emit_signal("sig_cut_vegetable_served")

func _on_serving_area_body_exited(body):
		if body.has_meta("raw_vegetable"):
			if body.has_meta("burnt_vegetable"):
				print("Unserving burnt vegetable")
			elif body.has_meta("cooked_vegetable"):
				print("Unserving cooked vegetable")
				cooked_vegetable_served = false
			else:
				print("Unserving raw vegetable")

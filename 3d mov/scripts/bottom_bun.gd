extends RigidBody3D

signal bottom_bun_served
signal test



#func _on_body_entered(body):
#	if body.has_meta("plate"):
#		print("serving bottom bun")
#		var item = load("res://scenes/static_bottom_bun.tscn").instantiate()
#		add_sibling(item)
#		queue_free()
		
		
		
		
#		print("Bottom bun served")
#		emit_signal("bottom_bun_served")
#		var item = load("res://scenes/static_bottom_bun.tscn").instantiate()
#		queue_free()
#		item.global_position = position
#		add_sibling(item)
#		var chickenposition = position
#		chicken3.global_position = chickenposition
#		add_sibling(chicken3)
#		queue_free()
#		var item = load("res://scenes/static_bottom_bun.tscn").instantiate()
#		add_sibling(item)
#		print(item.global_position)
#		print(item.position)
#		item.global_position = (3,3,3)
#		emit_signal("test")
#		var knife_pos = $"../Knife".global_position
#		print("knife", knife_pos)
#		print(item.global_position)
		
		
#		var counter_position = $"../Serving Counter".position
#		var origin = Vector3(0,0,0)
#		global_position(0,0,0) po
#		var serving_counter = "res://scenes/serving_counter.tscn"
#		item.position = serving_counter.position
#		item.position = origin
#		position.y += 2

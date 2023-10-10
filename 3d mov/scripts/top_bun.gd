extends RigidBody3D

#when on the serving bench, the item is instantiated as a static body on top of the plate and the rigidbody is removed from the scene.
#func _on_serving_counter_sig_top_bun_served():
#	print("serving bun")
#	var item = load("res://scenes/static_top_bun.tscn").instantiate()
#	add_sibling(item)
#	if is_in_group("top_bun"):
#		queue_free()


#func _on_body_entered(body):
#	if body.has_meta("plate"):
#		print("serving top bun")
#		var item = load("res://scenes/static_top_bun.tscn").instantiate()
#		add_sibling(item)
#		queue_free()
#		var item = load("res://scenes/static_top_bun.tscn").instantiate()
##		item.global_position = Vector3(0,4,0)
##		item.global_transform.origin(0,0,0)	
##		item.global_position = Vector3(0, 0, 0)
##		var spawn_position = Vector3(0,2,0)
##		item.position = spawn_position
#		add_sibling(item)
#		print(item.global_position)
#		print(item.position)
#		item.global_position = (3,3,3)
#		emit_signal("test")
#		var knife_pos = $Sphere.global_position	
#		item.position = knife_pos
#		print("knife", knife_pos)
#		print(item.global_position)
#		queue_free()
		
	
#		print("patty served")
#		var patty = load("res://scenes/static_cooked_patty.tscn").instantiate()
#		add_sibling(patty)
#		queue_free()

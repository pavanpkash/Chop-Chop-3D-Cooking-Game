#class_name Interactable
extends RigidBody3D

signal sig_cheese_slice_served

#func _on_serving_counter_sig_cheese_slice_served():
#	print("serving slice")
#	var item = load("res://scenes/static_cheese_slice.tscn").instantiate()
#	serving_counter = )kk
#	item.connect("serving_counter")
#	add_sibling(item)
#	queue_free()
#

#func _on_body_entered(body):
#	if body.has_meta("plate"):
#		print("serving slice")
#		var item = load("res://scenes/static_cheese_slice.tscn").instantiate()
#		add_sibling(item)
#		queue_free()
#		emit_signal("sig_cheese_slice_served")
#		var cheese_slice = get_node("serving_counter")
#		cheese_slice.emitted.connect(_on_body_entered)

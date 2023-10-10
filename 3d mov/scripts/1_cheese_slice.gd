extends Label

func _on_serving_counter_sig_cheese_slice_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)


func _on_serving_counter_sig_cheese_slice_unserved():
	$".".label_settings.set_font_color(Color.WHITE)

extends Label

#when cheese slice is served, '1 cheese slice' text in top right corner goes green
func _on_serving_counter_sig_cheese_slice_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)

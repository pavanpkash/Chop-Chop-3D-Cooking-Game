extends Label

#when three tomatoes are served, '3 tomatoes' text in top right corner goes green
func _on_serving_counter_sig_tomato_slices_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)

extends Label

#when bottom bun is served, '1 bottom bun' text in top right corner goes green
func _on_serving_counter_sig_bottom_bun_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)

extends Label

#when top bun is served, '1 top bun' text in top right corner goes green
func _on_serving_counter_sig_top_bun_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)

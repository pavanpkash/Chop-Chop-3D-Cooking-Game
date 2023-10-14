extends Label

#when cooked patty is served, '1 cooked patty' text in top right corner goes green
func _on_serving_counter_sig_cooked_patty_served():
	$".".label_settings.set_font_color(Color.FOREST_GREEN)

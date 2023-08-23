extends CanvasLayer

#@onready var continueButton = $Resume
#@onready var quitButton = $Exit
#
#func _ready() -> void:
#	quitButton.visible = false
#	continueButton.visible = false
#
#func _input(event: InputEvent) -> void:
#	if event.is_action_pressed("ui_cancel"):
#		get_tree().paused = !get_tree().paused
#		print(get_tree().paused)
#		quitButton.visible = true
#		continueButton.visible = true
#
#func _on_resume_pressed() -> void:
#	get_tree().paused = false
#	quitButton.visible = false
#	continueButton.visible = false

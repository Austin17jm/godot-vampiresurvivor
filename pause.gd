extends CanvasLayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_or_resume"):
		unpause()

func unpause() -> void:
	visible = false
	get_tree().paused = false

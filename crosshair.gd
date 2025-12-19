extends Sprite2D

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _process(delta: float) -> void:
	# Follow the mouse every frame
	global_position = get_global_mouse_position()
	
func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_MOUSE_EXIT:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	elif what == NOTIFICATION_WM_MOUSE_ENTER:
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

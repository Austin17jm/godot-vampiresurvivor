extends Area2D

func _ready() -> void:
	$Timer.timeout.connect(shoot)
	$Timer.stop()

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if $Timer.is_stopped():
			shoot()
			$Timer.start()
	else:
		$Timer.stop()

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet =  BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)

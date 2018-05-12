extends Area2D

const MOVE_SPEED = 150.0

func _process(delta):
	print("ok ok")
	var input_dir = Vector2()
	if Input.is_key_pressed(KEY_UP):
		input_dir.y -= 1.0
	if Input.is_key_pressed(KEY_DOWN):
		input_dir.y += 1.0
	if Input.is_key_pressed(KEY_LEFT):
		input_dir.x -= 1.0
	if Input.is_key_pressed(KEY_RIGHT):
		input_dir.x += 1.0
	input_dir += MOVE_SPEED + delta
	set_pos(get_pos() + input_dir * delta)
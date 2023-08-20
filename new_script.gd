extends Sprite2D

var angular_speed = PI
var speed =  400.0
var toggle_direction = false

func _process(delta):
	var direction = 0
	if toggle_direction == false:
		if Input.is_key_pressed(KEY_LEFT):
			direction = -1
		if Input.is_key_pressed(KEY_RIGHT):
			direction = 1
	else:
		if Input.is_key_pressed(KEY_LEFT):
			direction = 1
		if Input.is_key_pressed(KEY_RIGHT):
			direction = -1
	
	rotation += angular_speed * direction * delta
	
	var velocity = Vector2.ZERO
	if Input.is_key_pressed(KEY_UP):
		velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta


func _on_button_pressed():
	if toggle_direction == true:
		toggle_direction = false
	else:
		toggle_direction = true

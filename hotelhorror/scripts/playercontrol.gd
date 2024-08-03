extends CharacterBody2D


const SPEED = 300.0
var moveDirY = 0
var moveDirX = 0


func _physics_process(_delta):
	movement()
	look_at(get_global_mouse_position())




func movement():
	moveDirY = 0
	moveDirX = 0

	if Input.is_action_pressed("up"):
		moveDirY = -1
	if Input.is_action_pressed("down"):
		moveDirY = 1
	if Input.is_action_pressed("left"):
		moveDirX = -1
	if Input.is_action_pressed("right"):
		moveDirX = 1

	velocity = Vector2(moveDirX, moveDirY).normalized() * SPEED
	move_and_slide()

extends CharacterBody2D

@export var speed = 600.0
@onready var sprite = $AnimatedSprite2D

func _physics_process(_delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1

	if Input.is_action_pressed("ui_left"):
		direction.x -= 1

	if Input.is_action_pressed("ui_down"):
		direction.y += 1

	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	if direction == Vector2.ZERO:
		sprite.play("idle")
	elif direction.y > 0:
		sprite.play("walk_down")
	elif direction.y < 0:
		sprite.play("walk_up")
	elif direction.x > 0:
		sprite.play("walk_right")
	elif direction.x < 0:
		sprite.play("walk_left")
	velocity = direction.normalized() * speed
	move_and_slide()

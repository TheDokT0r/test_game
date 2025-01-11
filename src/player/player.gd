extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D
@export var _disable_animation = false
const SPEED = 50.0


func _physics_process(delta: float) -> void:
	animation_handler()
	var direction := Input.get_vector("left", "right", "up", "down")
	
	velocity = direction * SPEED
	move_and_slide()

func animation_handler():
	if Input.is_action_pressed("left"):
		_animated_sprite.flip_h = false
	elif Input.is_action_pressed("right"):
		_animated_sprite.flip_h = true	
	if Input.is_action_pressed("right") or Input.is_action_pressed("left") or Input.is_action_pressed("up") or Input.is_action_pressed("down"):
		_animated_sprite.play("walking")
	else:
		_animated_sprite.play("idle")

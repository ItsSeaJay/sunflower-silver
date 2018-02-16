extends Node

const TERMINAL_VELOCITY = Vector2(0, 256)

var speed = 32
var velocity = Vector2(0, 0)
var acceleration = 0.32
var drag = 0.32

func _ready():
	pass

func _process(delta):
	# Move the player according to their velocity
	translate(Vector2(velocity.x * delta, velocity.y * delta))
	
	handle_input()
	
	# Clamp their velocity within suitable boundaries
	velocity.x = clamp(0, TERMINAL_VELOCITY.x)
	velocity.y = clamp(0, TERMINAL_VELOCITY.y)
	pass

func handle_input():
	if Input.is_action_just_pressed("p1_dig_left"):
		velocity.y += accelleration
	elif Input.is_action_just_pressed("p1_dig_right"):
		velocity.y += acceleration
	else:
		velocity.y -= drag
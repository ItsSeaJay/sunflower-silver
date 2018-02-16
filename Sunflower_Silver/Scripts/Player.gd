extends Node

const TERMINAL_VELOCITY = Vector2(0, 256)

var speed = 64
var velocity = Vector2(0, 0)
var acceleration = 8
var drag = 0.4

func _ready():
	pass

func _process(delta):
	# Move the player according to their velocity
	translate(Vector2(velocity.x * delta, velocity.y * delta))
	
	handle_input()
	
	# Clamp their velocity within suitable boundaries
	velocity.x = clamp(velocity.x, 0, TERMINAL_VELOCITY.x)
	velocity.y = clamp(velocity.y, 0, TERMINAL_VELOCITY.y)
	pass

func handle_input():
	if Input.is_action_just_pressed("p1_dig_left"):
		velocity.y += acceleration
	elif Input.is_action_just_pressed("p1_dig_right"):
		velocity.y += acceleration
	else:
		velocity.y -= drag
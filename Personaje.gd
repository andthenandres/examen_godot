extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	#gravedad
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	#mov hor
	if(Input.is_action_pressed("ui_right")):
		velocity.x = SPEED
	elif(Input.is_action_pressed("ui_left")):
		velocity.x = -SPEED		
	else:
		velocity.x = 0
	
	#salto
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()

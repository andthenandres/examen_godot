extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	velocity.x = -SPEED
	

	move_and_slide()


func _on_area_izq_body_entered(body: Node2D) -> void:
	get_tree().quit()


func _on_area_superior_body_entered(body: Node2D) -> void:
	queue_free()


func _on_ray_cast_2d_body_entered_tree(node: Node) -> void:
	velocity.x = 1000

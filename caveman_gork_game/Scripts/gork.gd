extends CharacterBody2D

const SPEED = 300

func _physics_process(delta):
	
	var lrdirection = Input.get_axis("ui_left", "ui_right")
	if lrdirection:
		velocity.x = lrdirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if velocity.x != 0:
		$Sprite2D.flip_h = velocity.x < 0
	
	var uddirection = Input.get_axis("ui_up", "ui_down")
	if uddirection:
		velocity.y = uddirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

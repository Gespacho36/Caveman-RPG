extends Area2D

#All this code is doing is having the t-rex move back and forth
#As shown with the PERFECT function names
#Direction is to make it either left (negative) or right (positive)

const SPEED = 85
var direction = 0

func _ready():
	move_right()

func move_left():
	direction = -1
	#Instead of making a timer that actually just didn't work as
	#intended because it started too frequently, we will opt for this
	#line below as the timer. All it does is create a new timer and 
	#halts the code until it is done. 
	await get_tree().create_timer(5.0).timeout
	move_right()

func move_right():
	direction = 1
	await get_tree().create_timer(5.0).timeout
	move_left()

func _physics_process(delta: float) -> void:
	position.x += SPEED * delta * direction

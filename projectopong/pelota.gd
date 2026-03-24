extends CharacterBody2D

var speed = 500

func _ready():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
	velocity *= speed
	
func _physics_process(delta):
	move_and_collide(velocity * delta)

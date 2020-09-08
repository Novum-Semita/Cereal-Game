extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 280
const GRAVITY = 30
const JUMPFORCE = -900


func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		$AnimatedSprite.play("Run")
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("Run")
	else:
		$AnimatedSprite.play("Idle")
	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
		$SoundJump.play()
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)

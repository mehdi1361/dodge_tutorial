extends RigidBody2D

export (int) var MIN_SPEED
export (int) var MAX_SPEED

var mob_types = ["fly", "swim", "walk"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free() 

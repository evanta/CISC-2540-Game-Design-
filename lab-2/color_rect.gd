extends ColorRect

@export var speed = 5

func _ready():
	print("start")
	
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += delta + 5
	if Input.is_action_pressed("ui_left"):
		position.x -= delta + 5
	if Input.is_action_pressed("ui_up"):
		position.y -= delta + 5
	if Input.is_action_pressed("ui_down"):
		position.y += delta + 5
		
	if Input.is_action_just_pressed("ui_accept"):
		color = Color(255, 0, 0)
	else: 
		color = Color(0,255,0)

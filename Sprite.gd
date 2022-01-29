extends Sprite


# Declare member variables here. Examples:
var speed = 400
var angular_speed = PI


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Timer")
	timer.connect("timeout", self, "_on_Timer_timeout")
	
func _init():
	print("Hello, world!");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_Button_pressed():
	set_process(not is_processing())

func _on_Timer_timeout():
	visible = not visible

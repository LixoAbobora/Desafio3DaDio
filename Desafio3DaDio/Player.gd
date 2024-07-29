extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input = Input.get_vector("ui_left","ui_right","ui_down","ui_up")
	position.x = position.x + input.x * 5
	position.y = position.y - input.y * 5
	
	var mouse_position = Vector2.ZERO
	mouse_position = get_global_mouse_position()
	look_at(mouse_position)
	



extends Node2D

export(bool) var add_to_mouse = true

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pass # Replace with function body.

func _process(delta):
	if add_to_mouse:
		global_position = get_global_mouse_position()
		
func _input(event):
	if event.is_action_pressed("ui_up"):
		$Light2D.enabled = !$Light2D.enabled
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

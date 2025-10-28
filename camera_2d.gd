extends Camera2D

var viewport_mode
var root

func _ready():
	viewport_mode = ProjectSettings.get_setting("display/window/stretch/mode") == "viewport"
	root = get_tree().get_root() 

func _process(_delta):
	if viewport_mode:
		root.canvas_transform.origin = Vector2(
			round(root.canvas_transform.origin.x), 
			round(root.canvas_transform.origin.y))

extends AnimationPlayer

@onready var animation_player: AnimationPlayer = $"."
@onready var label: Label = $"../../../CanvasLayer/Label"
@onready var version_label: Label = $"../../../CanvasLayer/VersionLabel"

func _ready() -> void:
	version_label.text = ProjectSettings.get_setting("display/window/stretch/mode")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time = Time.get_time_dict_from_system()
	label.text = Time.get_time_string_from_system()
	if time.second == 0:
		animation_player.play("camera_anim")

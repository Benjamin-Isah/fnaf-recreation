extends Control

signal closed

var current_cam := 1

@onready var cam_label: Label = $CamLabel
@onready var cam1_button: Button = $CamButtons/Cam1Button
@onready var cam2_button: Button = $CamButtons/Cam2Button
@onready var cam3_button: Button = $CamButtons/Cam3Button
@onready var close_button: Button = $CloseButton

func _ready() -> void:
	cam1_button.pressed.connect(func() -> void:
		_set_cam(1)
	)
	cam2_button.pressed.connect(func() -> void:
		_set_cam(2)
	)
	cam3_button.pressed.connect(func() -> void:
		_set_cam(3)
	)
	close_button.pressed.connect(_emit_closed)
	_update_label()

func _set_cam(cam: int) -> void:
	current_cam = cam
	_update_label()

func _update_label() -> void:
	cam_label.text = "CAM %d" % current_cam

func _emit_closed() -> void:
	emit_signal("closed")

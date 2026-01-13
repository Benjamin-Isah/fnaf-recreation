extends Control

@onready var office = $Office
@onready var cameras_button: Button = $UI/CamerasButton
@onready var left_door_button: Button = $UI/DoorButtons/LeftDoorButton
@onready var right_door_button: Button = $UI/DoorButtons/RightDoorButton
@onready var camera_ui = $CameraUI

func _ready() -> void:
    cameras_button.pressed.connect(_toggle_camera_ui)
    left_door_button.pressed.connect(office.toggle_left_door)
    right_door_button.pressed.connect(office.toggle_right_door)
    camera_ui.closed.connect(_close_camera_ui)

func _toggle_camera_ui() -> void:
    camera_ui.visible = !camera_ui.visible

func _close_camera_ui() -> void:
    camera_ui.visible = false

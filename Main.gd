extends Control

@onready var office = $Office
@onready var left_door_button: Button = $UI/DoorButtons/LeftDoorButton
@onready var right_door_button: Button = $UI/DoorButtons/RightDoorButton

func _ready() -> void:
	left_door_button.pressed.connect(office.toggle_left_door)
	right_door_button.pressed.connect(office.toggle_right_door)

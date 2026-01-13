extends Node2D

var left_door_closed := false
var right_door_closed := false

@onready var left_door_rect: ColorRect = $LeftDoor
@onready var right_door_rect: ColorRect = $RightDoor

func _ready() -> void:
	_update_door_visuals()

func toggle_left_door() -> void:
	left_door_closed = !left_door_closed
	_update_door_visuals()

func toggle_right_door() -> void:
	right_door_closed = !right_door_closed
	_update_door_visuals()

func _update_door_visuals() -> void:
	left_door_rect.color = Color(0.2, 0.2, 0.2) if left_door_closed else Color(0.8, 0.8, 0.8)
	right_door_rect.color = Color(0.2, 0.2, 0.2) if right_door_closed else Color(0.8, 0.8, 0.8)

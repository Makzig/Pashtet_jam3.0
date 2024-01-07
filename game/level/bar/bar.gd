extends Node3D

@onready var player = $"Main character"

func _ready() -> void:
	QuestManager.give_quest(name.to_lower(), player)

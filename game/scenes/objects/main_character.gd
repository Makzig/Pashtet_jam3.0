extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var label: Label = $CanvasLayer/Label

func _ready() -> void:
	animation_player.play("Walking_B")

func get_quests(quests : Array):
	label.text = ""
	for quest in quests:
		label.text += quest + "\n"

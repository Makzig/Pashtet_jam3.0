extends Node

@onready var head_container: VBoxContainer = $HeadContainer
@onready var makzig_name: Label = $MakzigName
@onready var sound: AudioStreamPlayer = $Sound




func _ready() -> void:
	makzig_name.scale = Vector2.ZERO
	head_container.scale = Vector2.ZERO
	await get_tree().create_timer(1.0).timeout
	anim_object(head_container)
	await get_tree().create_timer(2.0).timeout
	anim_object(makzig_name)
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://Scenes/GUI/main_menu.tscn")


func anim_object(object:Control) -> void:
	sound.play()
	var tween := create_tween().set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property(object, "scale", Vector2.ONE * 0.5, 1.0)
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(object, "modulate:a", 0.0, 1.0)

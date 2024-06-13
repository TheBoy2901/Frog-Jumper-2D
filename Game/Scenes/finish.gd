extends Area2D

@export var target_level : PackedScene
@onready var game_manager = %GameManager
@export var collactables : PackedInt32Array


func _on_body_entered(body):
	if (body.name == "CharacterBody2D") and GameManager.points == collactables[0]:
		GameManager.points = 0
		var currentscene = get_tree().current_scene.name
		print(currentscene)
		get_tree().change_scene_to_packed(target_level)

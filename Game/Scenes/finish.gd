extends Area2D

@export var target_level : PackedScene
@export var collectables : PackedInt32Array
@onready var game_manager = %GameManager

func _ready():
	var level = collectables[1]
	match level:
		11:
			GameManager.levelUse = "res://Scenes/Level1.tscn"
		12:
			GameManager.levelUse = "res://Scenes/Level2.tscn"

func _on_body_entered(body):
	if (body.name == "CharacterBody2D") and GameManager.points == collectables[0]:
		GameManager.points = 0
		get_tree().change_scene_to_packed(target_level)

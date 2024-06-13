extends Node

func _on_resart_pressed():
	GameManager.points = 0
	get_tree().change_scene_to_file(GameManager.level)


func _on_main_menu_pressed():
	GameManager.points = 0
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

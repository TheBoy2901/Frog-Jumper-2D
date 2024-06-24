extends Node

func _on_resart_pressed():
	GameManager.points = 0
	get_tree().change_scene_to_file(GameManager.levelUse)


func _on_main_menu_pressed():
	GameManager.points = 0
	get_tree().change_scene_to_file("res://Scenes/player_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()

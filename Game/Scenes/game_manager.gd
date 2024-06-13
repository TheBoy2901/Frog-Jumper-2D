extends Node

@onready var points_label = %PointsLabel

var points = 0
var level = "res://Scenes/Level1.tscn"

func add_point():
	GameManager.points += 1
	points_label.text = "Points: " + str(GameManager.points)

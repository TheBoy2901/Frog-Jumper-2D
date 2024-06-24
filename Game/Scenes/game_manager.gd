extends Node

@onready var points_label = %PointsLabel

var points = 0
var levelUse

func add_point():
	GameManager.points += 1
	points_label.text = "Points: " + str(GameManager.points)

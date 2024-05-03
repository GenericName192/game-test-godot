extends Node

@onready var score_label = $ScoreLabel

var score = 0

func add_point():
	score += 1
	score_label.text = "Hey you collected " + str(score) + " coins, I cant tell if thats
	good or not because I'm just text on the screen,
	but it hey. Good Job!"

extends Node

func _ready():
	if General.curr_sc == "Tavern" and \
	   General.sc_find(["Cat_Tavern"]) and \
	   Time.h < 10:
		get_tree().change_scene("res://Scenes/Tavern/10_00.tscn")

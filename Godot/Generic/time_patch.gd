extends Node

func _ready():
	if General.curr_sc == "Tavern" and \
	   General.sc_find(["Cat_Tavern"]) and \
	   Time.h < 10:
		get_tree().change_scene("res://Scenes/Tavern/10_00.tscn")

	if not General.sc_find(["Truth_Heard"]) and \
	   not General.sc_find(["Announced"]) and \
	   Time.h >= 18:
		get_tree().change_scene("res://Scenes/X_Else/Announcement.tscn")
	if General.curr_sc == "Park" and \
	   not General.sc_find(["Truth_Heard"]) and \
	   Time.h >= 19:
		get_tree().change_scene("res://Scenes/Ending/Default.tscn")

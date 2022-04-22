extends Node

func _ready():
	pass

func patched():
	# cat to tavern and total time < 10:00
	if General.curr_sc == "Tavern" and \
	   General.sc_find(["Cat_Tavern"]) and \
	   get_tree().get_current_scene().filename != "res://Scenes/Tavern/10_00.tscn" and \
	   Time.h < 10:
		if get_tree().change_scene("res://Scenes/Tavern/10_00.tscn"):
			print("An error has occurred: could not change scene")
		return true
	
	#announcement at 18:00
	if not General.sc_find(["Truth_Heard"]) and \
	   not General.sc_find(["Announced"]) and \
	   Time.h >= 18 and \
	   General.sc_is_overwritable(get_tree().get_current_scene().filename):
		if get_tree().change_scene("res://Scenes/X_Else/Announcement.tscn"):
			print("An error has occurred: could not change scene")
		return true
	
	#people waiting for announcement + default ending
	if General.curr_sc == "Park" and \
	   General.sc_find(["Announced"]):
		if  Time.h >= 19:
			if get_tree().change_scene("res://Scenes/Ending/Default.tscn"):
				print("An error has occurred: could not change scene")
		else:
			if get_tree().change_scene("res://Scenes/Park/18_00.tscn"):
				print("An error has occurred: could not change scene")
		return true
	
	return false

extends Node

func _ready():
	pass

func patched(next_sc):
	# cat to tavern and total time < 10:00
	if "Tavern" in next_sc and \
	   General.sc_find(["Cat_Tavern"]) and \
	   get_tree().get_current_scene().filename != "res://Scenes/Tavern/10_00.tscn" and \
	   Time.h < 10:
		if get_tree().change_scene("res://Scenes/Tavern/10_00.tscn"):
			print("An error has occurred: could not change scene")
		return true
	
	# you got kicked out of the tavern
	if General.sc_find(["Busted"]) and \
	   get_tree().get_current_scene().filename == "res://Scenes/Tavern/09_00_Steal.tscn":
		Time.time_sum(120)
		if get_tree().change_scene("res://Scenes/X_Else/Travel.tscn"):
			print("An error has occurred: could not change scene")
		return true
	
	#announcement at 18:00
	if not General.sc_find(["Alert_Success"]) and \
	   not General.sc_find(["Announced"]) and \
	   Time.h >= 18 and \
	   General.sc_is_overwritable(next_sc):
		if get_tree().change_scene("res://Scenes/X_Else/Announcement.tscn"):
			print("An error has occurred: could not change scene")
		return true
	
	#people waiting for announcement + default ending
	if "Park" in next_sc and \
	   General.sc_find(["Announced"]):
		if  Time.h >= 19:
			if get_tree().change_scene("res://Scenes/X_Ending/Default.tscn"):
				print("An error has occurred: could not change scene")
		else:
			if get_tree().change_scene("res://Scenes/Park/18_00.tscn"):
				print("An error has occurred: could not change scene")
		return true
	
	#good ending if quest concluded
	if  General.sc_find(["Alcol_Given"]) and \
		General.sc_find(["Glitch_Given"]) and \
		General.sc_find(["Money_Given"]) and \
		not General.sc_find(["Everything_Given"]):
			if get_tree().change_scene("res://Scenes/X_Ending/Good.tscn"):
				print("An error has occurred: could not change scene")
			return true
	
	#half-good ending if not all ingredients gathered by 19:00
	if "Lab" in next_sc and \
		General.sc_find(["Truth_Heard"]) and \
		not (General.sc_find(["Alcol_Given"]) and \
			 General.sc_find(["Glitch_Given"]) and \
			 General.sc_find(["Money_Given"]) ) and \
		Time.h >=19:
			if get_tree().change_scene("res://Scenes/Lab/To_End.tscn"):
				print("An error has occurred: could not change scene")
			return true

	return false

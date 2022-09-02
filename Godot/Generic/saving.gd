extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func save_sc():
	var save_game = File.new()
	save_game.open("user://savesc.save", File.WRITE)

	var sc_data = [
	{
		"time_h"     : Time.h,
		"time_m"     : Time.m, 
		"curr_sc"    : get_tree().get_current_scene().get_filename(),
		"money"      : Inventory.money
	}
	]
	
	var visited_sc = {}
	var inventory = {}
	
	for sc in General.visited_sc:
		visited_sc[sc] = 1
	sc_data.append(visited_sc)
	
	for obj in Inventory.inv:
		inventory[obj] = 1
	sc_data.append(inventory)
	
	# Store the save dictionary as a new line in the save file.
	save_game.store_line(to_json(sc_data))
	save_game.close()

func save_end():
	var save_game = File.new()
	save_game.open("user://saveend.save", File.WRITE)

	var end_data = {
		"Default"   : true if "Default" in General.endings_unlocked else false,
		"Good"      : true if "Good" in General.endings_unlocked else false,
		"Half_Good" : true if "Half_Good" in General.endings_unlocked else false,
		"Wizard"    : true if "Wizard" in General.endings_unlocked else false,
		"You"       : true if "You" in General.endings_unlocked else false
	}

	# Store the save dictionary as a new line in the save file.
	save_game.store_line(to_json(end_data))
	save_game.close()

func load_sc():
	var save_game = File.new()
	if not save_game.file_exists("user://savesc.save"):
		return # Error! We don't have a save to load.

	# Load the file line by line and process that dictionary to restore
	# the object it represents.
	save_game.open("user://savesc.save", File.READ)
	
	var node_data = parse_json(save_game.get_line())
	
	var general = node_data[0]
	var visited = node_data[1]
	var inv = node_data[2]
	
	Time.h = int(general["time_h"])
	Time.m = int(general["time_m"])
	var curr_sc = general["curr_sc"]
	Inventory.money = int(general["money"])
	
	General.visited_sc = []
	for sc in visited.keys():
		General.sc_add([sc])
	
	Inventory.inv = []
	for obj in inv.keys():
		Inventory.inv_add([obj])
	
	save_game.close()
	load_end()
	
	var error = get_tree().change_scene(curr_sc)
	if error:
		General.guess_scn("Park", 0)
	
func load_end():
	var save_game = File.new()
	if not save_game.file_exists("user://saveend.save"):
		return # Error! We don't have a save to load.

	save_game.open("user://saveend.save", File.READ)
	
	General.endings_unlocked = []
	
	var node_data = parse_json(save_game.get_line())

	for i in node_data.keys():
		if node_data[i]:
			General.endings_add(i)
	
	save_game.close()

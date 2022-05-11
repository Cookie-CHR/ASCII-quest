extends Node

var prev_sc = "Null"
var curr_sc = "Null"
var visited_sc = []

func sc_add(array):
	for scene in array:
		visited_sc.append(scene)

func sc_find(array):
	if array == []:
		return true
	
	var found = false
	for scene in array:
		found = false
		if scene in visited_sc:
			found = true
		if not found:
			return false
	return found

func update_prevs():
	prev_sc = curr_sc
	curr_sc = get_tree().get_current_scene().get_name()

func guess_scn(dest, minutes):
	# Find the right scene for the current time (useful for long scenes)	
	var dest_array = []
	if dest == "Forest":
		dest_array = ["08:10", "09:00","13:00"]
	elif dest == "Tavern":
		dest_array = ["08:00", "09:00", "10:00", "12:00", "14:00"]
	elif dest == "Park":
		dest_array = ["08:00","08:10","08:30", "09:00", "12:00", "13:00", "19:00"]
	elif dest == "Castle":
		dest_array = ["08:00", "09:00", "13:00", "14:00", "18:00", "19:00"]
	elif dest == "Lab":
		dest_array = ["08:00", "09:00", "12:00", "14:00", "18:00"]
	
	var closest_time = Time.findClosest(dest_array, minutes)
	return "Scenes/%s/%02d_%02d" % [dest, closest_time[0], closest_time[1]]


func sc_is_overwritable(s):
	if "res://" in s:
		s = s.substr(6)
	if".tscn" in s:
		s.erase(s.length() - 5, 5)
	return [General.guess_scn("Park", 0), General.guess_scn("Forest", 0), General.guess_scn("Castle", 0), General.guess_scn("Tavern", 0), General.guess_scn("Lab", 0)].has(s)


func sc_reset():
	prev_sc = "Null"
	curr_sc = "Null"
	visited_sc = []

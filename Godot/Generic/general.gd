extends Node

var prev_sc = "Null"
var curr_sc = "Null"

func update_prevs():
	prev_sc = curr_sc
	curr_sc = get_tree().get_current_scene().get_name()

func guess_scn(dest, minutes):
	# Find the right scene for the current time (useful for long scenes)	
	var dest_array = []
	if dest == "Forest":
		dest_array = ["08:10", "09:10"]
	elif dest == "Tavern":
		dest_array = ["08:10"]
	elif dest == "Park":
		dest_array = ["08:00","08:20","08:30"]
	elif dest == "Castle":
		dest_array = ["08:10"]
	elif dest == "Lab":
		dest_array = ["08:10"]
	
	var closest_time = Time.findClosest(dest_array, minutes)
	return "%02d:00 - %02d:00/%02d_%02d_%s" % [closest_time[0], closest_time[0]+1, closest_time[0], closest_time[1], dest]

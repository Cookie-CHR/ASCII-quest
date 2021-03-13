extends Node

var prev_sc = "Null"
var curr_sc = "Null"

func update_prevs():
	prev_sc = curr_sc
	curr_sc = get_tree().get_current_scene().get_name()

func change_scn(dest, minutes):
	Time.time_sum(minutes);
	print("changing scene to ",dest,".tscn")
	return get_tree().change_scene(dest+".tscn")
	

var forest_times = ["08:10", "09:10"]
var tavern_times = ["08:10"]
var park_times = ["08:00","08:20","08:30"]
var castle_times = ["08:10"]
var lab_times = ["08:10"]

func guess_scn(dest, minutes):
	# Find the right scene for the current time (useful for long scenes)	
	var dest_array = []
	if dest == "Forest":
		dest_array = forest_times
	elif dest == "Tavern":
		dest_array = tavern_times
	elif dest == "Park":
		dest_array = park_times
	elif dest == "Castle":
		dest_array = castle_times
	elif dest == "Lab":
		dest_array = lab_times
	
	var closest_time = Time.findClosest(dest_array, minutes)
	return "%02d:00 - %02d:00/%02d_%02d_%s" % [closest_time[0], closest_time[0]+1, closest_time[0], closest_time[1], dest]

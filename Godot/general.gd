extends Node

var prev_sc = "Title"
func update_prev(new):
	prev_sc = new

func change_scn(dest):
	return get_tree().change_scene(dest+".tscn")

var forest_times = ["08:10", "09:10"]
var tavern_times = []
var park_times = ["08:00","08:20","08:30"]
var castle_times = []
var lab_times = []

func guess_scn(dest):
	# Find the right scene for the current time (useful for long scenes)	
	var dest_array = []
	if dest == "forest":
		dest_array = forest_times
	elif dest == "tavern":
		dest_array = tavern_times
	elif dest == "park":
		dest_array = park_times
	elif dest == "castle":
		dest_array = castle_times
	elif dest == "lab":
		dest_array = lab_times
	
	var closest_time = Time.findClosest(dest_array)
	return str(closest_time[0])+":00 - "+str(closest_time[0]+1)+":00/"+str(closest_time[0])+"_"+str(closest_time[1])+"_"+dest

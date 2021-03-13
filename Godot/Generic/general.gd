extends Node

var prev_sc = "Null"
var curr_sc = "Null"

func update_prevs():
	print("Updating...")
	prev_sc = curr_sc
	curr_sc = get_tree().get_current_scene().get_name()
	print(prev_sc," ", curr_sc)

func change_scn(dest, minutes):
	Time.time_sum(minutes);
	print("changing scene to... ",dest,".tscn")
	return get_tree().change_scene(dest+".tscn")

var forest_times = ["08:10", "09:10"]
var tavern_times = []
var park_times = ["08:00","08:20","08:30"]
var castle_times = []
var lab_times = []

func guess_scn(dest, minutes):
	print("guessing...")
	print (dest, " ",minutes)
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
	
	var closest_time = Time.findClosest(dest_array, minutes)
	return "%02d - %02d/%02d_%02d_%s" % [closest_time[0], closest_time[0]+1, closest_time[0], closest_time[1], dest]

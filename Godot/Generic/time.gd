extends Node

# Declare member variables here.
var h = 8
var m = 0

func time_sum (new_m):
	m = m + new_m
	if m >= 60:
		h = h + m / 60
		m = m % 60

func time_print(separator):
	return "%02d%s%02d" % [h, separator, m]

func path():
	return "res://%02d:00 - %02d:00/" % [h, h+1]

func findClosest(dest_array, minutes):
	var closest_h = 8
	var closest_m = 0
	
	for instance in dest_array:
		var instance_h = int(instance[0])*10+int(instance[1])
		var instance_m = int(instance[3])*10+int(instance[4])
	
		if h*60 + m + minutes < instance_h*60 + instance_m:
			break;
		elif instance_h*60 + instance_m > closest_h*60 + closest_m:
			closest_h = instance_h
			closest_m = instance_m
	return [closest_h, closest_m]

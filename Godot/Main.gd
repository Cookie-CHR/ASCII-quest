extends Node2D


# Declare member variables here.
var time_h = 8
var time_m = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func time_sum (new_h, new_m):
	time_h = time_h + new_h
	time_m = time_m + new_m
	if time_m / 60 >=1:
		time_m = time_m % 60
		time_h = time_h + time_m / 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

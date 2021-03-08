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
	var strH = str(h)
	var strM = str(m)
	if m < 10:
		strM = str(0)+ str(m)
	
	return strH+separator+strM

func path():
	return "res://"+ str(h)+":00 - "+str(h+1)+":00/"

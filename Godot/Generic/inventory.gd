extends Node

var money = 0
var inv = []

func inv_add(object):
	inv.append(object)

func inv_remove(object):
	inv.erase(object)

func inv_print():
	for obj in inv:
		print(obj)

func inv_find(object):
	if object == "":
		return true
	
	var found = false
	for obj in inv:
		if obj == object:
			found = true
	return found

func money_manage(new):
	#both sums and subtractions
	money += new

func money_print():
	print(money)

extends Node

var money = 0
var inv = []

func inv_add(array):
	for object in array:
		inv.append(object)

func inv_remove(array):
	for object in array:
		inv.erase(object)

func inv_print():
		return inv

func inv_find(array):
	if array == []:
		return true
	
	var found = false
	for object in array:
		found = false
		if object in inv:
			found = true
		if not found:
			return false
	return found

func money_manage(new):
	#both sums and subtractions
	money += new

func money_print():
	return(money)

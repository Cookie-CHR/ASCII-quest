extends Button
# Initialize variables with basic values
var dest = ""
var minutes = 0
var money = 0
var inv_get = []
var inv_lose = []
var inv_required = []
var music = ""

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	
	# If the player doesn't have the requirements, the button doesn't appear
	if not Inventory.inv.find(inv_required):
		hide()


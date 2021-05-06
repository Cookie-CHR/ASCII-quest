extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Arrest"
	self.minutes = 120
	# Need either wine or beer
	if Inventory.inv_find(["beer"]):
		self.inv_required = ["beer"]
	else:
		self.inv_required = ["wine"]

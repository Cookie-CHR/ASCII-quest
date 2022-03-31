extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Guard_Alcol"
	
	if Inventory.money >= 3:
		self.minutes = 10
	else:
		self.minutes = 60
	
	# Need either wine or beer
	if Inventory.inv_find(["beer"]):
		self.inv_required = ["beer"]
	else:
		self.inv_required = ["wine"]
	# either one will be removed
	self.inv_remove = self.inv_required
	

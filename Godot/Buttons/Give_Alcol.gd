extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Lab/Give_Alcol"
	
	# Need either wine or beer
	if Inventory.inv_find(["Beer"]):
		self.inv_required = ["Beer"]
	else:
		self.inv_required = ["Wine"]
	# either one will be removed
	self.inv_remove = self.inv_required
	

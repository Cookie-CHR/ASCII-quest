extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.sc_required = ["S_Room_Found"]
	
	if General.sc_find(["Truth_heard"]):
		self.dest = "Scenes/Lab/S_Room"
	elif General.sc_find(["Alert_Success"]):
		self.dest = "Scenes/Lab/Truth"
	else:
		self.dest = "Scenes/Lab/Alert"

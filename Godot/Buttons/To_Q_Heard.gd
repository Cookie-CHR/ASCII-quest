extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if General.sc_find(["Truth_Heard"]):
		self.dest = "Scenes/Lab/S_Room"
	else:
		self.dest = "Scenes/Lab/Q_Heard"

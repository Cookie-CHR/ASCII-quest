extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if General.sc_find(self.name):
		self.dest = "Scenes/Lab/Alert_Success"
	else:
		self.dest = "Scenes/lab/Alert_Fail"

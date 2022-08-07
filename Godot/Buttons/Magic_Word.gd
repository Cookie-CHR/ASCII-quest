extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	
	if General.sc_find([self.name]):
		self.text += "<--(The word from the wizard's notes)"
		self.dest = "Scenes/Lab/Alert_Success"
	else:
		self.dest = "Scenes/Lab/Alert_Fail"

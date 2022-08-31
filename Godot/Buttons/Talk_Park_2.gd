extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/16_00_Talk"
	if General.sc_find(["T_Group"]):
		if General.sc_find(["Truth_Heard"]):
			self.dest = "Scenes/Park/16_00_Talk_Solved"
		else:
			self.dest = "Scenes/Park/16_00_Talk_Done"
	
	self.sc_forbidden = ["Timmy_Solved"]

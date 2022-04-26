extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	if (General.sc_find(["Flask_Proved", "Guard_Proved", "Notes_Proved"])):
		self.dest = "Scenes/Castle/Judge_Guilty"
	else:
		self.dest = "Scenes/Castle/Judge_Innocent"
	

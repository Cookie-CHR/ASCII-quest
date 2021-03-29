extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/Quests_Clean"
	self.inv_get = ["broom", "gloves"]
	self.sc_forbidden = ["Clean_Accepted"]

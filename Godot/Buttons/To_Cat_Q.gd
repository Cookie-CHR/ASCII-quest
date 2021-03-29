extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/Quests_Cat"
	self.inv_required = ["cat"]
	self.sc_forbidden = ["Cat_Accepted"]

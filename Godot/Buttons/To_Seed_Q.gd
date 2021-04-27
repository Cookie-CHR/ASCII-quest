extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/Quests_Seed"
	self.minutes = 10
	self.inv_get = ["seed"]
	self.sc_forbidden = ["Seed_Accepted"]


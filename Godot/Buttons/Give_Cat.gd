extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/"+General.curr_sc+"/09_00_Cat"
	print(General.curr_sc)
	if General.curr_sc == "Castle":
		self.sc_required = ["Quests_Heard"]
	self.minutes = 30
	self.money = 2
	self.inv_required = ["cat"]
	self.inv_remove = ["cat"]

extends "Improved_Button.gd"

func re_init():
	# Set the destination
	self.dest = "Scenes/"+General.curr_sc+"/09_00_Cat"
	if Time.h >= 13 and Time.h <= 14:
		# The scene is slightly different during lunch time
		self.dest = "Scenes/"+General.curr_sc+"/13_00_Cat"
	
	# You can't know this is the jesters' cat, if you didn't hear the quests
	if General.curr_sc == "Castle":
		self.sc_required = ["Quests_Heard"]
	
	
	# Some time passes, you get your reward and give away the cat
	self.minutes = 30
	
	if General.curr_sc == "Castle":
		self.money = 2
	else:
		self.inv_add = ["Wine"]
	
	self.inv_required = ["cat"]
	self.inv_remove = ["cat"]

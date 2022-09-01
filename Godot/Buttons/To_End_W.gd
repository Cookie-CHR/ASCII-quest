extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/X_Ending/Wizard"
	self.money = 100
	self.minutes = 60
	self.unreadable = true

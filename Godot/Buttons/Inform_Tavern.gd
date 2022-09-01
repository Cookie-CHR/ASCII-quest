extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Castle/Inform_Tavern"
	self.minutes = 50
	self.sc_required = ["Plague_Tavern"]
	self.sc_forbidden = ["Informed_Tavern"]
	self.money = 5
	self.unreadable = true

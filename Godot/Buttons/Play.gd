extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/Park/08_00"
	
	# Restore the initial game conditions if changed
	General.sc_reset()
	Inventory.inv_reset()
	Time.time_reset()
	self.unreadable = true
	
	Save.load_end()

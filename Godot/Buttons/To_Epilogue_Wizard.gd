extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/X_Epilogue/Wizard"
	self.unreadable = true
	General.endings_add("Wizard")
	Save.save_end()

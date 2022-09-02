extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = "Scenes/X_Epilogue/Default"
	self.unreadable = true
	General.endings_add("Default")
	Save.save_end()

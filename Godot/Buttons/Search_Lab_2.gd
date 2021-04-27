extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	
	# This scene appears only after noon
	if (Time.h < 12):
		hide()
	
	#Have we found the password?
	if not ( General.sc_find(["AAAA"]) or \
			 General.sc_find(["BBBB"]) or \
			 General.sc_find(["CCCC"]) ):
		self.dest = "Scenes/Lab/09_00_Search"
	else:
		self.dest = "Scenes/Lab/12_00_Search"
		self.text = "Investigate further        (+30m)"
	
	self.minutes = 30
	self.sc_forbidden = ["Secret_Lab_Found"]

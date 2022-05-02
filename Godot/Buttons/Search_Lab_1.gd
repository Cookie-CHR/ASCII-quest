extends "Improved_Button.gd"

func re_init():
	
	#Have we found the password?
	if not ( General.sc_find(["Zashamez"]) or \
			 General.sc_find(["Bouborus"]) or \
			 General.sc_find(["Kickrix"]) ):
		self.dest = "Scenes/Lab/Search"
	elif not General.sc_find(["Notes_Found"]) :
		self.dest = "Scenes/Lab/Search_2"
		self.text = "Investigate further        (+30m)"
	else:
		self.dest = "Scenes/Lab/Search_3"
		self.text = "Investigate further        (+30m)"
	
	self.minutes = 30
	self.sc_forbidden = ["S_Room_Found"]

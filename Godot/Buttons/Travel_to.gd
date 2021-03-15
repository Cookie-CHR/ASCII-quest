extends "Improved_Button.gd"

func re_init():
	# Re-initialize the variables
	# Useful for destinations that require an updated curr_sc, or the button's name
	self.dest = General.guess_scn(self.name, 10)
	self.minutes = 10
	
	if self.name == "Forest":
		self.music = "res://Music/Forest/Midnight Tale.ogg"
	elif self.name == "Tavern":
		self.music = "res://Music/Tavern/Thatched Villagers.ogg"
	elif self.name == "Park":
		self.music = "res://Music/Park/The Forest and the Trees.ogg"
	elif self.name == "Castle":
		self.music = "res://Music/Castle/Angevin B.ogg"
	elif self.name == "Lab":
		self.music = "res://Music/Wizard lab/Krampus Workshop.ogg"

func set_pos(num):
	self.position = [36, 413+(23*num)]

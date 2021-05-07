extends AudioStreamPlayer

func _ready():
	# I usually change the musics at the pressing of the button, but sometimes it is not possible
	if (self.name == "Menu"):
		MusicPlayer.change_music("res://Music/Menu/Suonatore di Liuto.ogg")
	
	elif (self.name == "Park"):
		MusicPlayer.change_music("res://Music/Park/The Forest and the Trees.ogg")
	elif (self.name == "Forest"):
		MusicPlayer.change_music("res://Music/Forest/Midnight Tale.ogg")
	elif (self.name == "Tavern"):
		MusicPlayer.change_music("res://Music/Tavern/Thatched Villagers.ogg")
	elif (self.name == "Castle"):
		MusicPlayer.change_music("res://Music/Castle/Angevin B.ogg")
	elif (self.name == "Lab"):
		MusicPlayer.change_music("res://Music/Wizard lab/Krampus Workshop.ogg")
	
	elif (self.name == "Chase"):
		MusicPlayer.change_music("res://Music/Tavern/Galway.ogg")
	elif (self.name == "Suspence"):
		MusicPlayer.change_music("res://Music/Suspence/Heartbreaking.ogg")
	elif (self.name == "Infected"):
		MusicPlayer.change_music("res://Music/Infected land/Dragon and Toast.ogg")
	elif (self.name == "Death"):
		MusicPlayer.change_music("res://Music/Death/Hidden Past.ogg")
	elif (self.name == "Epilogue"):
		MusicPlayer.change_music("res://Music/Epilogue/Ascending the Vale.ogg")
	elif (self.name == "Accuse"):
		MusicPlayer.change_music("res://Music/Castle/Plans in Motion.ogg")


extends AudioStreamPlayer

func _ready():
	# I usually change the musics at the pressing of the button, but sometimes it is not possible
	if (self.name == "Menu"):
		MusicPlayer.change_music("res://Music/Menu/Suonatore di Liuto.mp3")
	
	elif (self.name == "Park"):
		MusicPlayer.change_music("res://Music/Park/The Forest and the Trees.mp3")
	elif (self.name == "Forest"):
		MusicPlayer.change_music("res://Music/Forest/Midnight Tale.mp3")
	elif (self.name == "Tavern"):
		MusicPlayer.change_music("res://Music/Tavern/Thatched Villagers.mp3")
	elif (self.name == "Castle"):
		MusicPlayer.change_music("res://Music/Castle/Angevin B.mp3")
	elif (self.name == "Lab"):
		MusicPlayer.change_music("res://Music/Wizard lab/Krampus Workshop.mp3")
	
	elif (self.name == "Chase"):
		MusicPlayer.change_music("res://Music/Tavern/Galway.mp3")
	elif (self.name == "Suspence"):
		MusicPlayer.change_music("res://Music/Suspence/Heartbreaking.mp3")
	elif (self.name == "Infected"):
		MusicPlayer.change_music("res://Music/Infected land/Dragon and Toast.mp3")
	elif (self.name == "Death"):
		MusicPlayer.change_music("res://Music/Death/Hidden Past.mp3")
	elif (self.name == "Epilogue"):
		MusicPlayer.change_music("res://Music/Epilogue/Ascending the Vale.mp3")
	elif (self.name == "Accuse"):
		MusicPlayer.change_music("res://Music/Castle/Plans in Motion.mp3")
	elif (self.name == "Silence"):
		MusicPlayer.change_music("Silence")

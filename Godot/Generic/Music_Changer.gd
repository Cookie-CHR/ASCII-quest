extends AudioStreamPlayer

var choice = {  "Menu":     "res://Music/Menu/Suonatore di Liuto.mp3",\
				
				"Park":     "res://Music/Park/The Forest and the Trees.mp3",\
				"Forest":   "res://Music/Forest/Midnight Tale.mp3",\
				"Tavern":   "res://Music/Tavern/Thatched Villagers.mp3",\
				"Castle":   "res://Music/Castle/Angevin B.mp3",\
				"Lab":      "res://Music/Wizard lab/Krampus Workshop.mp3",\
				
				"Chase":    "res://Music/Tavern/Galway.mp3",\
				"Suspence": "res://Music/Suspence/Heartbreaking.mp3",\
				"Infected": "res://Music/Infected land/Dragon and Toast.mp3",\
				"Death":    "res://Music/Death/Hidden Past.mp3",\
				"Epilogue": "res://Music/Epilogue/Ascending the Vale.mp3",\
				"Accuse":   "res://Music/Castle/Plans in Motion.mp3",\
			  }

func _ready():
	# I usually change music at the pressing of a button, but sometimes it is not possible
	if self.name in choice.keys():
		MusicPlayer.change_music(choice[self.name])
	elif self.name =="Silence":
		MusicPlayer.change_music("Silence")

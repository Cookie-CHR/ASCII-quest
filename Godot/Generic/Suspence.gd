extends Node2D

func _ready():
	if (self.name == "Suspence"):
		MusicPlayer.change_music("res://Music/Suspence/Heartbreaking.ogg")
	elif (self.name == "Infected"):
		MusicPlayer.change_music("res://Music/Infected land/Dragon and Toast.ogg")

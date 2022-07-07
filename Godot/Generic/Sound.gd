extends AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	if(not MusicPlayer.mute):
		play()
		stop()

func change_sound (new_sound):
	if new_sound != "":
		if new_sound == "Silence":
			stop()
		else:
			stop()
			set_stream(load("res://Sound/"+new_sound+".mp3"))
			if(not MusicPlayer.mute):
				play()

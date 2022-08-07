extends AudioStreamPlayer

var curr_music = "res://Music/Menu/Suonatore di Liuto.mp3"


# Called when the node enters the scene tree for the first time.
func _ready():
	volume_db = -2
	if(not MuteButton.mute):
		play()

func change_music (new_music):
	if new_music != "":
		if new_music == "Silence":
			curr_music = new_music
			stop()
		elif curr_music != new_music:
			curr_music = new_music
			stop()
			set_stream(load(new_music))
			if(not MuteButton.mute):
				play()

extends Button

var mute = false

func _ready():
	pass;

func mute_unmute():
	if (mute):
		mute = false
		MusicPlayer.play()
	else:
		mute = true
		MusicPlayer.stop()


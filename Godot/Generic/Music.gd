extends AudioStreamPlayer

var curr_music = "res://Music/Menu/Suonatore di Liuto.ogg"
var mute = false

# Called when the node enters the scene tree for the first time.
func _ready():
	print(mute)
	if(not mute):
		play()

func change_music (new_music):
	if new_music != "":
		if new_music == "Silence":
			stop()
		if curr_music != new_music:
			curr_music = new_music
			stop()
			set_stream(load(new_music))
			if(not mute):
				play()

func mute_unmute():
	if (mute):
		mute = false
		play()
	else:
		mute = true
		stop()
	print(mute)

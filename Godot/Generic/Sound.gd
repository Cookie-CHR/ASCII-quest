extends AudioStreamPlayer

var default = "res://Sound/Default.mp3"

# Called when the node enters the scene tree for the first time.
func _ready():
	volume_db = 2
	if(not MuteButton.mute):
		play()
	
	if connect("finished", self, "reset_to_default"):
		print("An error has occurred: could not connect the mute button")


func change_sound (new_sound):
	if new_sound != "":
		stop()
		set_stream(load(new_sound))
		if(not MuteButton.mute):
			play()

func reset_to_default():
	set_stream(load(default))

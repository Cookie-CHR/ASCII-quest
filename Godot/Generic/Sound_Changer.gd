extends AudioStreamPlayer

var choice = {  "Default":    "res://Sound/Default.mp3",\
				"Walking":    "res://Sound/Walking.mp3",\
				"Meow":       "res://Sound/Meow.mp3",\
				"Magic_Hit":  "res://Sound/Magic_Hit.mp3",\
				"Magic_Miss": "res://Sound/Magic_Miss.mp3",\
				"Eat":        "res://Sound/Eat.mp3",\
				"Drink":      "res://Sound/Drink.mp3",\
			  }

func _ready():
	if self.name in choice.keys():
		SoundPlayer.change_sound(choice[self.name])
	elif self.name =="Silence":
		SoundPlayer.change_sound("Silence")

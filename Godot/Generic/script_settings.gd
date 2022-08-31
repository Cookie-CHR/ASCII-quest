extends Panel

func _ready():
	background_change()
	
	for child in get_children():
		if child.name == "Mute":
			child.text = "Sound: Off" if MuteButton.mute else "Sound: On"
			if get_node("Mute").connect("pressed", self, "mute_unmute", [child]):
				print("An error has occurred: could not connect the mute button")
		elif child.name == "Reset":
			if get_node("Reset").connect("pressed", self, "reset"):
				print("An error has occurred: could not connect the reset button")
		elif child.name == "Back":
			if get_node("Back").connect("pressed", self, "back"):
				print("An error has occurred: could not connect the back button")

func background_change():
	var obj = get_tree().get_current_scene()
	if obj.get_name() == "Tavern" or obj.is_in_group("Tavern"):
		self_modulate = Color(1,0.5,0.5)
	elif obj.get_name() == "Castle" or self.is_in_group("Castle"):
		self_modulate = Color(1.3,1.3,1.3)
	elif obj.get_name() == "Park" or self.is_in_group("Park"):
		self_modulate = Color(0.9,1,0.5)
	elif obj.get_name() == "Forest" or self.is_in_group("Forest"):
		self_modulate = Color(0.5,1,0.7)
	elif obj.get_name() == "Lab" or self.is_in_group("Lab"):
		self_modulate = Color(0.9,0.6,1)

func mute_unmute(button):
	MuteButton.mute_unmute()
	button.text = "Sound: Off" if MuteButton.mute else "Sound: On"

func reset():
	# Restore the initial game conditions if changed
	General.sc_reset()
	Inventory.inv_reset()
	Time.time_reset()
	var error = get_tree().change_scene("Scenes/Park/08_00.tscn")
	if error:
		print("An error has occurred: could not reset the game")

func back():
	queue_free()

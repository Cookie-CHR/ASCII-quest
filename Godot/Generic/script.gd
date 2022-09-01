extends Panel
var settingsPanel = null
var currentPath

# Called when the node enters the scene tree for the first time.
func _ready():
	currentPath = get_tree().get_current_scene().get_filename()+"/"
	background_change()
	General.update_prevs()
	if(not MuteButton.mute):
		SoundPlayer.play()
	var i = 0
	
	for child in get_children():
		if child.name == "Settings":
			if get_node("Settings").connect("pressed", self, "settings"):
				print("An error has occurred: could not connect the settings button")
		elif child is Button:
			i = manage(child, i)

func manage(button, i):
	button.re_init()	# Hidden/Shown button
	# If the player doesn't have the requirements, the button doesn't appear
	if Inventory.inv_find(button.inv_required) == false \
	   or General.sc_find(button.sc_required) == false \
	   or General.sc_find(button.sc_forbidden) == true:
		button.hide()
	
	#Adjust position
	var base_y
	if get_tree().get_current_scene().is_in_group("Big_Screen_Scene"):
		base_y = 462
	else:
		base_y = 413
	button.set_position(Vector2(36, base_y+(23*i)))
	
	# If the button is visible, the button counter increases
	if button.visible == true:
		i += 1
	
	if get_node(button.name).connect("pressed", self, "change_scn", [button]):
		print("An error has occurred: could not connect a button")
	return i


func settings():
	if settingsPanel == null:
		settingsPanel = load("res://Generic/Settings.tscn").instance()
		add_child(settingsPanel)
	else:
		remove_child(settingsPanel)
		settingsPanel = null

func change_scn(button):
	if not Time_Patch.patched(button.dest):
		Time.time_sum(button.minutes)
		Inventory.inv_add(button.inv_get)
		Inventory.inv_remove(button.inv_remove)
		Inventory.money_manage(button.money)
		
		if not (currentPath+button.name in General.buttons_pressed) and not button.unreadable:
			General.pressed_add(currentPath+button.name)
		
		var error = get_tree().change_scene(button.dest+".tscn")
		if error:
			General.guess_scn(button.dest, button.minutes)

func background_change():
	if self.name == "Tavern" or self.is_in_group("Tavern"):
		self_modulate = Color(1,0.5,0.5)
	elif self.name == "Castle" or self.is_in_group("Castle"):
		self_modulate = Color(1.3,1.3,1.3)
	elif self.name == "Park" or self.is_in_group("Park"):
		self_modulate = Color(0.9,1,0.5)
	elif self.name == "Forest" or self.is_in_group("Forest"):
		self_modulate = Color(0.5,1,0.7)
	elif self.name == "Lab" or self.is_in_group("Lab"):
		self_modulate = Color(0.9,0.6,1)
	
	

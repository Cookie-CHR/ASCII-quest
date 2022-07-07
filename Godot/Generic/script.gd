extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	General.update_prevs()
	var i = 0
	
	for child in get_children():
		if child.name == "Mute":
			if (MusicPlayer.mute):
				child.text = "Off"
			if get_node("Mute").connect("pressed", self, "mute_unmute", [child]):
				print("An error has occurred: could not connect the mute button")
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


func mute_unmute(button):
	MusicPlayer.mute_unmute()
	if (MusicPlayer.mute):
		button.text = "Off"
	else:
		button.text = "On"

func change_scn(button):
	if not Time_Patch.patched(button.dest):
		AudioPlayer.change_sound(button.sound)
		Time.time_sum(button.minutes)
		Inventory.inv_add(button.inv_get)
		Inventory.inv_remove(button.inv_remove)
		Inventory.money_manage(button.money)
		var error = get_tree().change_scene(button.dest+".tscn")
		if error:
			General.guess_scn(button.dest, button.minutes)

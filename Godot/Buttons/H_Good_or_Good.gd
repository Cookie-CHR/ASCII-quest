extends "Improved_Button.gd"

func re_init():
	# check for alcol
	if not General.sc_find(["Alcol_Given"]):
		if Inventory.inv_find(["beer"]):
			self.inv_remove += ["beer"]
			General.sc_add(["Alcol_Given"])
		elif Inventory.inv_find(["wine"]):
			self.inv_remove += ["wine"]
			General.sc_add(["Alcol_Given"])
	
	#check for money
	if not General.sc_find(["Money_Given"]):
		if (Inventory.money >= 12):
			self.money = -12
			General.sc_add(["Money_Given"])
	
	#check for glitch
	if not General.sc_find(["Glitch_Given"]):
		if Inventory.inv_find(["glitch"]):
			self.inv_remove += ["glitch"]
			General.sc_add(["Glitch_Given"])
	
	#final check if all the ingredients have been given
	if General.sc_find(["Alcol_Given"]) and General.sc_find(["Money_Given"]) and General.sc_find(["Glitch_Given"]):
		self.dest = "Scenes/X_Ending/Good"
	else:
		self.dest = "Scenes/X_Ending/Half_Good"

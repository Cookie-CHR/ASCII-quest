extends Label


func _ready():
	if General.sc_find(["Zashamez"]):
		self.text = "O===========O\n|Magic word:|\n|Zashamez   |\nO===========O"
	elif General.sc_find(["Bouborus"]):
		self.text = "O===========O\n|Magic word:|\n|Bouborus   |\nO===========O"
	elif General.sc_find(["Kickrix"]):
		self.text = "O===========O\n|Magic word:|\n|Kickrix    |\nO===========O"
	else:
		self.text = "============O\n|\n|\n|"

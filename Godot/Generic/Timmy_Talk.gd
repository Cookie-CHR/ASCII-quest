extends Label

func _ready():
	if General.sc_find(["T_Group"]):
		# Change text and image
		if self.name=="Timmy_text":
			self.text = "Also, mr. Copper is standing on the sidewalk alone, apparently waiting for something."
		else:
			self.text =  "\n\n\n\n\n\n            .3..\n\n\n\n           OoOoOoO\n           ....oOo"



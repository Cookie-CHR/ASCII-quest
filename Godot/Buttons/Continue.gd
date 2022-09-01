extends "Improved_Button.gd"

func re_init():
	# First, we have to find out the current scene and its index
	var scene = get_tree().current_scene.filename
	scene = str(scene.replace(".tscn", ""))
	var lastNum = scene.substr(len(scene)-1, 1)
	# The 1st scene doesn't have a numeric index, so we'll assume any non-int last digit represents the 1st scene
	if int(lastNum) == 0:
		lastNum = 2
	else:
		#else, we update the index and remove the "_X" from previous scene
		scene.erase(len(scene)-2, 2)# 
		lastNum = int(lastNum)+1
	
	#now, we combine the basic scene name with a "_" and our new index
	self.dest = scene+"_"+str(lastNum)
	self.unreadable = true

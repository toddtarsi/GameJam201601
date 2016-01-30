func _ready():
	for i in range(0, implements.size()):
		var image_map = BitMap.new()
		image_map.create_from_image_alpha(image_texture.get_data())
	#set_process_input(true)

func _input(e):
	if(e.type == 2 || e.type == 6):
		for i in range(0, implement_images.size()):
			var alpha_map = implement_images[i]
			if(alpha_map.get_bit(e.pos - implements[i].get_global_pos())):
				print(implements[i].Name)
				
	pass
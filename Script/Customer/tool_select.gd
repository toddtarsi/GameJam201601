extends TextureButton

export(String) var Name
var altar_cam = "Main/Views/Altar/Cam";
var customer_cam = "Main/Views/Customer/Cam";

func _ready():
	var image_texture = get_normal_texture()
	var image_map = BitMap.new()
	image_map.create_from_image_alpha(image_texture.get_data())
	set_click_mask(image_map)
	print("CONNECTING SIGNAL")
	connect("pressed", self, "set_tool")

func set_tool():
	var view_path
	print("Clicked")
	if(Name == "Back" || Name == "Tome" || Name == "RecipeCard"):
		view_path = customer_cam
	else:
		view_path = altar_cam
	get_tree().get_root().get_node(view_path).make_current()


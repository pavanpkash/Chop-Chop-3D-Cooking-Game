extends RigidBody3D
#class_name Interactable

var object : MeshInstance3D
var cooked = false
var burned = false
# Called when the node enters the scene tree for the first time.

func _ready():
	set_meta("vegetable", 1)
#	make_unique()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if burned:
		#print("burned color")
		var new_color2 = $"vegmesh".get_active_material(0)
		new_color2.albedo_color = Color.BLACK
#		new_color22.albedo_color = Color.BLACK
#		self.physics_material_override = new_color22
		#print("burned")
	elif cooked:
		#print("cooked color")
#		change_color1()
		var material = $"vegmesh".get_active_material(0)
		material.albedo_color = Color.DARK_GREEN
#		colorchange()
		#var new_color = material.duplicate()
		#new_color.albedo_color = Color.PINK
		#self.physics_material_overridmana = new_color
		#material.albedo_color = Color.DEEP_PINK
	#elif !cooked:
		#print("raw color")


func _on_body_entered(body):
	if body.has_meta("blue_top"):
		if burned:
			print("your food is burnt!")
		elif cooked:
			print("cooked")
			$burntimer.start()
		elif !cooked:
			print("raw")
			$Timer.start()
			print("Cooking!")
	elif body.has_meta("serve_top"):
		print('Serving!')
	elif body.has_meta("whole_meat"):
		print("test")
	elif body.has_meta("knife"):
		print("knife cutting vegetable")
		queue_free()
		var cut_vegetable = load("res://scenes/cut_vegetable.tscn")
		var veg3 = cut_vegetable.instantiate()
		add_sibling(veg3)
		#var vegetable = "res://scenes/vegetable.tscn"
		#var veg_pos = vegetable.position
		#veg3.position = veg_pos

func _on_body_exited(body):
	if body.has_meta("blue_top"):
		$Timer.stop()
		$burntimer.stop()
		print("Off the stove.")

func _on_timer_timeout():
	print("Cooked!")
	cooked = true
	#var new_color = $"vegmesh".get_active_material(0)
	#new_color.albedo_color = Color.DARK_GREEN
	$burntimer.start()

func _on_burntimer_timeout():
	print("Burned!")
	burned = true
	#var new_color2 = $"vegmesh".get_active_material(0)
	#new_color2.albedo_color = Color.BLACK
func _on_area_3d_body_entered(body):
	if body.has_meta("vegetable"):
		print("Binned vegetable.")
		body.queue_free()
		spawn_veg_copies()

func spawn_veg_copies():
	var vegetable = preload("res://scenes/vegetable.tscn")
	var veg2 = vegetable.instantiate()
	add_sibling(veg2)
	veg2.set_meta("vegetable", 1)
	print("respawning vegetable")

#@onready var vegmesh = $vegmesh
#var material : StandardMaterial3D = null
#var raw_color = null
#var cooked_color = Color.DEEP_PINK

#func make_unique():
#	material = vegmesh.get_active_material(0).duplicate()
#	raw_color = material.albedo_color
#	vegmesh.set("material/0", material)
#
#func change_color1():
#	if material.albedo_color == raw_color:
#		material.albedo_color = cooked_color
#	else:
#		material.albedo_color = raw_color

#var new_color2 = vegmesh.get_active_material(0)
#		new_color2.albedo_color = Color.BLACK

	#var newmaterial = StandardMaterial3D.new()
	#newmaterial.albedo_color = Color.YELLOW

#@onready var vegmesh = $vegmesh
#
## Create a new FixedMaterial (for example)
#var new_material = StandardMaterial3D.new()
#
## Assign it on the mesh as an override
#vegmesh.set_physics_material_override(new_material)
## Modify the material (it will be applied on all meshes you use it on, here only one)
## Note: if you need a texture or other setup, you may want to set more params
#new_material.set_parameter(Material.PARAM_DIFFUSE, Color(0,1,0))

#@onready var vegmesh = $vegmesh
#func colorchange():
#	var newmaterial = StandardMaterial3D.new()
#	newmaterial.albedo_color = Color.DEEP_PINK
#	vegmesh.physics_material_override = newmaterial
#

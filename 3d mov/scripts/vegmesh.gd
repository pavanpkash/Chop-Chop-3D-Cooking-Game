extends MeshInstance3D

@onready var vegetable = $vegmesh
var material : StandardMaterial3D = null
var default_color = null
var other_color = Color.PINK

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#make_unique()

#func make_unique():
	#material = vegetable.get("material/0").duplicate() 
	#default_color = material.albedo_color
	#vegetable.set("material/0", material)
	
#func change_color():
	#if material.albedo_color == default_color:
	#	material.albedo_color = other_color
	#else:
	#	material.albedo_color = default_color

func _on_vegetable_body_entered(body):
	pass
	#if body.has_meta("blue_top"):
		#var new_color = $".".get_active_material(0)
		#new_color.albedo_color = Color(0, 0, 1)
	#	change_color()
	#elif body.has_meta("serve_top"):
	#	change_color()

func _on_timer_timeout():
	var new_color = $".".get_active_material(0)
	new_color.albedo_color = Color.DARK_GREEN

func _on_burntimer_timeout():
	var new_color2 = $".".get_active_material(0)
	new_color2.albedo_color = Color.BLACK

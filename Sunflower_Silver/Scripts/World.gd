extends Node2D

var tile = load("res://Scenes/Dirt_Tile.tscn")
var world_size = Vector2(8, 8)
var tile_size = Vector2(128, 128)

func _ready():
	for x in world_size.x:
		for y in world_size.y:
			var instance = tile.instance()
			
			instance.set_position(Vector2(x * tile_size.x, y * tile_size.y))
			add_child(instance, false)
			pass
		pass
	pass

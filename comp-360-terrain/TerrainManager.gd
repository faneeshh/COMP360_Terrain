# scripts/TerrainManager.gd
extends Node3D

@export var cols: int = 32
@export var rows: int = 32
@export var cell_size: float = 1.0
@export var height_scale: float = 8.0

func _ready():
	var noise = FastNoiseLite.new()
	noise.noise_type = 2
	noise.fractal_octaves = 3
	noise.frequency = 0.05

	var img = noise.get_image(cols + 1, rows + 1)
	img.save_png("res://assets/heightmap_preview.png")
	print("Saved heightmap_preview.png")

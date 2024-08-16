extends Node

var current_resources := {}
var unlocked_mech_parts := []

func _ready():
	pass

func add_resource(resource_name: String, amount: int):
	pass

func can_build_mech_part(part_name: String) -> bool:
	return false

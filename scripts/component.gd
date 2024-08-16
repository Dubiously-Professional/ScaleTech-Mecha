extends Node2D
class_name Component

var component_name: String
var mass: float
var heat_generation: float
var power_requirememts: float
var resource_cost: float
var maneuverability: float
var stability: float

func display_stats() -> Dictionary:
	return {
		"mass" : mass,
		"heat" : heat_generation,
		"power" : power_requirememts,
		"cost" : resource_cost,
		"maneuverability" : maneuverability,
		"stability" : stability
	}

func scale_component(scale_factor: float):
	mass *= scale_factor
	heat_generation *= scale_factor
	power_requirememts *= scale_factor
	resource_cost *= scale_factor
	maneuverability *= scale_factor
	stability *= scale_factor

func can_attach(mech_node: Node) -> bool:
	return false

func attach(mech_node: Node):
	pass

func detach(mech_node: Node):
	pass

func ready():
	pass

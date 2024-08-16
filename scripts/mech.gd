extends Node2D

var current_components = {
    "frame": null,
    "power_supply": null,
    "hydraulics": null,
    "weapons": null,
    "armor": null
}

func change_components(component_type, new_component):
    if current_components.has(component_type):
        if current_components[component_type]:
            current_components[component_type].queue_free()
        current_components[component_type] = new_component
        add_child(new_component)
        update_mech_stats()
        
func scale_component(component_type, scale_factor):
    if current_components.has(component_type) and current_components[component_type]:
        current_components[component_type].apply_scaling(scale_factor)
        update_mech_stats()

func update_mech_stats():
    var mass = 0
    var heat = 0
    var energy = 0
    var cost = 0
    var maneuverability = 0
    var stability = 0
    
    for component in current_components.values():
        if component:
            var stats = component.get_stats()
            mass += stats.mass
            heat += stats.heat_generation
            energy += stats.energy_consumption
            cost += stats.cost
            maneuverability += stats.maneuverability
            stability += stats.stability


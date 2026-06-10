if New {
	with obj_tree {
		if id != other.id{
			if x = other.x and y = other.y {instance_destroy()}
		}
	}
	with obj_bush {
		if id != other.id{
			if x = other.x and y = other.y {instance_destroy()}
		}
	}
}

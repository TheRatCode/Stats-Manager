if (!selected) {
	with (instance_create_layer(x+sprite_width, y, "Instances", obj_stats_delete_box)) {
		entityIndex = other.entityIndex;
		tagIndex = other.tagIndex;
	}
	with (instance_create_layer(x+sprite_width+32, y, "Instances", obj_stats_cancel_box)) {
		parentInst = other;
	}
	selected = true;
}
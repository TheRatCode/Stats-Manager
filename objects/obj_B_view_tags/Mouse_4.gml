obj_B_view_stats.toggled = false;
if (!toggled) {
	toggled = true;
	with (obj_TI_entity_stats_box) {
		x += room_width;	
	}
	
	with (obj_B_entity_tags_box) {
		x -= room_width;	
	}
}
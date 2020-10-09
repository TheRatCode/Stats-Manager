if (room == rm_view_entities) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(room_width/2, 624, string(entitiesPage) + "/" + string(maxPages));
	
	maxPages = clamp(ceil(ds_map_size(global.entitiesMap)/9), 1, 9999);
}
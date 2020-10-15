if (room == rm_create_tags) {
	if (tagsMapIndex != -1) {
		ds_map_replace(global.entityTags, string(tagsMapIndex), text_input);
	}
}
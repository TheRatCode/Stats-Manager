var fileStr = get_save_filename_ext("Save File|*.txt", "Save1", working_directory, "Stats Manager Saving");

if (fileStr != "") {
	var mapToWrite = ds_map_create();
	ds_map_add_map(mapToWrite, "0", global.statsMap);
	ds_map_add_map(mapToWrite, "1", global.entitiesMap);
	ds_map_add_map(mapToWrite, "2", global.spritesMap);
	
	var file = file_text_open_write(fileStr);
	file_text_write_string(file, json_encode(mapToWrite));
	file_text_close(file);
}
var fileStr = get_open_filename("Load File|*.txt", "");

if (fileStr != "") {
	var file = file_text_open_read(fileStr);
	var mapToRead = json_decode(file_text_read_string(file));
	file_text_close(file);
	
	ds_map_copy(global.statsMap, ds_map_find_value(mapToRead, "0"));
	ds_map_copy(global.entitiesMap, ds_map_find_value(mapToRead, "1"));
	ds_map_copy(global.spritesMap, ds_map_find_value(mapToRead, "2"));
}
var fileStr = get_open_filename_ext("Load File|*.txt", "", program_directory, "Stats Manager Loading");
if (fileStr != "") {
	var file = file_text_open_read(fileStr);
	var mapToRead = json_decode(file_text_read_string(file));
	file_text_close(file);
	
	ds_map_copy(global.statsMap, ds_map_find_value(mapToRead, "0"));
	ds_map_copy(global.entitiesMap, ds_map_find_value(mapToRead, "1"));
	ds_map_copy(global.entityTags, ds_map_find_value(mapToRead, "2"));
}
/// @description Handle delete click

//If deleteEntityButton is clicked
if (mouseHovered(deleteEntityButton)) {
	//Remove selected entity from entity map
	var entityMap = global.entitiesMap;
	var newEntityMap = ds_map_create();
	
	var realI = 0;
	//Loop and dont add index to new entity list
	for (var i = 0; i < ds_map_size(entityMap); i++) {
		if (i != entityIndex) {
			ds_map_add_map(newEntityMap, string(realI), ds_map_find_value(entityMap, string(realI)));
			realI++;
		}
	}
	
	ds_map_copy(global.entitiesMap, newEntityMap);
	
	//Destroy objects to prevent room_end updates
	instance_destroy(obj_TI_stats_box); //This will be handled by this controller object soonish...
	
	room_goto(rm_view_entities);
}
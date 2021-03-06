///@description Save and add entity to entitiesMap
var statsArray = ds_map_create();
ds_map_add(statsArray, "0", obj_TI_entity_name.text_input); // 0 = name
ds_map_add(statsArray, "1", obj_TI_entity_sprite_link.text_input); // 1 = sprite link

//Loop all current tags objects
var numTags = instance_number(obj_B_entity_tags_box);
var tagObjArray = ds_list_create();
for (var i = 0; i < numTags; i++) {
	var tagObj = instance_find(obj_B_entity_tags_box, i);
	
	if (tagObj.selected) {
		ds_list_add(tagObjArray, tagObj.title_text);
	}
}
ds_map_add_list(statsArray, "2", tagObjArray);

//Loop all current stats objects
var numStats = instance_number(obj_TI_entity_stats_box);
for (var i = 0; i < numStats; i++) {
	var statObj = instance_find(obj_TI_entity_stats_box, i);
	
	var statObjArray = ds_list_create();
	ds_list_add(statObjArray, statObj.title_text);
	ds_list_add(statObjArray, statObj.text_input);
	
	ds_map_add_list(statsArray, string(3+i), statObjArray);
}

ds_map_add_map(global.entitiesMap, string(ds_map_size(global.entitiesMap)), statsArray);
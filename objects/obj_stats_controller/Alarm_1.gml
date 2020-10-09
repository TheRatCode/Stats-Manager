/// @description Create entities objects in entities room
for (var i = 0; i < array_length_1d(items); i++) {
	if (items[i] != "") {
		instance_destroy(items[i]);
	}
}

for (var i = 0; i < 9; i++) {
	var access_I = ((entitiesPage-1)*9) + i
	var tmpMap = ds_map_find_value(global.entitiesMap, string(access_I));
	
	if (tmpMap == "" || tmpMap == undefined || !ds_exists(tmpMap, ds_type_map)) {
		continue;	
	}
	
	var heightMod = floor(i/3);
		
	items[i] = instance_create_layer((32*(i%3+1))+((i%3)*160), (32*(heightMod+1))+(160*heightMod), "Instances", obj_entity_box);

	with (items[i]) {
		title_text = ds_map_find_value(tmpMap, "0");
		entityIndex = access_I;
	}
}
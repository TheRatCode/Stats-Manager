/// @description Create entities objects in entities room
//Destroy all items in array
for (var i = 0; i < array_length_1d(items); i++) {
	if (items[i] != "") {
		instance_destroy(items[i]);
	}
}

for (var i = 0; i < 9; i++) { //Loop 9 times, max objects to view in rm_view_entities
	var access_I = ((entitiesPage-1)*9) + i //Index based on which page we are on
	var tmpMap = ds_map_find_value(global.entitiesMap, string(access_I));
	
	if (tmpMap == "" || tmpMap == undefined || !ds_exists(tmpMap, ds_type_map)) {
		continue;	
	}
	
	var heightMod = floor(i/3);
	items[i] = instance_create_layer((32*(i%3+1))+((i%3)*160), (32*(heightMod+1))+(160*heightMod), "Instances", obj_entity_box);

	with (items[i]) {
		title_text = ds_map_find_value(tmpMap, "0");
		entityIndex = access_I;
		
		var spr = ds_map_find_value(tmpMap, "1")
		if (spr != "" && spr != undefined) {
			sprite = sprite_add(spr, 1, false, false, 0, 0);
		}
	}
}
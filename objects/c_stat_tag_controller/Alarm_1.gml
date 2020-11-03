/// @description Loop to update if needed
//Only run in rm_view_specific_entity
if (room != rm_view_specific_entity) { alarm[1] = alarmUpdateTimer; return; }

var tagsCount = getTagsCount(entityIndex);

//If there is room for more tags
if (tagsCount < 8) {
	//If we have no associated addTagsButton
	if (addTagsButton == -1) {
		var tX = obj_entity_box.x+obj_entity_box.sprite_width;
		var tY = obj_entity_box.y+224;
		
		var inst = instance_create_layer(tX, tY, "Instances", obj_blank);
		with (inst) {
			sprite_index = spr_plus_box;	
		}
		
		addTagsButton = inst;
	}
} else {
	//If we have an associated addTagsButton
	if (addTagsButton != -1) {
		//Reset addTagsBut
		instance_destroy(addTagsButton);
		addTagsButton = -1;
	}
}

//If list of tags needs to be updated
if (instanceArraySize(currentTagButtons) != tagsCount) {
	currentTagButtons = destroyInstanceArray(currentTagButtons);
	
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	var entityTagsList = ds_map_find_value(entityArray, "2");
					
	//Loop entityTagsList and create labels
	for (var i = 0; i < ds_list_size(entityTagsList); i++) {
		var inst = instance_create_layer(32, 256+(32*i), "Instances", obj_blank);
		var tagName = ds_list_find_value(entityTagsList, string(i));
		
		with (inst) {
			sprite_index = spr_tag_box;
			tagIndex = i;
			tagText = tagName;
		}
		
		currentTagButtons[i] = inst;
	}
}

//Reset alarm
alarm[1] = alarmUpdateTimer;
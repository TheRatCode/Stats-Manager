/// @description Handle tag clicks

//If we have an associated add tags button
if (addTagsButton != -1) {
	//If we are hovering this on click
	if (mouseHovered(addTagsButton)) {
		//Clear the room of blockage
		//This will need to be updated eventually to interact with other controllers...
		instance_destroy(obj_stats_label);
		instance_destroy(obj_TI_stats_box);
		
		//Create cancel box if needed, if it is needed, create all other associated entities
		if (cancelAddTagsButton == -1) {
			var tX = addTagsButton.x+32;
			var tY = addTagsButton.y;
			
			var inst = instance_create_layer(tX, tY, "Instances", obj_blank);
			with (inst) {
				sprite_index = spr_x_box;
			}
			
			cancelAddTagsButton = inst;
		
			//Get created tags that arent associated with this entity
			var unusedTags = getUnusedTags(entityIndex);
		
			//Create associated buttons for these unused tags
			for (var i = 0; i < ds_list_size(unusedTags); i++) {
				var tX = 256;
				var tY = 128+(32*i);
			
				var inst = instance_create_layer(tX, tY, "Instances", obj_blank);
				with (inst) {
					sprite_index = spr_tag_box;
					
					var tagIdx = ds_list_find_value(unusedTags, i);
					var tagName = ds_map_find_value(global.entityTags, string(tagIdx));
					
					selected = false;
					tagIndex = tagIdx;
					tagText = tagName;
				}
			
				tempUnusedTagButtons[i] = inst;
			}
		}
	}
	
	//If a cancelAddTagsButton exists
	if (cancelAddTagsButton != -1) {
		//If mouse is hovering cancelAddTagsButton
		if (mouseHovered(cancelAddTagsButton)) {
			//Reset the room
			event_user(0);
		}
	}
	
	//If a tempUnusedTagButton exists
	if (tempUnusedTagButtons[0] != -1) {
		for (var i = 0; i < array_length_1d(tempUnusedTagButtons); i++) {
			var inst = tempUnusedTagButtons[i];
			
			if (inst != -1) {
				if (mouseHovered(inst)) {
					//Add tag to entity tag list
					var tagsArray = global.entityTags;
					var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
					var entityTagsList = ds_map_find_value(entityArray, "2");
					
					//Loop and add all previous tags
					var newTagsList = ds_list_create();
					for (var i = 0; i < ds_list_size(entityTagsList); i++) {
						ds_list_add(newTagsList, ds_list_find_value(entityTagsList, string(i)));	
					}
					
					//Add new tag
					ds_list_add(newTagsList, ds_map_find_value(tagsArray, string(inst.tagIndex)));
					
					//Replace old tag list with new tag list
					ds_map_replace_list(entityArray, "2", newTagsList);
					
					//Reset the room
					event_user(0);
			
					break;
				}
			}
		}
	}
}

//If a currentTagButtons exists
if (currentTagButtons[0] != -1) {
	for (var i = 0; i < array_length_1d(currentTagButtons); i++) {
		var inst = currentTagButtons[i];
			
		if (inst != -1) {
			if (mouseHovered(inst)) {
				currentSelectedTagInst = inst;
					
				var tX = inst.x+inst.sprite_width;
				var tY = inst.y;
					
				if (deleteTagButton != -1) { instance_destroy(deleteTagButton); }
				
				var inst2 = instance_create_layer(tX, tY, "Instances", obj_blank);
				with (inst2) {
					sprite_index = spr_check_box;
				}
				deleteTagButton = inst2;
	
					
				if (cancelDeleteButton != -1) { instance_destroy(cancelDeleteButton); }
					
				var inst2 = instance_create_layer(tX+32, tY, "Instances", obj_blank);
				with (inst2) {
					sprite_index = spr_x_box;	
				}
				cancelDeleteButton = inst2;
					
				break;
			}
		}
	}
	
	//If deleteTagButton is clicked
	if (deleteTagButton != -1) {
		if (mouseHovered(deleteTagButton)) {
			//Remove selected tag from entityTagsList
			var entityMap = ds_map_find_value(global.entitiesMap, string(entityIndex));
			var entityTagsList = ds_map_find_value(entityMap, "2");
			var newTagsList = ds_list_create();
			
			//Loop and dont add selected index to new tag list
			for (var i = 0; i < ds_list_size(entityTagsList); i++) {
				if (i != currentSelectedTagInst.tagIndex) {
					ds_list_add(newTagsList, ds_list_find_value(entityTagsList, string(i)));	
				}
			}
			
			//Replace old tag list with new tag list
			ds_map_replace_list(entityMap, "2", newTagsList);
			
			//Reset room
			event_user(0);
		}
	}
	
	//If cancelDeleteButton is clicked
	if (cancelDeleteButton != -1) {
		if (mouseHovered(cancelDeleteButton)) {
			//Reset room
			event_user(0);
		}
	}
}
/// @description Loop to update if needed
//Only run in rm_view_specific_entity
if (room != rm_view_specific_entity) { alarm[0] = alarmUpdateTimer; return; }

//If we have no associated addStatsButton
//if (addStatsButton == -1) {
//	//If there is room for more stats
//	if (getStatsCount(entityIndex) < 16) {
//		var tX = obj_entity_box.x+obj_entity_box.sprite_width;
//		var tY = obj_entity_box.y;
//	
//		var inst = instance_create_layer(tX, tY, "Instances", obj_blank);
//		with (inst) {
//			sprite_index = spr_plus_box;
//		}
//		
//		addStatsButton = inst;
//	}
//}

//If we have no associated sprite label
if (spritesLabel == -1) {
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	var spr = ds_map_find_value(entityArray, "1")
	
	var inst = instance_create_layer(256, 32, "Instances", obj_blank);
	with (inst) {
		sprite_index = spr_text_input_box;
		
		if (spr != "" && spr != undefined) {
			labelText = "Sprite: " + spr;
		} else {
			labelText = "Sprite: N/A";
		}
	}
	
	spritesLabel = inst;
}


//Reset alarm
alarm[0] = alarmUpdateTimer;
/// @description Loop to update if needed
//Only run in rm_view_specific_entity
if (room != rm_view_specific_entity) { alarm[0] = alarm0Timer; return; }

//If we have no associated addStatsButton
if (addStatsButton == -1) {
	//If there is room for more stats
	if (getStatsCount(entityIndex) < 16) {
		var tX = obj_entity_box.x+obj_entity_box.sprite_width;
		var tY = obj_entity_box.y;
		
		var inst = instance_create_layer(tX, tY, "Instances", obj_blank);
		with (inst) {
			sprite_index = spr_plus_box;	
		}
		
		addStatsButton = inst;
	}
}

//Reset alarm
alarm[0] = alarm0Timer;
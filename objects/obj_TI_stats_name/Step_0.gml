if (selected) {
	if (keyboard_check(vk_control) && keyboard_check(ord("V"))) {
		if (alarm[2] == -1) {
			alarm[2] = room_speed/2;	
		}
	} else {
		text_input += keyboard_string;
		keyboard_string = "";
	}
	
	if (room == rm_create_stats) {
		if (statsMapIndex != -1) {
			ds_map_replace(global.statsMap, string(statsMapIndex), text_input);
		}
	}
}

if (canDelete && deleteObj == -1) {
	deleteObj = instance_create_layer(x + sprite_width, y, "Instances", obj_delete_stats_box);
	
	with (deleteObj) {
		statsMapIndex = other.statsMapIndex;	
	}
}
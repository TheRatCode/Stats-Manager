var slot_idx = ds_map_size(global.entityTags);

for (var i = 0; i < ds_map_size(global.entityTags); i++) { //Find empty slot, else map size
	var tag = ds_map_find_value(global.entityTags, string(i))
	if (tag == "") {
		slot_idx = i;
		break;
	}
}

if (slot_idx < 16) {
	if (slot_idx == ds_map_size(global.entityTags)) {
		ds_map_add(global.entityTags, string(slot_idx), obj_TI_tags_name.text_input);
	} else {
		ds_map_replace(global.entityTags, string(slot_idx), obj_TI_tags_name.text_input);	
	}
}

//Reset tags in rm_create_tags
obj_controller.alarm[2] = 1;
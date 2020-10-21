/// @description Create stats & tags based on selected entity
//Delete all other entities in room
instance_destroy(obj_B_tags_box);
instance_destroy(obj_stats_label);
instance_destroy(obj_TI_stats_box);
instance_destroy(obj_tags_add_box);

//Load current entity map, this is a reference
var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));

//Set sprite if not invalid
title_text = ds_map_find_value(entityArray, "0");
var spr = ds_map_find_value(entityArray, "1")
if (spr != "" && spr != undefined) {
	sprite = sprite_add(spr, 1, false, false, 0, 0);
}

//Create the sprite label
with (instance_create_layer(256, 32, "Instances", obj_stats_label)) {
	if (spr != "" && spr != undefined) {
		title_text = "Sprite: " + spr;
	} else {
		title_text = "Sprite: N/A";
	}
}

//Create the associated stats input boxes
for (var i = 3; i < ds_map_size(entityArray); i++) {
	var inst = instance_create_layer(256, 32*i, "Instances", obj_TI_stats_box);
	var arr = ds_map_find_value(entityArray, string(i));
	
	with (inst) {
		title_text = string(ds_list_find_value(arr, "0")) + ": ";
		text_input = string(ds_list_find_value(arr, "1"));
		entityIndex = other.entityIndex;
		statIndex = i;
	}
}

var tagsCount = 0;
var tagsList = ds_map_find_value(entityArray, "2");
//Create the associated tags boxes
for (var i = 0; i < ds_list_size(tagsList); i++) {
	var inst = instance_create_layer(x, 256+(32*i), "Instances", obj_B_tags_box);
	var tagName = ds_list_find_value(tagsList, string(i));
	
	with (inst) {
		title_text = tagName;
		entityIndex = other.entityIndex;
		tagIndex = i;
	}
	
	tagsCount++;
}

if (tagsCount < 8) {
	with (instance_create_layer(x+128, 224, "Instances", obj_tags_add_box)) {
		entityIndex = other.entityIndex;
	}
}
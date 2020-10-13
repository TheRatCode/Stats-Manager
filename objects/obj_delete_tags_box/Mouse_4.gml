/// @description Remove stats from ds map 
if (tagsMapIndex != -1) {
	ds_map_replace(global.entityTags, string(tagsMapIndex), "");
	obj_controller.alarm[2] = 1;
}
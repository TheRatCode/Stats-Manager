/// @description Add tag boxes
//Create cancel box
instance_create_layer(x+32, y, "Instances", obj_tags_cancel_add_box);

//Loop and find valid tags to add
var tagsArray = global.entityTags;
var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
var entityTagsList = ds_map_find_value(entityArray, "2");

var canAddTag = false;
for (var i = 0; i < ds_map_size(tagsArray); i++) {
	var tagText = ds_map_find_value(tagsArray, string(i));
	var containsTag = false;
	
	for (var j = 0; j < ds_list_size(entityTagsList); j++) {
		var entTagText = ds_list_find_value(entityTagsList, string(j));
		if (entTagText == tagText) {
			containsTag = true;	
		}
	}
	
	if (!containsTag) {
		var inst = instance_create_layer(320, 128+(32*i), "Instances", obj_B_add_tag_box);
		with (inst) {
			title_text = tagText;
			entityIndex = other.entityIndex;
			tagIndex = i;
		}
		
		canAddTag = true;
	}
}

if (!canAddTag) { return; }

instance_destroy(obj_stats_label);
instance_destroy(obj_TI_stats_box);
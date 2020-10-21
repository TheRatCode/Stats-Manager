//Add tag to ent tag list

var tagsArray = global.entityTags;
var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
var entityTagsList = ds_map_find_value(entityArray, "2");

var newTagsList = ds_list_create();
for (var i = 0; i < ds_list_size(entityTagsList); i++) {
	ds_list_add(newTagsList, ds_list_find_value(entityTagsList, string(i)));
}
//Add new tag
ds_list_add(newTagsList, ds_map_find_value(tagsArray, string(tagIndex)));

//Replace old tag list with new tag list
ds_map_replace_list(entityArray, "2", newTagsList);

instance_destroy(obj_tags_cancel_add_box);
instance_destroy(obj_B_add_tag_box);
obj_entity_box.alarm[0] = 1;
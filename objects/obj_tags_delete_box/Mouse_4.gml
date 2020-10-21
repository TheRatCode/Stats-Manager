/// @description Remove tag from entity map

var entityMap = ds_map_find_value(global.entitiesMap, string(entityIndex));
var tagsList = ds_map_find_value(entityMap, "2");
var newTagsList = ds_list_create();
for (var i = 0; i < ds_list_size(tagsList); i++) {
	if (i != tagIndex) {
		ds_list_add(newTagsList, ds_list_find_value(tagsList, string(i)));
	}
}
ds_map_replace_list(entityMap, "2", newTagsList);

instance_destroy(obj_tags_cancel_delete_box);
instance_destroy(obj_tags_delete_box);
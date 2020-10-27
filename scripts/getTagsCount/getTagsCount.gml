/// @function					getTagsCount(entityIndex);
/// @param {int} entityIndex	The entityIndex of the tags to count
function getTagsCount(entityIndex) {
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	var entityTagsList = ds_map_find_value(entityArray, "2");
	
	var tagsCount = ds_list_size(entityTagsList);
	
	return tagsCount;
}
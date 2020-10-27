/// @function						entityContainsTag(entityIndex);
/// @param {int} entityIndex		The entityIndex of the tags to count
/// @param {string} entityTagName	The entityTagName to look for
function entityContainsTag(entityIndex, entityTagName) {
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	var entityTagsList = ds_map_find_value(entityArray, "2");

	var containsTag = false;
	for (var i = 0; i < ds_list_size(entityTagsList); i++) {
		var tagText = ds_list_find_value(entityTagsList, string(i));
		
		if (tagText == entityTagName) {
			containsTag = true;
			break;
		}
	}
	
	return containsTag;
}
/// @function					getUnusedTags(entityIndex);
/// @param {int} entityIndex	The entityIndex of the tags to count
function getUnusedTags(entityIndex) {
	var tagsArray = global.entityTags;
	
	var unusedTags = ds_list_create();
	
	//Loop all currently created tags
	for (var i = 0; i < ds_map_size(tagsArray); i++) {
		var tagText = ds_map_find_value(tagsArray, string(i));
		
		//If entity doesnt contain this looped idx tag
		if (!entityContainsTag(entityIndex, tagText)) {
			ds_list_add(unusedTags, i);
		}
	}
	
	return unusedTags;
}
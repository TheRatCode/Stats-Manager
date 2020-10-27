/// @function					getStatsCount(entityIndex);
/// @param {int} entityIndex	The entityIndex of the stats to count
function getStatsCount(entityIndex) {
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	
	//First 3 indexes are used for 0 name, 1 entity sprite, and 2 tags
	var statsCount = ds_map_size(entityArray)-3;
	
	return statsCount > 0 ? statsCount : 0;
}
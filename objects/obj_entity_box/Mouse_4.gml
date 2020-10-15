//Set selected index so we know what entity to load in rm_view_specific_entity
if (room == rm_view_entities) {
	global.selectedIndex = entityIndex;
	room_goto(rm_view_specific_entity);
}
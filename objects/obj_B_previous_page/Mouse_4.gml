//Go to previous page if possible
if (obj_controller.entitiesPage > 1) {
	obj_controller.entitiesPage--;
	
	//Alarm 1 recreates all entities in rm_view_entities based on the current entitiesPage
	obj_controller.alarm[1] = 1;
}
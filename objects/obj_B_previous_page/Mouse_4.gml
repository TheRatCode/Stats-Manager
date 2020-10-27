//Go to previous page if possible
if (c_main_controller.entitiesPage > 1) {
	c_main_controller.entitiesPage--;
	
	//Alarm 1 recreates all entities in rm_view_entities based on the current entitiesPage
	c_main_controller.alarm[1] = 1;
}
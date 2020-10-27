//Go to next page if possible
if (c_main_controller.entitiesPage < c_main_controller.maxPages) {
	c_main_controller.entitiesPage++;
	
	//Alarm 1 recreates all entities in rm_view_entities based on the current entitiesPage
	c_main_controller.alarm[1] = 1; 
}
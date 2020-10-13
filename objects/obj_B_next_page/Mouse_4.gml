//Go to next page if possible
if (obj_controller.entitiesPage < obj_controller.maxPages) {
	obj_controller.entitiesPage++;
	
	//Alarm 1 recreates all entities in rm_view_entities based on the current entitiesPage
	obj_controller.alarm[1] = 1; 
}
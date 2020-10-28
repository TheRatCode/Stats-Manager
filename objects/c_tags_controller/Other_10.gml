/// @description Reset room
tempUnusedTagButtons = destroyInstanceArray(tempUnusedTagButtons);
			
//Remove cancelAddTagsButton since it's no longer needed
if (cancelAddTagsButton != -1) {
	instance_destroy(cancelAddTagsButton);
	cancelAddTagsButton = -1;
}

//Remove deleteTagButton since it's no longer needed
if (deleteTagButton != -1) {
	instance_destroy(deleteTagButton);
	deleteTagButton = -1;
}

//Remove cancelDeleteButton since it's no longer needed
if (cancelDeleteButton != -1) {
	instance_destroy(cancelDeleteButton);
	cancelDeleteButton = -1;
}

currentSelectedInst = -1;
			
//Call alarm to reset the room
obj_entity_box.alarm[0] = 1;
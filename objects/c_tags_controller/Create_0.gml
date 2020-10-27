entityIndex = -1;

//Create update loop
alarm0Timer = room_speed/4;
alarm[0] = alarm0Timer;

//Associated entities
currentSelectedInst = -1;

currentTagButtons[0] = -1; //Inst has associated tagIndex, tagText, selected variable
	deleteTagButton = -1;
	cancelDeleteButton = -1;

addTagsButton = -1;
	cancelAddTagsButton = -1;
	tempUnusedTagButtons[0] = -1; //Inst has associated tagIndex, tagText, selected variable
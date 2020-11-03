entityIndex = -1;

//Create update loop
alarmUpdateTimer = room_speed/4;
alarm[0] = alarmUpdateTimer; //Tags update timer
alarm[1] = alarmUpdateTimer; //Stats update timer

//[[[--STATS--]]]//
	spritesLabel = -1; //Inst has associated labelText variable
	addStatsButton = -1;

//[[[--TAGS--]]]//
	currentSelectedTagInst = -1;

	currentTagButtons[0] = -1; //Inst has associated tagIndex, tagText, selected variable
		deleteTagButton = -1;
		cancelDeleteButton = -1;

	addTagsButton = -1;
		cancelAddTagsButton = -1;
		tempUnusedTagButtons[0] = -1; //Inst has associated tagIndex, tagText, selected variable
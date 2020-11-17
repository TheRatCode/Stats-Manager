entityIndex = -1;

//Delete entity
deleteEntityButton = instance_create_layer(room_width-64, room_height-64, "Instances", obj_blank);
with (deleteEntityButton) {
	sprite_index = spr_delete;
}

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
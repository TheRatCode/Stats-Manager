selected = !selected;

var selectedTagsCount = 0;
for (var i = 0; i < instance_number(obj_B_entity_tags_box); i++) {
	var inst = instance_find(obj_B_entity_tags_box, i);
	
	if (inst.selected) {
		selectedTagsCount++;	
	}
}

if (selectedTagsCount > 8) {
	if (selected) {
		selected = false;	
	}
}
// Draw text for all associated tempUnusedTagButtons
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);

for (var i = 0; i < array_length_1d(tempUnusedTagButtons); i++) {
	var inst = tempUnusedTagButtons[i];
	
	if (inst != -1) {
		var tX = inst.x+inst.sprite_width/2;
		var tY = inst.y+inst.sprite_height/2;
		
		draw_text(tX, tY, inst.tagText);
	}
}

for (var i = 0; i < array_length_1d(currentTagButtons); i++) {
	var inst = currentTagButtons[i];
	
	if (inst != -1) {
		var tX = inst.x+inst.sprite_width/2;
		var tY = inst.y+inst.sprite_height/2;
		
		draw_text(tX, tY, inst.tagText);
	}
}
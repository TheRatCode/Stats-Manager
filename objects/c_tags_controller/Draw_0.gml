// Draw text for all associated tempUnusedTagButtons
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_alpha(1);

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

if (currentSelectedInst != -1) {
	draw_set_color(c_red);
	draw_set_alpha(0.5);
	
	var x1 = currentSelectedInst.x;
	var y1 = currentSelectedInst.y;
	var x2 = currentSelectedInst.x+currentSelectedInst.sprite_width;
	var y2 = currentSelectedInst.y+currentSelectedInst.sprite_height;
	
	draw_rectangle(x1, y1, x2, y2, false);
}
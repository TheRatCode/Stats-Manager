var centerWidth = ((sprite_width)-64)/32;
var xOff = 32;
draw_sprite(spr_box_left, -1, x, y);
for (var i = 0; i < centerWidth; i++) {
	draw_sprite(spr_box_middle, -1, x+xOff, y);
	xOff += 32;
}
draw_sprite(spr_box_right, -1, x+xOff, y);


if (selected) {
	draw_set_color(c_white);
	
	xOff = 32;
	draw_sprite(spr_box_left_selected, -1, x, y);
	for (var i = 0; i < centerWidth; i++) {
		draw_sprite(spr_box_middle_selected, -1, x+xOff, y);
		xOff += 32;
	}
	draw_sprite(spr_box_right_selected, -1, x+xOff, y);
	
	if (show_cursor) {
		draw_set_color(c_black);
		draw_line(x+8 + string_width(text_input), y-8+sprite_height/2, x+8 + string_width(text_input), y+8+sprite_height/2);
	}
}

draw_set_halign(fa_left);

draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(x, y, title_text);

draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+8, y+sprite_height/2, text_input);
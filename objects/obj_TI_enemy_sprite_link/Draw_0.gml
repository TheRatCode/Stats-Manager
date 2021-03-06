draw_self();

if (selected) {
	draw_set_color(c_white);
	draw_sprite_ext(spr_text_input_box_selected, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
	if (show_cursor) {
		draw_set_color(c_black);
		draw_line(x+8 + string_width(text_input), y+sprite_height/2-8, x+8 + string_width(text_input), y+sprite_height/2+8);
	}
}

draw_set_halign(fa_left);

draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(x, y+sprite_height/2-36, title_text);

draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+8, y+sprite_height/2, text_input);

if (d_sprite != "") {
	draw_sprite(d_sprite, -1, 100, 100);	
}
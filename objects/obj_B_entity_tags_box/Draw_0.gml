draw_self();

if (selected) {
	draw_sprite_ext(spr_text_input_box_selected, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x+sprite_width/2, y+sprite_height/2, title_text);
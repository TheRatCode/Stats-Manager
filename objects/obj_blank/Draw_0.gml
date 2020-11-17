if (mouseHovered(id)) {
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, c_gray, 1);
} else {
	draw_self();	
}
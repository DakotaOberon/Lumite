if (!destroy_me) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, rot, c_white, 1);
} else {
	draw_sprite_ext(sLightBallFizzle, floor(dest_sub), x, y, 1, 1, 0, c_white, dest_alpha);
}

if (check_surface(global.body_background)) {
	surface_set_target(global.body_background);
	draw_sprite_ext(death_sprite, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.8);
	surface_reset_target();
}

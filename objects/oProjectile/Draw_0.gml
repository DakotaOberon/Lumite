draw_sprite_ext(P.weapon, 0, x, y, image_xscale, image_yscale, draw_dir - 45, P.frame, 1);
draw_sprite_ext(P.weapon, 1, x, y, image_xscale, image_yscale, draw_dir - 45, P.alt, 1);

if (instance_exists(grav_target)) {
	draw_line(x, y, grav_target.x, grav_target.y);
}

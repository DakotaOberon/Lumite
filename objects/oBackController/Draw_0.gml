// Draw background based on health
draw_background(global.curr_per, side, enemy);

if (check_surface(global.body_background)) {
	draw_surface(global.body_background, 0, 0);
}

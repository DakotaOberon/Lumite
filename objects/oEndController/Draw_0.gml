if (check_surface(global.body_background)) {
	draw_surface(global.body_background, 0, 0);
}

draw_set_font(fntTitle);
draw_text(room_width / 2, y, "Game Over!");
draw_text(room_width / 2, room_height / 2, "Final Score: " + string(global.player.total_score));
draw_set_font(fntDefault);

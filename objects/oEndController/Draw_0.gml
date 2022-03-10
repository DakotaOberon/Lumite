if (check_surface(global.body_background)) {
	draw_surface(global.body_background, 0, 0);
}


draw_text(room_width / 2, y, "Game Over!");
draw_text(room_width / 2, room_height / 2, "Final Score: " + string(global.player.total_score));

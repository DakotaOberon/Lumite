if (check_surface(global.body_background)) {
	draw_surface(global.body_background, 0, 0);
}

draw_set_font(fntTitle);
draw_text(game_over_text_x, 64, game_over_text);
draw_text(score_text_x, 256, score_text);
draw_set_font(fntDefault);

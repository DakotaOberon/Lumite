draw_set_font(fntTitle);

r_w = room_width / 2;

game_over_text = "The Light Took Over!";

switch (global.game_mode) {
	case gm_light:
		if (global.curr_per >= 100) {
			game_over_text = "The Night Took Over!";
		} else {
			game_over_text = "You Have Driven Back The Night!";
			global.player.gain_xp(100);
		}
	break;
	case gm_night:
		if (global.curr_per >= 100) {
			game_over_text = "The Light Took Over!";
		} else {
			game_over_text = "You Have Driven Back The Light!";
			global.player.gain_xp(100);
		}
	break;
}

game_over_text_x = r_w - (string_width(game_over_text) / 2);

score_text = "Final Score: " + string(global.player.total_score);

score_text_x = r_w - (string_width(score_text) / 2);

draw_set_font(fntDefault);

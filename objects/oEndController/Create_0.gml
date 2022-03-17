cols = noone;

reg_c = $7F7F7F;
sel_c = reg_c;

switch(global.game_mode) {
	case(gm_light):
		cols = [ $00F0FF, c_silver, $BBCD67];
		sel_c = $CCBF78;
	break;
	case (gm_night):
		cols = [ $4D0F0F, c_silver, $3F0244];
		sel_c = $9675B2;
	break;
}

c_1 = 0;
c_2 = 1;
c_3 = 2;

c_rot_speed = 30;

alarm[0] = c_rot_speed;

// Fade on selection
fade_to_black = false;
fade_to_black_alpha = 0;

fade_to_black_timer = 180;
fade_to_black_increment = 1 / fade_to_black_timer;

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

// Game over + Score
game_over_text_x = r_w - (string_width(game_over_text) / 2);
score_text = "Final Score: " + string(global.player.total_score);
score_text_x = r_w - (string_width(score_text) / 2);

// Retry and New Game Options
sel_b = 64;
retry_text = "Retry";
new_game_text = "New Game";

select_box_w = max(string_width(retry_text), string_width(new_game_text)) + (sel_b * 2);
select_box_h = max(string_height(retry_text), string_height(new_game_text)) + (sel_b * 2);

retry_x = r_w - select_box_w - (sel_b * 2);
retry_text_x = retry_x + (select_box_w / 2) - (string_width(retry_text) / 2);
new_game_x = r_w + (sel_b * 2);

select_box_y = room_height - 100 - select_box_h;

draw_set_font(fntDefault);

end_game_option = 0;

accept_select = false;
alarm[2] = 90;

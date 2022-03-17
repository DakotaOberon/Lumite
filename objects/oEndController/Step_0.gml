if (!fade_to_black) {
	var l, r, s;
	l = keyboard_check_pressed(ord("A"));
	r = keyboard_check_pressed(ord("D"));
	s = keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("E"));

	if (l) {
		end_game_option = 0;
	} else if (r) {
		end_game_option = 1;
	}

	if (s && accept_select) {
		fade_to_black = true;
		alarm[1] = fade_to_black_timer;
	}
} else {
	fade_to_black_alpha += fade_to_black_increment;
}

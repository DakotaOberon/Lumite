if (!fade_to_black) {
	var l, r, s;

	l = keyboard_check_pressed(ord("A"));
	r = keyboard_check_pressed(ord("D"));
	s = keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("E"));

	// Change Selection
	if (l && current_selection != 0) {
		current_selection = 0;
		audio_play_sound(aMenuSelect, 0, 0);
	} else if (r && current_selection != 1) {
		current_selection = 1;
		audio_play_sound(aMenuSelect, 0, 0);
	}

	// Start
	if (s) {
		global.game_mode = current_selection;
		fade_to_black = true;
		alarm[1] = fade_to_black_timer;
		audio_sound_gain(song, 0, audio_fade_timer);
	}

	// Highlight shake
	if (curr_rot <= -rot) {
		rot_dir = 1;
	} else if (curr_rot >= rot) {
		rot_dir = -1;
	}

	curr_rot += (rot_dir * rot_speed);
} else {
	fade_to_black_alpha += fade_to_black_increment;
}

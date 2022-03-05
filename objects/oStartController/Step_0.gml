var l, r;

l = keyboard_check_pressed(ord("A"));
r = keyboard_check_pressed(ord("D"));

// Change Selection
if (l && current_selection != 0) {
	current_selection = 0;
	audio_play_sound(aMenuSelect, 0, 0);
} else if (r && current_selection != 1) {
	current_selection = 1;
	audio_play_sound(aMenuSelect, 0, 0);
}

// Start
if (keyboard_check_pressed(vk_space)) {
	room_goto(rCharacter);
}

// Highlight shake
if (curr_rot <= -rot) {
	rot_dir = 1;
} else if (curr_rot >= rot) {
	rot_dir = -1;
}

curr_rot += (rot_dir * rot_speed);

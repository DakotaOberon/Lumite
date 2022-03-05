var a = keyboard_check_pressed(vk_anykey);

if (current_pick <= 4) {
	switch (current_pick) {
		case (pick_game):
			options = game_options;
		break;
		case (pick_character):
			options = characters[picks.gamemode];
		break;
		case (pick_shield):
		case (pick_frame):
		case (pick_alt):
			options = frames;
		break;
	}
}
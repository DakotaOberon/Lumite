var sel = keyboard_check_pressed(vk_space);

if (sel) {
	switch (section) {
		case Pick.character:
			global.picks.character = options[selection];
			section = Pick.frame;
			options = frames;
		break;
		case Pick.frame:
			global.picks.frame = options[selection];
			section = Pick.alt;
		break;
		case Pick.alt:
			global.picks.alt = options[selection];
			room_goto(rGame);
		break;
	}

	selection = 0;
}

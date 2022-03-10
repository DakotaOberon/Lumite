//switch (current_pick) {
//	case (pick_game):
//		draw_sprite_ext()
//	break;
//	case (pick_character):
//		options = characters[picks.gamemode];
//	break;
//	case (pick_shield):
//	case (pick_frame):
//	case (pick_alt):
//		options = frames;
//	break;
//}

var char_spr = global.picks.character;
var frame_spr = global.picks.frame;
var alt_spr = global.picks.alt;

switch(section) {
	case Pick.character:
		char_spr = options[selection];
	break;
	case Pick.frame:
		frame_spr = options[selection];
	break;
	case Pick.alt:
		alt_spr = options[selection];
	break;
}

if (char_spr) {
	draw_sprite_ext(char_spr, 0, char_x, char_y, 2, 2, 0, c_white, 1);
}

if (frame_spr) {
	draw_sprite_ext(sFrameIcon, frame_spr, frame_x, frame_y, 2, 2, 0, c_white, 1);
}

if (alt_spr) {
	draw_sprite_ext(sFrameIcon, alt_spr, alt_x, alt_y, 2, 2, 0, c_white, 1);
}

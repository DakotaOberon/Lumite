bramble_w = sprite_get_width(sBramble);
bramble_count = ceil(room_width / bramble_w);
y_scale = 1;

bulb_count = 100 - global.curr_per;

bulb_x_spread = room_width / bulb_count;

switch (global.game_mode) {
	case gm_light:
		bramble_y = room_height - sprite_get_height(sBramble);
		bulb_y = bramble_y + 16;
	break;
	case gm_night:
		bramble_y = sprite_get_height(sBramble);
		bulb_y = 16;
		y_scale = -1;
	break;
}

bramble_coords = [];

for (var i = 0; i < bulb_count; i++) {
	
}

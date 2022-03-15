bramble_w = sprite_get_width(sBramble);
bramble_count = ceil(room_width / bramble_w);
y_scale = 1;

bramble_health = 100 - global.curr_per;
bramble_health_section = 100 / bramble_count;

b_col1 = #75FFFF;
b_col2 = #333333;
bramble_y2 = sprite_get_height(sBramble);
highlight_dir = -1;

switch (global.game_mode) {
	case gm_light:
		bramble_y2 = room_height;
		bramble_y = room_height - sprite_get_height(sBramble);
		bulb_y = bramble_y + 16;
	break;
	case gm_night:
		bramble_y = sprite_get_height(sBramble);
		bulb_y = 16;
		y_scale = -1;
		b_col2 = #75FFFF;
		b_col1 = #333333;
		highlight_dir = 1;
	break;
}

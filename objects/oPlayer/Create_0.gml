launch_dir = 90;

max_dir = 30;

draw_left_launch_angle = 135;
draw_right_launch_angle = 45;

c_x_offset = 0;
c_y_offset = 0;

switch (global.picks.character) {
	case ch_light1:
		sprite_index = sStoneShield;
	break;
	case ch_light2:
		sprite_index = sBallistasShield;
		c_y_offset = 16;
	break;
	case ch_light3:
		// Inactive
	break;
	case ch_night1:
		sprite_index = sDarkShield;
	break;
	case ch_night2:
		// Inactive
	break;
	case ch_night3:
		sprite_index = sChainsShield;
		instance_create_layer(x, y, "Player", oChainsLinkController);
		c_y_offset = 16;
	break;
}

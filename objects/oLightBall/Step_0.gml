if (!destroy_me) {
	var xMove = lengthdir_x(move_speed, dir);
	var yMove = lengthdir_y(move_speed, dir);

	// Bounce off walls
	if (bbox_left <= 0) {
		// Only bounce if trying to move out of room (This is in response to projectiles getting stuck outside)
		if (xMove <= 0) {
			dir = -dir + 180;
		}
	} else if (bbox_right >= room_width) {
		// Only bounce if trying to move out of room
		if (xMove >= 0) {
			dir = -dir + 180;
		}
	}

	// Check if enemy has reached the end
	var y_edge = y + spr_h;

	if (y_edge > y_end) {
		destroy_me = true;
	}

	x += xMove;
	y += yMove;

	if (place_meeting(x, y, oPlayer)) {
		destroy_me = true;
		global.player.gain_xp(xp_value);
	}

	if (destroy_me) {
		// They've made it passed
		if (global.curr_per < 100) {
			global.curr_per += 1;
		}
		alarm[0] = 60;
	}

	rot -= xMove;
} else {
	dest_alpha -= (1 / 60);
	dest_sub += 0.125;
	dest_sub = dest_sub % 3;
}

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

// Bounce off ceiling
if (y <= 0) {
	// Only bounce if trying to move out of room
	if (yMove <= 0) {
		dir = -dir;
	}
} else if (y >= room_height) {
	// Bounce off floor
	if (P.bounce_off_bottom) {
		// Only bounce if trying to move out of room
		if (yMove >= 0) {
			dir = -dir;
		}
	} else if (y > room_height + image_yscale) {
		// Or don't, I don't care
		// Destroy instance if it's a lost cause
		instance_destroy();
	}
}

// Bounce off player shield
if (place_meeting(x, y, oPlayer) && can_bounce_on_shield) {
	if (yMove >= 0) {
		// Stop weird bounce glitches
		can_bounce_on_shield = false;
		alarm[2] = 2;

		var b_offset = 0;

		// Positive means projectile is to the right
		var x_dis = x - oPlayer.x;

		if (abs(x_dis) > 24) {
			// If projectile bounces outside the center 48 pixels
			b_offset -= min(x_dis / 2, max_offset);
		}

		// Change direction based on where collision occured
		dir = -dir + b_offset;

		dir = clamp(fix_direction(dir), 1, 179);
	}
	
}

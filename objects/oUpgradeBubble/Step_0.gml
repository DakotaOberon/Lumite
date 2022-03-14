y += fall_speed;

if (y > room_height + 32) {
	instance_destroy();
}

if (can_be_grabbed) {
	if (place_meeting(x, y, oPlayer)) {
		if (level_upgrade(name)) {
			delete_group();
		}
	}
}

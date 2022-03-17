y += fall_speed;

if (y > room_height + 32) {
	instance_destroy();
}

if (place_meeting(x, y, oPlayer)) {
	if (can_be_grabbed) {
		can_be_grabbed = false;
		delete_group(group);
		instance_destroy();
	}
}

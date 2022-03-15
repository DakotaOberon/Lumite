// Move here
if (!place_meeting(x, y - global.attack_dir, oProjectile)) {
	var speed_percent = in_side ? 1 : 0.5;
	y -= (global.attack_dir * (speed_percent * move_speed));
}

var destroy_me = false;

if (global.attack_dir < 0) {
	destroy_me = (y + y_edge > y_end);
} else {
	destroy_me = (y + y_edge < y_end);
}

if (destroy_me) {
	// They've made it passed
	if (global.curr_per < 100) {
		global.curr_per += 1;
	}
	instance_destroy();
}

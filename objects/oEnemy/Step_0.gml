// Move here
if (!place_meeting(x, y - global.attack_dir, oProjectile)) {
	var speed_percent = in_side ? 1 : 0.5;
	y -= (global.attack_dir * speed_percent);
}

var spr_h = (bbox_bottom - bbox_top);

// Check if enemy has reached the end
var y_end = spr_h * (-global.attack_dir);

var y_edge = y + (global.attack_dir * spr_h);

var destroy_me = false;

if (global.attack_dir < 0) {
	y_end += room_height;

	destroy_me = (y_edge > y_end);
} else {
	destroy_me = (y_edge < y_end);
}

if (destroy_me) {
	// They've made it passed
	if (global.curr_per < 100) {
		global.curr_per += 1;
	}
	instance_destroy();
}

// Move here
if (!place_meeting(x, y - global.attack_dir, oProjectile)) {
	y -= global.attack_dir;
}

// Check if enemy has reached the end
var y_end = 32 * global.attack_dir;

var y_edge = y + (global.attack_dir * (bbox_bottom - bbox_top));

var destroy_me = false;

if (global.attack_dir < 0) {
	y_end += room_height;
	
	destroy_me = (y_edge > y_end);
} else {
	destroy_me = (y_edge < y_end);
}

if (destroy_me) {
	// They've made it passed
	instance_destroy();
}

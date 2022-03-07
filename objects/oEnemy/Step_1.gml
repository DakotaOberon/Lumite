// Check hp
if (hp <= 0) {
	instance_destroy();
} else {
	last_hp = hp;
}

if (y < global.curr_per * 8) {
	in_side = true;
} else {
	in_side = false;
}
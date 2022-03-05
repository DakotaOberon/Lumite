// All temporary controls

var u, d, l;
u = keyboard_check(vk_up);
d = keyboard_check(vk_down);

l = keyboard_check_pressed(vk_left);

if (d) {
	if (curr_per < 100) {
		curr_per += 1;
	}
} else if (u) {
	if (curr_per > 0) {
		curr_per -= 1;
	}
}

if (l) {
	side = !side;
	enemy = !enemy;
}
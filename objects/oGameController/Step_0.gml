var u, d;
u = keyboard_check(vk_up);
d = keyboard_check(vk_down);

if (d) {
	if (global.curr_per < 100) {
		global.curr_per += 1;
	}
} else if (u) {
	if (global.curr_per > 0) {
		global.curr_per -= 1;
	}
}

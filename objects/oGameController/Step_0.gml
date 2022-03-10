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

if (!pause_spawning) {
	global.attack_schedule.step();
}

if (global.curr_per >= 100 && !start_boss_wave) {
	spawn_boss_wave_function();
	// Think of way to start boss wave after all attack patterns are done
	// Change return of step function if it's the last one being run
	//		Keep counter that compares against total keys
}

if (can_end && instance_number(oEnemy) <= 0) {
	room_goto(rEnd);
}

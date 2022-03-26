if (!pause_spawning) {
	global.attack_schedule.step();
}

if (global.curr_per >= 100 && !start_boss_wave) {
	spawn_boss_wave_function();
	// Think of way to start boss wave after all attack patterns are done
	// Change return of step function if it's the last one being run
	//		Keep counter that compares against total keys
} else if (global.can_spawn_boss && !start_boss_wave) {
	spawn_boss_wave_function();
}

if (can_end && instance_number(oEnemy) <= 0) {
	room_goto(rEnd);
}

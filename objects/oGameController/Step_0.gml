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
	audio_sound_gain(game_song, 0, 3000);
	switch (global.game_mode) {
		case gm_light:
			music_theme = aLightMusicBoss;
		break;
		case gm_night:
			music_theme = aNightMusicBoss;
		break;
	}

	start_boss_wave = true;
	draw_boss_wave_notification = true;
	pause_spawning = true;
	alarm[0] = 180;
}

if (can_end && instance_number(oEnemy) <= 0) {
	room_goto(rEnd);
}

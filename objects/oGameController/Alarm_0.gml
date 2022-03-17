pause_spawning = false;

switch (global.game_mode) {
	case gm_light:
		global.attack_schedule = load_attack_from_file("light_boss_attack_schedule");
	break;
	case gm_night:
		global.attack_schedule = load_attack_from_file("night_boss_attack_schedule");
	break;
}

draw_boss_wave_notification = false;

audio_stop_sound(global.game_song);
global.game_song = audio_play_sound(music_theme, 100, true);
audio_sound_gain(global.game_song, 0.3, 0);
audio_sound_gain(global.game_song, 1, 3000);

can_end = true;

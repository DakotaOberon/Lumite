//alarm[0] = 30;

global.attack_dir = -1;
music_theme = aLightMusicMain;

// Set values based on gamemode
switch (global.game_mode) {
	case (gm_light):
		global.attack_dir = -1;
		music_theme = aLightMusicMain;
		global.attack_schedule = load_attack_from_file("light_attack_schedule");
	break;
	case (gm_night):
		global.attack_dir = 1;
		music_theme = aNightMusicMain;
		global.attack_schedule = load_attack_from_file("night_attack_schedule");
	break;
}

// Create attack schedule
//global.attack_schedule = create_attack_schedule(global.game_mode);

global.curr_per = 0;

game_song = audio_play_sound(music_theme, 100, true);

// Fade in sound
audio_sound_gain(game_song, 0.3, 0);
audio_sound_gain(game_song, 1, 3000);

//var _fx_moving = fx_create("_filter_heathaze");
//layer_set_fx("Enemy", _fx_moving);

//var _fx_outline = fx_create("_filter_outline");
//fx_set_parameter(_fx_outline, 

//layer_set_fx("Enemy", _fx_outline);
//layer_set_fx("Projectile", _fx_outline);

alarm[0] = 30;

global.attack_dir = -1;
music_theme = aLightMusicMain;

// Set values based on gamemode
switch (global.game_mode) {
	case (gm_light):
		global.attack_dir = -1;
		music_theme = aLightMusicMain;
	break;
	case (gm_night):
		global.attack_dir = 1;
		music_theme = aNightMusicMain;
	break;
}

global.curr_per = 0;

game_song = audio_play_sound(music_theme, 100, true);

// Fade in sound
audio_sound_gain(game_song, 0.3, 0);
audio_sound_gain(game_song, 1, 3000);

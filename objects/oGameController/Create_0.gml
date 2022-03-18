global.attack_dir = -1;
music_theme = aLightMusicMain;

horde_text_start = "Then The ";
horde_text_end = " Changed Everything";
highlight_color = c_purple;

// Set values based on gamemode
switch (global.game_mode) {
	case (gm_light):
		global.attack_dir = -1;
		music_theme = aLightMusicMain;
		global.attack_schedule = load_attack_from_file("light_attack_schedule");
		horde_text = "Night";
	break;
	case (gm_night):
		global.attack_dir = 1;
		music_theme = aNightMusicMain;
		global.attack_schedule = load_attack_from_file("night_attack_schedule");
		horde_text = "Light";
		highlight_color = c_teal;
	break;
}

draw_set_font(fntTitle);
var tmp_text = horde_text_start + horde_text + horde_text_end;
var horde_text_w = string_width(tmp_text);
horde_start_w = string_width(horde_text_start);
horde_mid_w = string_width(horde_text) + horde_start_w;
horde_text_x = (room_width / 2) - (horde_text_w / 2);
horde_text_y = (room_height / 2) - (string_height(tmp_text) / 2);
draw_set_font(fntDefault);

// Create attack schedule
global.curr_per = 0;

start_boss_wave = false;

draw_boss_wave_notification = false;

pause_spawning = false;

can_end = false;

global.game_song = audio_play_sound(music_theme, 100, true);

// Fade in sound
audio_sound_gain(global.game_song, 0.3, 0);
audio_sound_gain(global.game_song, 1, 3000);

spawn_boss_wave_function = function () {
	audio_sound_gain(global.game_song, 0, 3000);
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

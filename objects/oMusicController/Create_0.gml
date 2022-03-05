global.song = audio_play_sound(aStartMusic, 100, true);

// Fade in sound
audio_sound_gain(global.song, 0.3, 0);
audio_sound_gain(global.song, 1, 3000);

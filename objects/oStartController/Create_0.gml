current_selection = 0;

h_x = room_width / 2;
h_y = room_height / 2;

// Colors
reg_c = $7F7F7F;

l_sel_c = $CCBF78;

n_sel_c = $9675B2;

// Border sizeddd
b_s = 64;

// Border radius
b_r = 32;

// Coords
l_y2 = room_height - b_s;
n_x2 = room_width - b_s;

l_icon_x = (b_s + h_x) / 2;
l_icon_y = h_y;

n_icon_x = (h_x + n_x2) / 2;
n_icon_y = h_y;

icon_scale = 5;

// Colors
l_b_c = [ $00F0FF, c_silver, $BBCD67];
n_b_c = [ $4D0F0F, c_silver, $3F0244];

b_c1 = 0;
b_c2 = 1;
b_c3 = 2;

highlight_speed = 30;
alarm[0] = highlight_speed;

// Highlight shake
rot = 15;
curr_rot = 0;
rot_speed = 1;
rot_dir = 1;

// Fade on selection
fade_to_black = false;
fade_to_black_alpha = 0;

fade_to_black_timer = 180;
fade_to_black_increment = 1 / fade_to_black_timer;
audio_fade_timer = (fade_to_black_timer / 60) * 1000;

// Music
song = audio_play_sound(aStartMusic, 100, true);

// Fade in sound
audio_sound_gain(song, 0.3, 0);
audio_sound_gain(song, 1, 3000);

section = Pick.character;

characters = [];

selection = 0;

cols = noone;

reg_c = $7F7F7F;
sel_c = reg_c;

switch(global.game_mode) {
	case(gm_light):
		array_push(characters, ch_light1);
		array_push(characters, ch_light2);
		array_push(characters, ch_light3);
		cols = [ $00F0FF, c_silver, $BBCD67];
		sel_c = $CCBF78;
	break;
	case (gm_night):
		array_push(characters, ch_night1);
		array_push(characters, ch_night2);
		array_push(characters, ch_night3);
		cols = [ $4D0F0F, c_silver, $3F0244];
		sel_c = $9675B2;
	break;
}

c_1 = 0;
c_2 = 1;
c_3 = 2;

frames = [
	f_air,
	f_earth,
	f_energy,
	f_fire,
	f_ice,
	f_lightning,
	f_rock
]

options = characters;

global.picks = {
	character: -1,
	frame: -1,
	alt: -1
}

pick_speed = 90;

alarm[0] = pick_speed;

// Draw coords
var c_x = room_width / 2;
var c_y = room_height / 2;

scale = 2;

var ch_w = sprite_get_width(ch_light1) * scale;
var ch_h = sprite_get_height(ch_light1) * scale;

var fi_w = sprite_get_width(sFrameIcon) * scale;
var fi_h = sprite_get_height(sFrameIcon) * scale;

char_x = c_x - ch_w;
char_y = c_y;

frame_x = c_x + fi_w + 32;
frame_y = c_y + fi_h + 16;

alt_x = frame_x;
alt_y = c_y - fi_h - 16;

border_width = 8;

coords = {
	char: {
		x1: char_x - ch_w,
		y1: char_y - ch_h,
		x2: char_x + ch_w,
		y2: char_y + ch_h
	},
	frame: {
		x1: frame_x - fi_w,
		y1: frame_y - fi_h,
		x2: frame_x + fi_w,
		y2: frame_y + fi_h
	},
	alt: {
		x1: alt_x - fi_w,
		y1: alt_y - fi_h,
		x2: alt_x + fi_w,
		y2: alt_y + fi_h
	}
}

/**
TODO:
	- Finish character create room
	- Enemy projectiles
	- Bramble / Health
**/

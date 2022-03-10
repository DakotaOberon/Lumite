section = Pick.character;

characters = [];

selection = 0;

switch(global.game_mode) {
	case(gm_light):
		array_push(characters, ch_light1);
		array_push(characters, ch_light2);
		array_push(characters, ch_light3);
	break;
	case (gm_night):
		array_push(characters, ch_night1);
		array_push(characters, ch_night2);
		array_push(characters, ch_night3);
	break;
}

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

pick_speed = 60;

alarm[0] = pick_speed;

char_x = 100;
char_y = 100;

frame_x = 200;
frame_y = 100;

alt_x = 200;
alt_y = 200;

/**
TODO:
	- Finish character create room
	- Enemy projectiles
	- Bramble / Health
**/

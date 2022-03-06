section = 

characters = [];

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

//frames = [
//	f_air,
//	f_earth,
//	f_energy,
//	f_fire,
//	f_ice,
//	f_lightning,
//	f_rock
//]

//types = [pick_game, pick_character, pick_shield, pick_frame, pick_alt];

//current_pick = pick_game;

//picks = {
//	gamemode: gm_light,
//	character: ch_light1,
//	shield: f_air,
//	frame: f_air,
//	alt: f_air
//}

//options = game_options;

/**
TODO:
	- Finish character create room
	- Enemy projectiles
	- Bramble / Health
**/

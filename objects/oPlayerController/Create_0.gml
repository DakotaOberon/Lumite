var w = noone;
var f = noone;
var a = noone;

switch (global.picks.character) {
	case ch_light1:
		w = w_sword;
	break;
	case ch_light2:
		w = w_crossbow;
	break;
	case ch_light3:
		w = w_sword;
	break;
	case ch_night1:
		w = w_sword;
	break;
	case ch_night2:
		w = w_crossbow;
	break;
	case ch_night3:
		w = w_spike;
	break;
}

switch (global.picks.frame) {
	case f_dense:
		f = c_dense;
	break;
	case f_sharp:
		f = c_sharp;
	break;
	case f_adapt:
		f = c_adapt;
	break;
	case f_precise:
		f = c_precise;
	break;
}

switch (global.picks.alt) {
	case f_dense:
		a = c_dense;
	break;
	case f_sharp:
		a = c_sharp;
	break;
	case f_adapt:
		a = c_adapt;
	break;
	case f_precise:
		a = c_precise;
	break;
}

global.projectile = new Projectile(w, f, a, true);
global.player = new Player();

var P = global.projectile;

upgrade_init(P);
log(variable_struct_get_names(P.upgrades));

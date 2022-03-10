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
		w = w_sword;
	break;
}

switch (global.picks.frame) {
	case f_air:
		f = c_air;
	break;
	case f_earth:
		f = c_earth;
	break;
	case f_energy:
		f = c_energy;
	break;
	case f_fire:
		f = c_fire;
	break;
	case f_ice:
		f = c_ice;
	break;
	case f_lightning:
		f = c_lightning;
	break;
	case f_rock:
		f = c_rock;
	break;
}

switch (global.picks.alt) {
	case f_air:
		a = c_air;
	break;
	case f_earth:
		a = c_earth;
	break;
	case f_energy:
		a = c_energy;
	break;
	case f_fire:
		a = c_fire;
	break;
	case f_ice:
		a = c_ice;
	break;
	case f_lightning:
		a = c_lightning;
	break;
	case f_rock:
		a = c_rock;
	break;
}

global.projectile = new Projectile(w, f, a, true);
global.player = new Player();

log("Getting Strike Upgrade");
var strike_upgrade = new UpgradeStrike(global.projectile).get();
strike_upgrade.level_up();
strike_upgrade.level_up();
strike_upgrade.level_up();

var P = global.projectile;

frame_icon = 0;

switch (P.frame) {
	case (c_air):
		frame_icon = f_air;
	break;
	case (c_earth):
		frame_icon = f_earth;
	break;
	case (c_energy):
		frame_icon = f_energy;
	break;
	case (c_fire):
		frame_icon = f_fire;
	break;
	case (c_ice):
		frame_icon = f_ice;
	break;
	case (c_lightning):
		frame_icon = f_lightning;
	break;
	case (c_rock):
		frame_icon = f_rock;
	break;
}

alt_icon = 0;

switch (P.alt) {
	case (c_air):
		alt_icon = f_air;
	break;
	case (c_earth):
		alt_icon = f_earth;
	break;
	case (c_energy):
		alt_icon = f_energy;
	break;
	case (c_fire):
		alt_icon = f_fire;
	break;
	case (c_ice):
		alt_icon = f_ice;
	break;
	case (c_lightning):
		alt_icon = f_lightning;
	break;
	case (c_rock):
		alt_icon = f_rock;
	break;
}

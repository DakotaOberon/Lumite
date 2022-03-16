var P = global.projectile;

frame_icon = 0;

switch (P.frame) {
	case (c_dense):
		frame_icon = f_dense;
	break;
	case (c_sharp):
		frame_icon = f_sharp;
	break;
	case (c_adapt):
		frame_icon = f_adapt;
	break;
	case (c_precise):
		frame_icon = f_precise;
	break;
}

alt_icon = 0;

switch (P.alt) {
	case (c_dense):
		alt_icon = f_dense;
	break;
	case (c_sharp):
		alt_icon = f_sharp;
	break;
	case (c_adapt):
		alt_icon = f_adapt;
	break;
	case (c_precise):
		alt_icon = f_precise;
	break;
}

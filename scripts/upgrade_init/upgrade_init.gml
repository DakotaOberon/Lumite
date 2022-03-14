// Initiates upgrades, any upgrades that repeat will start at level 1
function upgrade_init(P) {
	var f = P.frame;
	var a = P.alt;

	// If frame or alt is of type
	if (f == c_rock or a == c_rock) {
		get_upgrade(P, Uprr);
		get_upgrade(P, Uprl);
		get_upgrade(P, Uprf);
		get_upgrade(P, Upri);
		get_upgrade(P, Upren);
		get_upgrade(P, Uprer);
		get_upgrade(P, Upra);
	}
	if (f == c_lightning or a == c_lightning) {
		get_upgrade(P, Upll);
		get_upgrade(P, Uprl);
		get_upgrade(P, Uplf);
		get_upgrade(P, Upli);
		get_upgrade(P, Upler);
		get_upgrade(P, Uplen);
		get_upgrade(P, Upla);
	}
	if (f == c_fire or a == c_fire) {
		get_upgrade(P, Uprf);
		get_upgrade(P, Uplf);
		get_upgrade(P, Upff);
		get_upgrade(P, Upfi);
		get_upgrade(P, Upfer);
		get_upgrade(P, Upfen);
		get_upgrade(P, Upfa);
	}
	if (f == c_ice or a == c_ice) {
		get_upgrade(P, Upii);
		get_upgrade(P, Upri);
		get_upgrade(P, Upli);
		get_upgrade(P, Upfi);
		get_upgrade(P, Upier);
		get_upgrade(P, Upien);
		get_upgrade(P, Upia);
	}
	if (f == c_earth or a == c_earth) {
		get_upgrade(P, Uperer);
		get_upgrade(P, Uprer);
		get_upgrade(P, Upler);
		get_upgrade(P, Upier);
		get_upgrade(P, Upfer);
		get_upgrade(P, Uperen);
		get_upgrade(P, Upera);
	}
	if (f == c_energy or a == c_energy) {
		get_upgrade(P, Upenen);
		get_upgrade(P, Upren);
		get_upgrade(P, Uplen);
		get_upgrade(P, Upien);
		get_upgrade(P, Upfen);
		get_upgrade(P, Uperen);
		get_upgrade(P, Upena);
	}
	if (f == c_air or a == c_air) {
		get_upgrade(P, Upaa);
		get_upgrade(P, Upena);
		get_upgrade(P, Upra);
		get_upgrade(P, Upla);
		get_upgrade(P, Upia);
		get_upgrade(P, Upfa);
		get_upgrade(P, Upera);
	}

	// Level up again if both frame and alt are same type
	if (f == c_rock and a == c_rock) {
		get_upgrade(P, Uprr);
		get_upgrade(P, Uprl);
		get_upgrade(P, Uprf);
		get_upgrade(P, Upri);
		get_upgrade(P, Upren);
		get_upgrade(P, Uprer);
		get_upgrade(P, Upra);
	}
	if (f == c_lightning and a == c_lightning) {
		get_upgrade(P, Upll);
		get_upgrade(P, Uprl);
		get_upgrade(P, Uplf);
		get_upgrade(P, Upli);
		get_upgrade(P, Upler);
		get_upgrade(P, Uplen);
		get_upgrade(P, Upla);
	}
	if (f == c_fire and a == c_fire) {
		get_upgrade(P, Uprf);
		get_upgrade(P, Uplf);
		get_upgrade(P, Upff);
		get_upgrade(P, Upfi);
		get_upgrade(P, Upfer);
		get_upgrade(P, Upfen);
		get_upgrade(P, Upfa);
	}
	if (f == c_ice and a == c_ice) {
		get_upgrade(P, Upii);
		get_upgrade(P, Upri);
		get_upgrade(P, Upli);
		get_upgrade(P, Upfi);
		get_upgrade(P, Upier);
		get_upgrade(P, Upien);
		get_upgrade(P, Upia);
	}
	if (f == c_earth and a == c_earth) {
		get_upgrade(P, Uperer);
		get_upgrade(P, Uprer);
		get_upgrade(P, Upler);
		get_upgrade(P, Upier);
		get_upgrade(P, Upfer);
		get_upgrade(P, Uperen);
		get_upgrade(P, Upera);
	}
	if (f == c_energy and a == c_energy) {
		get_upgrade(P, Upenen);
		get_upgrade(P, Upren);
		get_upgrade(P, Uplen);
		get_upgrade(P, Upien);
		get_upgrade(P, Upfen);
		get_upgrade(P, Uperen);
		get_upgrade(P, Upena);
	}
	if (f == c_air and a == c_air) {
		get_upgrade(P, Upaa);
		get_upgrade(P, Upena);
		get_upgrade(P, Upra);
		get_upgrade(P, Upla);
		get_upgrade(P, Upia);
		get_upgrade(P, Upfa);
		get_upgrade(P, Upera);
	}
}

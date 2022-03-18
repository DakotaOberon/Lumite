// Initiates upgrades, any upgrades that repeat will start at level 1
function upgrade_init(P) {
	// Get all upgrades at level 0
	get_upgrade(P, Updd);
	get_upgrade(P, Upds);
	get_upgrade(P, Upda);
	get_upgrade(P, Updp);
	get_upgrade(P, Upss);
	get_upgrade(P, Upsa);
	get_upgrade(P, Upsp);
	get_upgrade(P, Upaa);
	get_upgrade(P, Upap);
	get_upgrade(P, Uppp);

	// Level up upgrades based on chosen frames

	var f = P.frame;
	var a = P.alt;

	// Dense
	if (f == c_dense or a == c_dense) {
		get_upgrade(P, Updd);
		get_upgrade(P, Upds);
		get_upgrade(P, Upda);
		get_upgrade(P, Updp);
	}
	
	if (f == c_dense and a == c_dense) {
		get_upgrade(P, Updd);
		get_upgrade(P, Upds);
		get_upgrade(P, Upda);
		get_upgrade(P, Updp);
	}
	
	// Sharp
	if (f == c_sharp or a == c_sharp) {
		get_upgrade(P, Upds);
		get_upgrade(P, Upss);
		get_upgrade(P, Upsa);
		get_upgrade(P, Upsp);
	}

	if (f == c_sharp and a == c_sharp) {
		get_upgrade(P, Upds);
		get_upgrade(P, Upss);
		get_upgrade(P, Upsa);
		get_upgrade(P, Upsp);
	}
	
	// Adapt
	if (f == c_adapt or a == c_adapt) {
		get_upgrade(P, Upda);
		get_upgrade(P, Upsa);
		get_upgrade(P, Upaa);
		get_upgrade(P, Upap);
	}

	if (f == c_adapt and a == c_adapt) {
		get_upgrade(P, Upda);
		get_upgrade(P, Upsa);
		get_upgrade(P, Upaa);
		get_upgrade(P, Upap);
	}
	
	// Precise
	if (f == c_precise or a == c_precise) {
		get_upgrade(P, Updp);
		get_upgrade(P, Upsp);
		get_upgrade(P, Upap);
		get_upgrade(P, Uppp);
	}

	if (f == c_precise and a == c_precise) {
		get_upgrade(P, Updp);
		get_upgrade(P, Upsp);
		get_upgrade(P, Upap);
		get_upgrade(P, Uppp);
	}
}

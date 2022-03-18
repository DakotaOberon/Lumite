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
		level_upgrade("gravitational");
		level_upgrade("execute");
		level_upgrade("growth");
		level_upgrade("shatter");
	}
	
	if (f == c_dense and a == c_dense) {
		level_upgrade("gravitational");
		level_upgrade("execute");
		level_upgrade("growth");
		level_upgrade("shatter");
	}
	
	// Sharp
	if (f == c_sharp or a == c_sharp) {
		level_upgrade("execute");
		level_upgrade("crunch");
		level_upgrade("explode");
		level_upgrade("burn");
	}

	if (f == c_sharp and a == c_sharp) {
		level_upgrade("execute");
		level_upgrade("crunch");
		level_upgrade("explode");
		level_upgrade("burn");
	}

	// Adapt
	if (f == c_adapt or a == c_adapt) {
		level_upgrade("growth");
		level_upgrade("explode");
		level_upgrade("hunger");
		level_upgrade("strike");
	}

	if (f == c_adapt and a == c_adapt) {
		level_upgrade("growth");
		level_upgrade("explode");
		level_upgrade("hunger");
		level_upgrade("strike");
	}

	// Precise
	if (f == c_precise or a == c_precise) {
		level_upgrade("shatter");
		level_upgrade("burn");
		level_upgrade("strike");
		level_upgrade("push");
	}

	if (f == c_precise and a == c_precise) {
		level_upgrade("shatter");
		level_upgrade("burn");
		level_upgrade("strike");
		level_upgrade("push");
	}
}

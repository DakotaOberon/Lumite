if (hp < last_hp) {
	if (in_side && in_defense && hp < max_hp) {
		hp += 1;
	}

	in_defense = !in_defense;
	if (in_defense) {
		alarm[1] = 300;
	} else {
		alarm[1] = 0;
	}
}

// Inherit the parent event
event_inherited();

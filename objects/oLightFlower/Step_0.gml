// Inherit the parent event
event_inherited();

if (death_timer > 0) {
	var death_counter = 1;

	if (in_side) {
		death_counter -= 0.5;
	}

	death_timer -= death_counter;
} else {
	instance_destroy();
}


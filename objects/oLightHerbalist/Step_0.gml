// Inherit the parent event
event_inherited();

if (spawn_flower_timer > 0) {
	var flower_counter = 1;
	if (in_side) {
		flower_counter += 1;
	}
	spawn_flower_timer -= flower_counter;
} else {
	instance_create_layer(x, y, "Enemy", oLightFlower);
	spawn_flower_timer = spawn_flower_timer_max;
}

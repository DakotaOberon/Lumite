/// @description Spawn in enemy

var y_spawn = 32 * global.attack_dir;
if (global.attack_dir > 0) {
	y_spawn += room_height;
}

instance_create_layer(irandom_range(32, room_width - 32), y_spawn, "Enemy", oNightMaggot);

alarm[0] = 30;

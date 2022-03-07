if (hp < last_hp) {
	took_damage = true;
}


if (took_damage) {
	took_damage = false;
	damage_draw_alpha = 1;
	alarm[0] = 5;
}

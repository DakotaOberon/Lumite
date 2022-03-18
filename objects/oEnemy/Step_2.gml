if (burn_timer > 0) {
	burn_timer -= 1;

	hp -= global.projectile.upgrades.burn.burn_amount;
}

if (hp < last_hp) {
	took_damage = true;
}

if (took_damage) {
	took_damage = false;
	damage_draw_alpha = 1;
	alarm[0] = 5;
}

// Movement values of projectile
var c_spd = P.spd + local_speed_bonus;
xMove = lengthdir_x(c_spd, dir);
yMove = lengthdir_y(c_spd, dir);

// Update size value since size can change frequently
image_xscale = (P.size + local_size_bonus) * scale;
image_yscale = (P.size + local_size_bonus) * scale;

// Bounce
if (!is_enemy) {
	var cols = bounce();

	// Damage
	for (var i = 0; i < 2; i++) {
		// Loop over entities in bounce collision
		if (cols[i]) {
			// Reset shield bouncing
			can_bounce_on_shield = true;

			var ent = cols[i];

			var deal_damage = false;

			// Check if collision is in recent collisions
			var col = check_in_collision(recent_collisions, ent);
			if (!col) {
				// If not, add to recent collisions
				if (is_array(recent_collisions)) {
					array_push(recent_collisions, new Collision(ent, current_time));
				}

				deal_damage = true;
			} else {
				if (current_time > col.time + 50) {
					// Check if it's been enough time since last collision
					if (is_array(recent_collisions)) {
						var col_ind = index_of_collision(recent_collisions, col);

						// Remove from collision array
						array_delete(recent_collisions, col_ind, 1);

						deal_damage = true;
					}
				} else {
					can_bounce = false;
					alarm[0] = 2;
				}
			}

			// If projectile has hp, reduce it by 1 per collision
			if (hp > 0) {
				hp -= 1;

				if (hp == 0) {
					// Destroy projectile if it has no health left
					instance_destroy();
					P.run_on_death(self, ent);
				}
			}

			if (ent.damageable && deal_damage) {
				// Deal damage if able
				ent.hp -= (P.damage + local_damage_bonus);

				// Run on hit scripts
				P.run_on_hit(self, ent);

				// Run on kill scripts
				if (ent.hp <= 0) {
					global.player.gain_xp(ent.xp_value);
					kills += 1;
					P.run_on_kill(self, ent);
				}
			}
		}
	}

	delete cols;
}

// Crunch time
if (crunch_timer > 0) {
	// Don't crunch while on cooldown
	crunch_timer -= 1;
	
	// After cooldown is done, set can start crunch to true
	if (crunch_timer <= 0) {
		can_start_crunch = true;
	}
}

if (can_crunch_timer > 0) {
	// Crunching during this time
	can_crunch_timer -= 1;

	// Once finished, start cooldown
	if (can_crunch_timer <= 0) {
		crunch_timer = crunch_cooldown;
	}
}

// Move
x += xMove;
y += yMove;

// Fix to approach the correct way
draw_dir = dir;

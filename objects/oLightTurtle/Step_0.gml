// Inherit the parent event
event_inherited();

if (!has_shot && !can_shoot) {
	if (y < room_height - 200) {
		can_shoot = true;
	}
}

if (can_shoot) {
	alarm[1] = shoot_speed;
	alarm[2] = shoot_speed / 2;
	can_shoot = false;
	has_shot = true;
}

ballista_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
proj = oEnemyController.turtle_projectile;

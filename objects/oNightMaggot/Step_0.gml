// Inherit the parent event
event_inherited();

if (hp <= max_hp / 2 && can_shoot) {
	oEnemyController.nm_projectile.create(x, y, 270, "EnemyProjectile", true);
	can_shoot = false;
}

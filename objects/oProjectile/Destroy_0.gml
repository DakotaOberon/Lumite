if (P.is_primary) {
	global.player.return_projectile();
}

for (var i = 0; i < array_length(recent_collisions); i++) {
	delete recent_collisions[i];
}

delete recent_collisions;

var insts = instance_number(oProjectile);

// Reset projectiles
array_delete(projectiles, 0, array_length(projectiles));

for (var i = 0; i < insts; i++) {
	var p = instance_find(oProjectile, i);
	
	if (p.is_primary) {
		array_push(projectiles, p);
	}
}

alarm[0] = 33;

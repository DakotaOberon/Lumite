function PassiveGravitational(P, _p=noone, _e=noone) {
	var nearest = instance_nearest(_p.x, _p.y, oEnemy);
	if (instance_exists(nearest)) {
		var en_dir = point_direction(_p.x, _p.y, nearest.x, nearest.y);

		var dis = find_angle_distance(_p.dir, en_dir);

		// Adjust direction
		_p.dir = _p.dir + (sign(dis) * min(abs(dis), P.upgrades.gravitational.max_direction_change));
	}
}

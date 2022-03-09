function OnHitStrike(P, _p=noone, _e=noone) {
	var in = instance_number(oEnemy);
	if (in) {
		nearest = noone;
		nearest_dis = 10000;
		for (var i = 1; i < instance_number(oEnemy); i++) {
			var intc = instance_find(oEnemy, i);
			if (intc.id != _e.id) {
				var dis = point_distance(_e.x, _e.y, intc.x, intc.y);
				
				if (dis < nearest_dis) {
					nearest = intc;
					nearest_dis = dis;
				}
			}
		}

		if (nearest) {
			nearest.hp -= (P.bonus.damage * P.upgrades.strike.strike_damage);
		}
	}
}

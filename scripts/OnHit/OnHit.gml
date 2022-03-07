function OnHitStrike(P, _p=noone, _e=noone) {
	log("Running Strike On Hit");
	var in = instance_number(oEnemy);
	log("There are", in, "enemies");
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
			//log("P.upgrades:", variable_struct_get_names(P.upgrades));
			log("Found nearest, dealing", P.bonus.damage, "*", P.upgrades.strike.strike_damage, "damage", nearest);
			nearest.hp -= (P.bonus.damage * P.upgrades.strike.strike_damage);
		}
	}
}

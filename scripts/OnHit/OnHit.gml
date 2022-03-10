function OnHitStrike(P, _p=noone, _e=noone) {
	var current_hit = _e;
	var all_hit = [];
	for (var i = 0; i < P.upgrades.strike.strike_amount; i++) {
		current_hit = OnHitStrikeHelper(P, all_hit, current_hit);
		if (current_hit) {
			array_push(all_hit, current_hit);
		} else {
			break;
		}
	}

	delete all_hit;
}

function OnHitStrikeHelper(P, _hit, _e) {
	var in = instance_number(oEnemy);
	if (in) {
		var nearest = noone;
		var nearest_dis = 10000;
		for (var j = 1; j < instance_number(oEnemy); j++) {
			var intc = instance_find(oEnemy, j);
			if (intc.id != _e.id) {
				if (array_find(_hit, intc) == -1) {
					var dis = point_distance(_e.x, _e.y, intc.x, intc.y);

					if (dis < nearest_dis) {
						nearest = intc;
						nearest_dis = dis;
					}
				}
			}
		}

		if (nearest) {
			nearest.hp -= (P.bonus.damage * P.upgrades.strike.strike_damage);

			return nearest;
		}
	}

	return noone;
}

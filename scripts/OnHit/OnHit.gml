function OnHitStrike(P, _p=noone, _e=noone) {
	var current_hit = _e;
	var all_hit = [current_hit];
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

function OnHitExecute(P, _p=noone, _e=noone) {
	var per_to_ex = P.upgrades.execute.execute_per;
	if (_e.hp / _e.max_hp <= per_to_ex) {
		_e.hp = 0;
	}
}

function OnHitExplode(P, _p=noone, _e=noone) {
	var ex = P.upgrades.explode;

	var lis = ds_list_create();

	collision_circle_list(_p.x, _p.y, ex.explosion_radius, oEnemy, 0, 0, lis, 0);

	for (var i = 0; i < ds_list_size(lis); i++) {
		var en = ds_list_find_value(lis, i);
		if (instance_exists(en)) {
			if (en != _e) {
				en.hp -= (P.bonus.damage * ex.explosion_damage);
			}
		}
	}
}

function OnHitPush(P, _p=noone, _e=noone) {
	if (instance_exists(_p)) {
		_p.y += (P.upgrades.push.push_amount * global.attack_dir);
	}
}

function OnHitBurn(P, _p=noone, _e=noone) {
	if (instance_exists(_p)) {
		_p.burn_timer = P.upgrades.burn.burn_timer;
	}
}

function OnHitCrunch(P, _p=noone, _e=noone) {
	var up = P.upgrades.crunch;

	if (_p.can_start_crunch) {
		_p.can_crunch_timer = up.crunch_timer;
		_p.can_start_crunch = false;
	}

	if (_p.can_crunch_timer >= 0) {
		// Crunch time
		switch (_p.bounce_state) {
			case 0:
			break;
			case 1:
				_p.dir = -_p.dir + 180;
			break;
			case 2:
				_p.dir = -_p.dir;
			break;
			case 3:
				_p.dir = _p.dir + 180;
			break;
		}
	}
}

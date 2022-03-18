function OnKillHelper(P, _p) {
	return (_p.kills % P.kills_for_upgrade && _p.kills != 0);
}

function OnKillGrowth(P, _p=noone, _e=noone) {
	// Increase projectile size
	if (OnKillHelper(P, _p)) {
		_p.size += P.upgrades.growth.growth_val;
	}
}

function OnKillShatter(P, _p=noone, _e=noone) {
	// Spawn shatter projectiles
	if (OnKillHelper(P, _p)) {
		var up = P.upgrades.shatter;

		var rot_spread = 360 / up.projectile_count;

		for (var i = 0; i < up.projectile_count; i++) {
			var m = up.projectile.create(_p.x, _p.y, i * rot_spread);
		}
	}
}

function OnKillHunger(P, _p=noone, _e=noone) {
	// Heal self on kill
	if (OnKillHelper(P, _p)) {
		if (global.curr_per < 100 && global.curr_per > 0) {
			global.curr_per -= P.upgrades.hunger.heal_amount;
		}
	}
}

function OnKillCrunch(P, _p=noone, _e=noone) {
	// Don't bounce when killing enemies
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

function OnKillHelper(P, _p) {
	return (_p.kills % P.kills_needed && _p.kills != 0);
}

function OnKillGrowth(P, _p=noone, _e=noone) {
	if (OnKillHelper(P, _p)) {
		_p.size += P.upgrades.growth.growth_val;
	}
}

function OnKillShatter(P, _p=noone, _e=noone) {
	var up = P.upgrades.shatter;

	var rot_spread = 360 / up.projectile_count;

	for (var i = 0; i < up.projectile_count; i++) {
		var m = up.projectile.create(_p.x, _p.y, i * rot_spread);
	}
}

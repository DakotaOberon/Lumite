function OnDeathShatter(P, _p=noone, _e=noone) {
	var up = P.upgrades.shatter;

	var rot_spread = 360 / up.projectile_count;

	for (var i = 0; i < up.projectile_count; i++) {
		var m = up.projectile.create(_p.x, _p.y, i * rot_spread);
	}
}

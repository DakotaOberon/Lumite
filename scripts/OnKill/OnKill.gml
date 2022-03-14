function OnKillHelper(P, _p) {
	return (_p.kills % P.kills_needed && _p.kills != 0);
}

function OnKillGrowth(P, _p=noone, _e=noone) {
	if (OnKillHelper(P, _p)) {
		_p.size += P.upgrades.growth.growth_val;
	}
}

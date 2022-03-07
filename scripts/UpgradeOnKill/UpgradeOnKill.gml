function OnKillUpgradeType(_P, _name, m1=f_earth, m2=f_earth, func=function () {}) : Upgrade(_P, _name, m1, m2) constructor {
	kills_needed = 5;
	on_kill_function = func;

	init = function() {
		if (self.P.kills_for_upgrade <= 0) {
			self.P.kills_for_upgrade = kills_needed;
		}

		self.P.add_on_kill(self.on_kill_function);
	}
}

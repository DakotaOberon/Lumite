function OnKillUpgradeType(_P, _name, _icon=UpIcon.erer) : Upgrade(_P, _name, _icon) constructor {
	kills_needed = 5;
	on_kill_function = function () {};

	init = function() {
		if (self.P.kills_for_upgrade <= 0) {
			self.P.kills_for_upgrade = kills_needed;
		}

		self.P.add_on_kill(self.on_kill_function);
	}

	additional_level_up_function = function() {
		specific_level_up_function();
	}
}

function UpgradeGrowth(P) : OnKillUpgradeType(P, "growth", UpIcon.rer) constructor {
	growth_val = 0;
	size_increase = 0.05;

	specific_level_up_function = function() {
		self.P.upgrades.growth.growth_val += size_increase;
	}
}

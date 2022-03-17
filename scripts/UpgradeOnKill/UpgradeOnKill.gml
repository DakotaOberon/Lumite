function OnKillUpgradeType(_P, _name, _icon=UpIcon.pp) : Upgrade(_P, _name, _icon) constructor {
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

function UpgradeGrowth(P) : OnKillUpgradeType(P, "growth", UpIcon.da) constructor {
	growth_val = 0;
	size_increase = 0.05;

	specific_level_up_function = function() {
		self.P.upgrades.growth.growth_val += size_increase;
	}
}

function UpgradeShatter(_P) : OnKillUpgradeType(_P, "shatter", UpIcon.dp) constructor {
	projectile_count = 0;
	projectile = new Projectile(w_shatter, f_dense, f_precise);

	// Set projectile values
	projectile.change_base_hp(2);
	projectile.update_speed(0.5);
	projectile.update_damage(-0.5);

	on_kill_function = OnKillShatter;

	specific_level_up_function = function() {
		self.projectile_count += 1;
	}
}

function OnDeathUpgradeType(_P, _name, _icon=UpIcon.ff) : Upgrade(_P, _name, _icon) constructor {
	// Set inside child upgrade
	on_death_function = function() {};
	specific_level_up_function = function() {};

	init = function() {
		self.P.change_base_hp(2);
		self.P.add_on_death(self.on_death_function);
	}

	additional_level_up_function = function() {
		specific_level_up_function();
	}
}

function UpgradeShatter(_P) : OnDeathUpgradeType(_P, "shatter", UpIcon.ri) constructor {
	projectile_count = 3;
	projectile = new Projectile(w_shatter, f_rock, f_ice, true);

	// Set projectile values
	projectile.change_base_hp(30);
	projectile.update_speed(0.5);

	on_death_function = OnDeathShatter;

	specific_level_up_function = function() {
		self.projectile_count += 1;
	}
}

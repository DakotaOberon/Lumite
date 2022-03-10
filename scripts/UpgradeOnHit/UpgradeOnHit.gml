function OnHitUpgradeType(_P, _name, m1=f_lightning, m2=f_lightning) : Upgrade(_P, _name, m1, m2) constructor {
	// Set inside child upgrade
	on_hit_function = function() {};
	specific_level_up_function = function() {};
	
	init = function() {
		self.P.add_on_hit(self.on_hit_function);
	}

	additional_level_up_function = function() {
		specific_level_up_function();
	}
}

function UpgradeStrike(_P) : OnHitUpgradeType(_P, "strike", f_lightning, f_lightning) constructor {
	strike_damage = 1;
	strike_amount = 1;
	on_hit_function = OnHitStrike;

	specific_level_up_function = function() {
		self.strike_amount += 1;
	}
}

function PassiveUpgradeType(_P, _name, _icon=UpIcon.ss) : Upgrade(_P, _name, _icon) constructor {
	// Set inside child upgrade
	passive_function = function() {};
	specific_level_up_function = function() {};

	init = function() {
		self.P.add_passive(self.passive_function);
	}

	additional_level_up_function = function() {
		specific_level_up_function();
	}
}

function UpgradeGravitational(P) : PassiveUpgradeType(P, "gravitational", UpIcon.dd) constructor {
	max_direction_change = 0;
	direction_up_amount = 0.25;
	passive_function = PassiveGravitational;

	specific_level_up_function = function() {
		self.max_direction_change += direction_up_amount;
	}
}

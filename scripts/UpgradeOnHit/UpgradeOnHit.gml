function OnHitUpgradeType(_P, _name, _icon=UpIcon.ll) : Upgrade(_P, _name, _icon) constructor {
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

function UpgradeStrike(_P) : OnHitUpgradeType(_P, "strike", UpIcon.ll) constructor {
	strike_damage = 1;
	strike_amount = 1;
	on_hit_function = OnHitStrike;

	specific_level_up_function = function() {
		self.strike_amount += 1;
	}
}

function UpgradeExecute(_P) : OnHitUpgradeType(_P, "execute", UpIcon.rl) constructor {
	execute_per = 0.05;
	execute_up_amount = 0.05;
	
	on_hit_function = OnHitExecute;
	
	specific_level_up_function = function() {
		self.execute_per += execute_up_amount;
	}
}

function UpgradeExplode(_P) : OnHitUpgradeType(_P, "explode", UpIcon.rf) constructor {
	explosion_radius = 30;
	explosion_up_amount = 10;
	explosion_damage = 1;

	on_hit_function = OnHitExplode;

	specific_level_up_function = function() {
		self.explosion_radius += explosion_up_amount;
	}
}

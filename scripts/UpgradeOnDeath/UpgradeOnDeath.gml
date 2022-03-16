// Breaks all other upgrades
//function OnDeathUpgradeType(_P, _name, _icon=UpIcon.aa) : Upgrade(_P, _name, _icon) constructor {
//	// Set inside child upgrade
//	on_death_function = function() {};
//	specific_level_up_function = function() {};

//	init = function() {
//		self.P.change_base_hp(2);
//		self.P.add_on_death(self.on_death_function);
//	}

//	additional_level_up_function = function() {
//		specific_level_up_function();
//	}
//}

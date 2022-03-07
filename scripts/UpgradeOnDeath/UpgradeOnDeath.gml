function OnDeathUpgradeType(_P, _name, m1=f_lightning, m2=f_lightning, func=function () {}) : Upgrade(_P, _name, m1, m2) constructor {
	on_death_function = func;
	
	init = function() {
		self.P.change_base_hp(20);
		self.P.add_on_death(self.on_death_function);
	}
}

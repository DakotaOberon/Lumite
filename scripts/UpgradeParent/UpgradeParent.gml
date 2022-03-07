// Upgrades apply to the projectile only when grabbed
function Upgrade(_P, _name, m1=f_rock, m2=f_rock) constructor {
	P = _P;
	level = 0;
	name = _name;

	additional_level_up_function = function () {};
	init = function () {};

	max_level = 3;

	level_up = function() {
		additional_level_up_function();
		self.level += 1;
		return self;
	}

	get = function() {
		init();
		variable_struct_set(self.P.upgrades, self.name, self);
		level = 1;
		return self;
	}

	makeup = [m1, m2];
}


//function UpgradeGrowth(P) : OnKillUpgradeType(P, f_earth, f_earth) constructor {
//	size_increase = 0.05;
//	level_up = function() {
//		if (level == 0) {
//			init();
//			self._P.add_on_kill(OnKillGrowth);
//		}

//		self.level += 1;
//		self._P.growth_val += size_increase;
//	}
//}

//function UpgradeCrunch(P) : Upgrade(P, f_rock, f_rock) constructor {
//	max_level = 1;

//	level_up = function() {
//		if (self.level = 0) {
//			self._P.add_on_kill(OnKillCrunch);
//		}

//		if (self.level < self.max_level) {
//			self.level += 1;
//		}
//	}
//}


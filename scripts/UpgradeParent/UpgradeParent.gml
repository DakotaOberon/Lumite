// Upgrades apply to the projectile only when grabbed
function Upgrade(_P, _name, _icon=UpIcon.rr) constructor {
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
		if (!variable_struct_exists(self.P.upgrades, self.name)) {
			variable_struct_set(self.P.upgrades, self.name, self);
			init();
			level = 0;
		} else {
			self.level_up();
		}
		return self;
	}

	icon = _icon;
}

function TempUpgrade(P) : Upgrade(P, "tmp", UpIcon.rr) constructor {
	
}

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


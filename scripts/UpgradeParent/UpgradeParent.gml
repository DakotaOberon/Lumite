// Upgrades apply to the projectile only when grabbed
function Upgrade(_P, _name, _icon=UpIcon.dd) constructor {
	P = _P;
	level = 0;
	name = _name;

	additional_level_up_function = function () {};
	init = function () {};

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

function TempUpgrade(P) : Upgrade(P, "tmp", UpIcon.dd) constructor {
	
}

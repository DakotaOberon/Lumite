// Player stats used during game
function Player() constructor {
	// Base Stats
	base = {
		regen: 300,
		projectiles: 3,
		move_speed: 8
	}

	// Bonuses
	bonus = {
		regen_speed: 1,
		projectiles: 0,
		move_speed: 1
	}
	
	upgrade_bubbles = { }
	
	// Actual
	regen = base.regen * bonus.regen_speed;
	projectiles = base.projectiles + bonus.projectiles;
	move_speed = base.move_speed * bonus.move_speed;
	held_projectiles = projectiles;
	xp = 0;
	level = 1;
	total_score = 0;
	xp_needed_to_level = 100;

	// Functions
	update_regen = PlayerUpdateRegen;
	update_projectile = PlayerUpdateProjectiles;
	update_speed = PlayerUpdateSpeed;
	gain_xp = PlayerGainXP;
	
	return_projectile = PlayerReturnProjectile;
	use_projectile = PlayerUseProjectile;
}

function PlayerUpdateRegen(per=0) {
	self.bonus.regen_speed += per;

	self.regen = self.base.regen * self.bonus.regen_speed;

	return self;
}

function PlayerUpdateProjectiles(add=0) {
	self.bonus.projectiles += add;

	self.projectiles = self.base.projectiles + self.bonus.projectiles;

	return self;
}

function PlayerUpdateSpeed(per=0) {
	self.bonus.move_speed += per;

	self.move_speed = self.base.move_speed * self.bonus.move_speed;

	return self;
}

function PlayerGainXP(amount=0) {
	self.xp += amount;
	if (self.xp >= self.xp_needed_to_level) {
		var level_before = self.level;
		var lvs = floor(self.xp / self.xp_needed_to_level);
		self.level += lvs;
		self.xp = self.xp % self.xp_needed_to_level;

		var i = 1;
		repeat(lvs) {
			level_up_action(level_before + i);
			i++;
		}
	}

	self.total_score += amount;
	return self;
}

function PlayerReturnProjectile(amount=1) {
	self.held_projectiles += amount;
	
	if (self.held_projectiles > self.projectiles) {
		self.held_projectiles = self.projectiles;
	}

	return self;
}

function PlayerUseProjectile(amount=1) {
	if (self.held_projectiles > 0) {
		self.held_projectiles -= 1;
		return true;
	}

	return false;
}
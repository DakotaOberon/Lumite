/**
* Projectile struct player created projectiles will spawn from
*
* @function		Projectile(w=w_wand, f=f_dense, a=f_dense)
* @param		{real}		weapon			Weapon type projectile is
* @param		{real}		frame			Primary frame of projectile
* @param		{real}		alt				Secondary frame of projectile
* @param		{bool}		p				If projectile is a primary projectile of player
* @return		{self}
*/
function Projectile(_w=w_wand, _f=f_dense, _a=f_dense, _p=false) constructor {
	weapon = _w;
	frame = _f;
	alt = _a;
	is_primary = _p;

	base = {
		size: 1,
		spd: 6,
		hp: -1, // -1 for doesn't break
		damage: 3
	}

	bonus = {
		size: 1,
		spd: 1,
		hp: 1,
		damage: 1
	}

	upgrades = { }

	size = base.size * bonus.size;
	spd = base.spd * bonus.spd;
	hp = base.hp * bonus.spd;
	damage = base.damage * bonus.damage;
	
	bounce_off_bottom = false;

	update_size = ProjectileUpdateSize;
	update_speed = ProjectileUpdateSpeed;
	update_hp = ProjectileUpdateHP;
	update_damage = ProjectileUpdateDamage;

	update_bounce_off_bottom = ProjectileUpdateBounceOffBottom;

	growth_val = 0; // 0 for no growth
	kills_for_upgrade = 0; // 0 for no upgrades on kill
	strike_val = 0; // 0 for no damage on strike
	aoe_range = 0; // 0 for no aoe
	burn_time = 0; // 0 for no burn

	passives = [];
	on_hit = [];
	on_kill = [];
	on_death = [];

	run_on_hit = ProjectileRunOnHit;
	run_on_kill = ProjectileRunOnKill;
	run_on_death = ProjectileRunOnDeath;

	add_passive = ProjectileAddPassive;
	add_on_hit = ProjectileAddOnHit;
	add_on_kill = ProjectileAddOnKill;
	add_on_death = ProjectileAddOnDeath;

	change_weapon = ProjectileChangeWeapon;
	change_frame = ProjectileChangeFrame;
	change_alt = ProjectileChangeAlt;
	change_base_hp = ProjectileChangeBaseHP;

	create = ProjectileCreate;
}

/**
* Update size value of Projectile
*
* @function		ProjectileUpdateSize(per=0)
* @param		{real}		per				Percentage to add to bonus
* @return		{self}
*/
function ProjectileUpdateSize(per=0) {
	self.bonus.size += per;
	
	self.size = self.base.size * self.bonus.size;
	
	return self;
}

/**
* Update speed value of Projectile
*
* @function		ProjectileUpdateSpeed(per=0)
* @param		{real}		per				Percentage to add to bonus
* @return		{self}
*/
function ProjectileUpdateSpeed(per=0) {
	self.bonus.spd += per;
	
	self.spd = self.base.spd * self.bonus.spd;
	
	return self;
}

/**
* Update hp value of Projectile
*
* @function		ProjectileUpdateHP(per=0)
* @param		{real}		per				Percentage to add to bonus
* @return		{self}
*/
function ProjectileUpdateHP(per=0) {
	self.bonus.hp += per;
	
	self.hp = self.base.hp * self.bonus.hp;
	
	return self;
}

/**
* Update damage value of Projectile
*
* @function		ProjectileUpdateDamage(per=0)
* @param		{real}		per				Percentage to add to bonus
* @return		{self}
*/
function ProjectileUpdateDamage(per=0) {
	self.bonus.damage += per;

	self.damage = self.base.damage * self.bonus.damage;

	return self;
}

function ProjectileUpdateBounceOffBottom(new_val) {
	self.bounce_off_bottom = new_val;

	return self;
}

/**
* Run on hit functions of projectile
*
* @function		ProjectileRunOnHit(_p=noone, _e=noone)
* @param		{real}		p				Projectile object in collision
* @param		{real}		e				Enemy object in collision
* @return		{self}
*/
function ProjectileRunOnHit(_p=noone, _e=noone) {
	for (var i = 0; i < array_length(self.on_hit); i++) {
		self.on_hit[i](self, _p, _e);
	}

	return self;
}

/**
* Run on kill functions of projectile
*
* @function		ProjectileRunOnKill(_p=noone, _e=noone)
* @param		{real}		p				Projectile object in collision
* @param		{real}		e				Enemy object in collision
* @return		{self}
*/
function ProjectileRunOnKill(_p=noone, _e=noone) {
	for (var i = 0; i < array_length(self.on_kill); i++) {
		self.on_kill[i](self, _p, _e);
	}

	return self;
}

/**
* Run on death functions of projectile
*
* @function		ProjectileRunOnHit(_p=noone)
* @param		{real}		p				Projectile object in collision
* @return		{self}
*/
function ProjectileRunOnDeath(_p=noone) {
	for (var i = 0; i < array_length(self.on_death); i++) {
		self.on_death[i](self, _p);
	}

	return self;
}

function ProjectileAddPassive(passive) {
	array_push(self.passives, passive);

	return self;
}

function ProjectileAddOnHit(effect) {
	array_push(self.on_hit, effect);
	
	return self;
}

function ProjectileAddOnKill(effect) {
	array_push(self.on_kill, effect);
	
	return self;
}

function ProjectileAddOnDeath(effect) {
	array_push(self.on_death, effect);

	return self;
}

function ProjectileChangeWeapon(_w) {
	self.weapon = _w;
	return self;
}

function ProjectileChangeFrame(_f) {
	self.frame = _f;
	return self;
}

function ProjectileChangeAlt(_a) {
	self.alt = _f;
	return self;
}

function ProjectileCreate(_x, _y, _dir=90, _layer="Projectile", is_enemy=false) {
	var create_projectile = true
	if (self.is_primary) {
		if (!global.player.use_projectile()) {
			create_projectile = false;
		}
	}

	if (create_projectile) {
		var p = instance_create_layer(_x, _y, _layer, oProjectile);
		p.dir = _dir;
		p.is_enemy = is_enemy;

		return projectile_update_values(self, p);
	}

	return noone;
}

function ProjectileChangeBaseHP(new_val) {
	self.base.hp = new_val;
}
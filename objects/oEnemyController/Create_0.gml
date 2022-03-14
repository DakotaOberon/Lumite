// Enemy Projectiles
switch (global.game_mode) {
	case gm_light:
		nm_projectile = new Projectile(sProjectileMaggot, c_energy, c_energy);
		nm_projectile.change_base_hp(2);
	break;
	case gm_night:
		
	break;
}

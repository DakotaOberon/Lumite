// Level upgrade
function level_upgrade(name) {
	if (variable_struct_exists(global.projectile.upgrades, name)) {
		global.projectile.upgrades[$ name].level_up();
		return true;
	}

	return false;
}

global.projectile = new Projectile(w_sword, c_rock, c_earth, true);
global.player = new Player();

log("Getting Strike Upgrade");
var strike_upgrade = new UpgradeStrike(global.projectile).get();
strike_upgrade.level_up();

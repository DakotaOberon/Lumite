/**
* Updates needed values of child object
*
* @function		projectile_update_values(P, p)
* @param		{real}		P				Projectile struct
* @param		{real}		p				projectile object
* @return		p
*/
function projectile_update_values(P, p) {
	p.P = P;
	p.hp = P.hp;

	return p;
}

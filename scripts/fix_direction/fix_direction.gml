/**
* Fixes direction value to be between 
*
* @function		fix_direction(dir)
* @param		{real}		dir			Direction to fix
* @return		{real}
*/
function fix_direction(_dir) {
	if (_dir < 0) {
		// If _dir is negative, make it positive
		var iter = ceil(abs(_dir) / 360);
		_dir += (iter * 360);
	} else if (_dir >= 360) {
		// If _dir is very positive, make it less positive
		_dir = _dir % 360;
	}

	return _dir;
}

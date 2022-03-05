/**
* Check if surface still exists, otherwise create it
*
* @function		check_surface(_id)
* @param		{real}		id			Id of surface to check
* @return		{bool}
*/
function check_surface(_id) {
	// Create surface if it doesn't exist
	if (!surface_exists(_id)) {
		// Return new surface id
		_id = surface_create(1024, 1024);
	}

	// Return surface
	return true;
}

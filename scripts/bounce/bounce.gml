/**
* Bounce self, called from end script of bounceable object
* Return array of entities collided with
*
* @function		bounce()
* @return		{array}
*/
function bounce() {
	// Check horizontal collision
	var xCol = collision_rectangle(bbox_left + xMove, bbox_top, bbox_right + xMove, bbox_bottom, oCollidable, 0, 1);

	if (can_bounce) {
		if (xCol) {			
			var ent_dir = xCol.x - x;
			// Compare collision side to create a better collision
			var xDis = 0;
			if (sign(ent_dir)) {
				// Check distance for right movement
				xDis = bbox_right - xCol.bbox_left;
			} else if (!sign(ent_dir)) {
				// Check distance for left movement
				xDis = bbox_left - xCol.bbox_right;
			}

			// Move obj against other object before bouncing
			x += xDis;
			dir = -dir + 180;
			bounce_state += 1;
			
			xMove = 0;
		}
	}

	// Check vertical collision
	var yCol = collision_rectangle(bbox_left, bbox_top + yMove, bbox_right, bbox_bottom + yMove, oCollidable, 0, 1);
	
	if (can_bounce) {
		if (yCol) {
			//var yBefore = y; // Used for debugging

			var ent_dir = yCol.y - y;
			// Compare collision side to create a better collision
			var yDis = 0;
			if (sign(ent_dir)) {
				//Check distance for down movement
				yDis = bbox_bottom - yCol.bbox_top;
			} else if (!sign(ent_dir)) {
				// Check distance for up movement
				yDis = bbox_top - yCol.bbox_bottom;
			}
		
			// Move obj against other object before bouncing
			y += yDis;
			dir = -dir;
			yMove = 0;
			bounce_state += 2;
		}
	}

	return [xCol, yCol];
}

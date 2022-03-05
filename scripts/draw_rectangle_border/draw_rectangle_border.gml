/**
* Draw border around rectangle
*
* @function		draw_rectangle_border(x1, y1, x2, y2, c1, c2, c3, w, [outline])
* @param		{real}		x1				Left x coord of rectangle
* @param		{real}		y1				Top y coord of rectangle
* @param		{real}		x2				Right x coord of rectangle
* @param		{real}		y2				Bottom y coord of rectangle
* @param		{real}		c1				First color of gradient starting top left
* @param		{real}		c2				Second color of gradient starting from bottom left and top right
* @param		{real}		c3				Third color of gradient starting bottom right
* @param		{real}		w				Width of border
* @param		{bool}		outline			Draw border as outline
*/
function draw_rectangle_border(x1, y1, x2, y2, c1, c2, c3, w, outline=false) {
	// Top Left to Bottom Left
	draw_rectangle_color(x1, y1, x1 + w, y2, c1, c1, c2, c2, outline);
	
	// Top Left to Top Right
	draw_rectangle_color(x1, y1, x2, y1 + w, c1, c2, c2, c1, outline);
	
	// Bottom Left to Bottom Right
	draw_rectangle_color(x1, y2 - w, x2, y2, c2, c3, c3, c2, outline);
	
	// Top Right to Bottom Right
	draw_rectangle_color(x2 - w, y1, x2, y2, c2, c2, c3, c3, outline);
}
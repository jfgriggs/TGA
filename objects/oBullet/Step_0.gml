// Move
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);

	x += xspd;
	y += yspd;

	// Cleanup
	if hitConfirm == true && enemyDestroy == true destroy = true;

	// Destroy
	if destroy == true instance_destroy();
	
	// Collision
	if place_meeting(x, y, oSolidWall) destroy = true;
	
	// Bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist destroy = true;
	
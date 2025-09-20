// Chase the player

	if (instance_exists(oPlayer)) {
		dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	} 

	// Getting the speeds
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);

	// Get correct face
		if xspd > 0 face = 1;
		if xspd < 0 face = -1;

	// Collisions
		if place_meeting(x + xspd, y, [oWall, oEnemyParent]) xspd = 0;
		if place_meeting(x, y + yspd, [oWall, oEnemyParent]) yspd = 0;

	// Moving
		x += xspd;
		y += yspd;

// Inherit the parent event
	// Getting damaged and dying
	event_inherited();

	
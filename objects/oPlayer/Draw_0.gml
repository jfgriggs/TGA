// Draw the weapon
	if aimDir >= 0 && aimDir < 180 draw_my_weapon();

// Draw the player
	draw_self();

// Draw the weapon
	if aimDir >= 180 && aimDir < 360 draw_my_weapon();

// Draw HP
draw_text(x, y, string(hp));

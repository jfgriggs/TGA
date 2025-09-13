// Inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);
shootKey = mouse_check_button(mb_left);
swapKeyPressed = mouse_check_button_pressed(mb_right)

// Movement
#region
	// Get direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
	//  Get x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0,  0, _horizKey, _vertKey);
	_inputLevel = clamp(_inputLevel, 0, 1);
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	// Collision check
	if place_meeting(x + xspd, y, oSolidWall) xspd = 0;
	if place_meeting(x, y + yspd, oSolidWall) yspd = 0;
	
	// Move player
	x += xspd;
	y += yspd;
	
	// Depth
	depth = -bbox_bottom;
	
#endregion	
	
// Player Aiming
#region
	centerY = y - centerYOffset;
	
	// Aim
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);


#endregion
	
// Sprite Control
#region	
	// Make sure the sprite is facing in the correct direction
	face = round(aimDir/90);
	if face == 4 face = 0;
	
	// Stop animating
	if xspd == 0 && yspd == 0 {
		image_index = 0
	}
	
	// Set player sprite
	mask_index = sprite[3];
	sprite_index = sprite[face];
#endregion

// Weapon Swapping
#region
	var _playerWeapons = global.PlayerWeapons;
	
	// Cycle through weapons
	if swapKeyPressed {
		// Change the selection and wrap around
		selectedWeapon++;
		if selectedWeapon >= array_length(_playerWeapons) selectedWeapon = 0;
		
		// Set the new weapon
		weapon = _playerWeapons[selectedWeapon];
	}
#endregion
	
// Shoot Weapon
#region
	if shootTimer > 0 shootTimer--;
	if shootKey && shootTimer <= 0 {
		
		// Reset timer
		shootTimer = weapon.cooldown;
		
		var _xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
		var _yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);
		var  _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth - 100, weapon.bulletObj);
		show_debug_message("Weapon length: " + string(weapon.length)
			+ " Aim Direction: " + string(aimDir)
			+ " X Offset: " + string(_xOffset)
			+ " Y Offset: " + string(_yOffset)
			+ " X: " + string(x)
			+ " Y: " + string(y)
		);
		
		// Change bullet's direction
		with(_bulletInst) {
			dir = other.aimDir;
			
		}
	}
#endregion


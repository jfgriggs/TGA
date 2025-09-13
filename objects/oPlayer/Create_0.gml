// Movement Variables
	moveDir = 0;
	moveSpd = 2;
	xspd = 0;
	yspd = 0;


// Sprite Control Variables

	centerYOffset = 10;
	centerY = y - centerYOffset;   // Set in step event

	weaponOffsetDist = 0;
	aimDir = 0;

	face = 3;
	sprite[0] = sPlayerRight;
	sprite[1] = sPlayerUp;
	sprite[2] = sPlayerLeft;
	sprite[3] = sPlayerDown;
	
// Weaon Info
	shootTimer = 0;
		
	// Add weapons to player inventory
	array_push(global.PlayerWeapons, global.WeaponList.cannon);
	array_push(global.PlayerWeapons, global.WeaponList.pumpkin);
	array_push(global.PlayerWeapons, global.WeaponList.tomato);
	array_push(global.PlayerWeapons, global.WeaponList.potato);
	
	selectedWeapon = 0
	weapon = global.PlayerWeapons[selectedWeapon];
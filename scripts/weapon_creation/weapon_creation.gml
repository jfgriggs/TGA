// Constructor teamplate for weapons
function create_weapon(_sprite, _weaponLength, _bulletObj, _cooldown, _bulletNum = 1, _spread = 0) constructor {
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
}

// Player's weapon inventory
global.PlayerWeapons = array_create(0);

// Weapons
global.WeaponList = {
	cannon: new create_weapon(
		sWeaponCannon,
		sprite_get_bbox_right(sWeaponCannon) - sprite_get_xoffset(sWeaponCannon),
		oBullet,
		10,
		1,
		0
	),


	shotgun: new create_weapon(
		sWeaponShotgun,
		sprite_get_bbox_right(sWeaponShotgun) - sprite_get_xoffset(sWeaponShotgun),
		oSpinningStar,
		20,
		7,
		45
	),

	crossbow: new create_weapon(
		sWeaponCrossbow,
		sprite_get_bbox_right(sWeaponCrossbow) - sprite_get_xoffset(sWeaponCrossbow),
		oArrow,
		20,
		1,
		0
	),

	pumpkin: new create_weapon(
		sWeaponPumpkin,
		sprite_get_bbox_right(sWeaponPumpkin) - sprite_get_xoffset(sWeaponPumpkin),
		oBulletPumpkin,
		25,
		1,
		0
	),
	
	tomato: new create_weapon(
		sThrowTomato,
		sprite_get_bbox_right(sThrowTomato) - sprite_get_xoffset(sThrowTomato),
		oBulletTomato,
		20,
		1,
		0
	),
	
	potato: new create_weapon(
		sWeaponPotato,
		sprite_get_bbox_right(sWeaponPotato) - sprite_get_xoffset(sWeaponPotato),
		oBulletPotato,
		10,
		1,
		0
	),

}
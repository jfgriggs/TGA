// Constructor teamplate for weapons
function create_weapon(_sprite, _weaponLength, _bulletObj, _cooldown) constructor {
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
}

// Player's weapon inventory
global.PlayerWeapons = array_create(0);

// Weapons
global.WeaponList = {
	cannon: new create_weapon(
		sWeaponCannon,
		sprite_get_bbox_right(sWeaponCannon) - sprite_get_xoffset(sWeaponCannon),
		oBullet,
		10
	),

	pumpkin: new create_weapon(
		sWeaponPumpkin,
		sprite_get_bbox_right(sWeaponPumpkin) - sprite_get_xoffset(sWeaponPumpkin),
		oBulletPumpkin,
		25
	),
	
	tomato: new create_weapon(
		sWeaponTomato,
		sprite_get_bbox_right(sWeaponTomato) - sprite_get_xoffset(sWeaponTomato),
		oBulletTomato,
		10
	),
	
	potato: new create_weapon(
		sWeaponPotato,
		sprite_get_bbox_right(sWeaponPotato) - sprite_get_xoffset(sWeaponPotato),
		oBulletPotato,
		10
	),

}
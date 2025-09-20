// Receive damage
	if place_meeting(x, y, oDamageEnemy) {
		var _inst = instance_place(x, y, oDamageEnemy);
	
		// Take damage from specific instaance
		hp -= _inst.damage;
	
		// Tell the damage instance to destroy itself
		_inst.destroy = true;
	}

// Death
	if hp <= 0 instance_destroy();
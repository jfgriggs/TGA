// Receive damage
	if place_meeting(x, y, oDamageEnemy) {
		
		// Get list of damage instances
		var _instList = ds_list_create();
		instance_place_list(x, y, oDamageEnemy, _instList, false);

		var list_size = ds_list_size(_instList);

		for  (var i = 0; i < list_size; i++) {

			// Get daomage object instance from list
			var _inst = ds_list_find_value(_instList, i);
			
			// Take damage from specific instaance
			hp -= _inst.damage;
	
			// Tell the damage instance to destroy itself
			_inst.destroy = true;
		}

		// Free up memory
		ds_list_destroy(_instList);
	
	}

// Death
	if hp <= 0 instance_destroy();
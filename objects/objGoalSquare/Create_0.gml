nCollisionThreshold = 16;

bFengShui = false;

switch(nID){
	case 1: sprite_index = sprGoalSquare1; break;
	case 2: sprite_index = sprGoalSquare2; break;
	case 3: sprite_index = sprGoalSquare3; break;
	case 4: sprite_index = sprGoalSquare4; break;
}


with(objFurniture){
	if (nID == other.nID){
		other.objTargetFurniture = self;
	}
}



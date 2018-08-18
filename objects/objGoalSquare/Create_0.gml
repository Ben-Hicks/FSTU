nCollisionThreshold = 16;

bFengShui = false;

with(objFurniture){
	if (nID == other.nID){
		other.objTargetFurniture = self;
	}
}



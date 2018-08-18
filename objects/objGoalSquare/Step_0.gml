
nDX = abs(x - objTargetFurniture.x);
nDY = abs(y - objTargetFurniture.y);
	
if(nDX > nCollisionThreshold || nDY > nCollisionThreshold){
	bFengShui = false;
	return;	
}

bFengShui = true;

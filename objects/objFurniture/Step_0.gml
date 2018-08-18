//Gravity Acceleration
if(global.nGravityDir==0){
	nVelocityY -= global.nGravity;
}else if(global.nGravityDir==1){
	nVelocityX += global.nGravity;
}else if(global.nGravityDir==2){
	nVelocityY += global.nGravity;
}else if(global.nGravityDir==3){
	nVelocityX -= global.nGravity;
}

//Terminal Velocity X
if(nVelocityX > global.nVelocityT){
	nVelocityX = global.nVelocityT;
}else if(nVelocityX < -global.nVelocityT){
	nVelocityX = -global.nVelocityT;
}

//Terminal Velocity Y
if(nVelocityY > global.nVelocityT){
	nVelocityY = global.nVelocityT;
}else if(nVelocityY < -global.nVelocityT){
	nVelocityY = -global.nVelocityT;
}

//Furniture Collision
//Horizontal
if(place_meeting(x+nVelocityX, y, objFurniture)){
	while(!place_meeting(x+sign(nVelocityX), y, objFurniture)){
		x += sign(nVelocityX);
	}
	nVelocityX = 0;
}
//Vertical
if(place_meeting(x, y+nVelocityY, objFurniture)){
	while(!place_meeting(x, y+sign(nVelocityY), objFurniture)){
		y += sign(nVelocityY);
	}
	nVelocityY = 0;
}

//Wall Collision
//Horizontal
if(place_meeting(x+nVelocityX, y, objWall)){
	while(!place_meeting(x+sign(nVelocityX), y, objWall)){
		x += sign(nVelocityX);
	}
	nVelocityX = 0;
}
//Vertical
if(place_meeting(x, y+nVelocityY, objWall)){
	while(!place_meeting(x, y+sign(nVelocityY), objWall)){
		y += sign(nVelocityY);
	}
	nVelocityY = 0;
}

//Hazard Collision
//Horizontal and Vertical
if(place_meeting(x+nVelocityX, y+nVelocityY, objHazard)){
	room_restart();
}

//Movement
x += nVelocityX;
y += nVelocityY;


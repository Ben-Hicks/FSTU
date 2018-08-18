global.bFengShui = true;

with(objGoalSquare){
	if(bFengShui == false){
		global.bFengShui = false;
	}
}

if(global.bFengShui == true){
	room_goto_next()
}
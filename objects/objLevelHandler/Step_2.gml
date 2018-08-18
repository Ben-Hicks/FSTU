bFengShui = true;

with(objGoalSquare){
	if(bFengShui == false){
		other.bFengShui = false;
	}
}

if(bFengShui == true){
	room_goto_next()
}
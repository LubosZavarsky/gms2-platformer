var goback	= keyboard_check_pressed(ord("B"));
if (goback) room_goto(rm_menu);



// Check if dead

if (room == rm_game) {
	if (!instance_exists(obj_player) || !instance_exists(obj_sektor)) {

		restart = true;
		
		var rstart	= keyboard_check_pressed(ord("R"));
		if (rstart) RESTART_ALL // macro! >> game_restart() buggy in html exports
	}
}







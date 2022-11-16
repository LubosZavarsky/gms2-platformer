#macro RESTART_ALL __game_restart();

function __game_restart() {
  // This will destroy all instances. 
  // Yes, this will run their cleanup events as well as their destroy event.
  with(all) {
	instance_destroy();	
  }

  audio_stop_all();
  //draw_texture_flush();


  // Go to the very first room, as per room order
  room_goto(rm_menu);
}
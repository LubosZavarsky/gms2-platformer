var up, down, accept

up		= keyboard_check_pressed(vk_up);
down	= keyboard_check_pressed(vk_down);
accept	= keyboard_check_pressed(vk_enter);

// Moving in menu
if (up && image_index > 0) image_index--;

if (down && image_index < 2) image_index++;

// Actions
if (accept && image_index == 0) room_goto(rm_game);
if (accept && image_index == 1) room_goto(rm_instr);
if (accept && image_index = 2) game_end();











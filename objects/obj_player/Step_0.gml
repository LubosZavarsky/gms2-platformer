// Player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Movement calc
var move = key_right - key_left; // 1 or -1 or 0 (when arrows pressed together)

hsp = move * walksp;

vsp = vsp + grv;

if (collision) {
	walksp = 0;
	sprite_index = spr_blood;
	exit;
}

// Jumping
if (place_meeting(x, y+1, obj_wall)) && (key_jump) {
	vsp = -jumpsp;
}

// Horizontal collision
if (place_meeting(x+hsp, y, obj_wall)) {

	while (!place_meeting(x+sign(hsp), y, obj_wall)) {	
		x = x + sign(hsp);	
	}
	hsp = 0;
}

x = x + hsp;

// Vertical collision
if (place_meeting(x, y+vsp, obj_wall)) {

	while (!place_meeting(x, y+sign(vsp), obj_wall)) {	
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y + vsp;


// Animation
if (!place_meeting(x,y+1,obj_wall)) {

	sprite_index = spr_cosmo_jump;
	
	if (vsp > 0) {
		sprite_index = spr_cosmo_fall;
	}

} else {		
	
	if (hsp != 0) {		
		sprite_index = spr_cosmo_walk;
	} else {			
		sprite_index = spr_cosmo_idle;		
	}
}


// Flip the sprite in the right direction
if (hsp != 0) image_xscale = sign(hsp);








vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp, y, obj_wall)) {
	while (!place_meeting(x+sign(hsp), y, obj_wall)) {	
		x = x + sign(hsp);	
	}			
	walksp = -walksp;	
	image_xscale = sign(hsp);
}

// Vertical collision
if (place_meeting(x, y+vsp, obj_wall)) {

	while (!place_meeting(x, y+sign(vsp), obj_wall)) {	
		y = y + sign(vsp);			
	}	
	vsp = 0;
	
	hsp = -walksp; // when on ground, walk! (start walking left = minus)
	x = x + hsp;	
}

y = y + vsp;

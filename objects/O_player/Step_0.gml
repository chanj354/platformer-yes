/// @description add platformer mechinics

//get keyboard inputs
//keyboard _check(key) will return 1 if pressed, 0 if not pressed
key_right = keyboard_check(vk_right); //ord('D') for the D key
key_left = keyboard_check(vk_left); //ord('A') for A
key_jump = keyboard_check(vk_space);

//work out where to move horizontally
hsp = (key_right - key_left) * hsd_walk;

//work out to where to move vertically
vsp = vsp + grv; 
// work out if we should jump
if(place_meeting(x,y +1, O_wall)) and (key_jump)
{
vsp = vsp_jump	
}

//check for horizontal collison and then move if we can
var onepixel = sign(hsp); //sign() returns -1, 0, or 1
if(place_meeting(x + hsp, y, O_wall))
{
//move as clse as we can
//move 1px towards the wall untill we're 1px away
	while (!place_meeting(x + onepixel, y, O_wall))
	{
		//update x
		x = x + onepixel;
	}
	hsp = 0; //once we' 1 pixel away, stop moving
}

//check for vertical collision and then move if we can
var onepixel = sign(vsp);
if(place_meeting(x,y + vsp, O_wall))
{
	//move as close as we can
	while (!place_meeting(x,y + onepixel, O_wall))
	{
		y = y + onepixel;
	}
	
	vsp = 0
}

//move character with hsp x = x position of the player on the canvas
x = x + hsp;
y = y + vsp;

/// @description add platformer mechinics

//get keyboard inputs
//keyboard _check(key) will return 1 if pressed, 0 if not pressed
key_right = keyboard_check(vk_right); //ord('D') for the D key
key_left = keyboard_check(vk_left); //ord('A') for A
key_jump = keyboard_check(vk_space);

//work out where to move horizontally
hsp = (key_right - key_left) * hsd_walk;
/*
Right key only is pressed; hsp = 4
Left key only is pressed; hsp = -4
Both keys are pressed: hsp = 0
Neither key is pressed: hsp = 0
*/
//move character with hsp x = x position of the player on the canvas
x = x + hsp;

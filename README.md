# platformer-yes

## O_player
## Step event Notes
How keyboard_check wors:
hsp = (key_right - key_left) * hsd_walk;
/*
Right key only is pressed; hsp = 4
Left key only is pressed; hsp = -4
Both keys are pressed: hsp = 0
Neither key is pressed: hsp = 0
*/

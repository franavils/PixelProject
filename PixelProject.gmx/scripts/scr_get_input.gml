//Get the player's input
key_up = keyboard_check(vk_up);
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(ord('X'));
key_down = keyboard_check(vk_down);
key_shoot = keyboard_check_pressed(ord('C'));

move = key_left + key_right;
hsp = move * movespeed;


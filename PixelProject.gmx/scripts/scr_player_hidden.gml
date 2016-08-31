//Animation
sprite_index = spr_player_hidden;

hidden = true;
depth = 1;


//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

if (!place_meeting(x+sprite_width,y,obj_hideout))
{
    
    hsp = 0;
} else
x += hsp/2;

if (hsp != 0)
    {
    image_speed = 0.1;
    } 
    else 
    {
    image_speed = 0;
    }






//Exits
if (obj_player.key_down) 
{
    if (!armedAndDangerous)
    currentState = playerStates.idleNoGun;
    else if (armedAndDangerous)
    currentState = playerStates.idleGun;

}


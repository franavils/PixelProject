//Animation
sprite_index = spr_player_ladder;
hidden = false;


//Get the player's input
scr_get_input();

//Set gravity
grav = 0;

//Vertical movement

moveV = key_down + (-key_up);
vsp = moveV * movespeed;
scr_player_collisions();

if (vsp != 0 || hsp != 0)
{
image_speed = 0.1;
} else 
{
image_speed = 0;
}

//Exits
if (place_meeting(x,y, obj_ladder) && obj_player.key_jump)
    {
    vsp = -jumpspeed
    if (!armedAndDangerous)
            currentState = playerStates.fallNoGun;
            else
            currentState = playerStates.fallGun;
    }
else if (!place_meeting(x,y, obj_ladder))
    {
        if (!place_meeting(x,y, obj_block))
        {
            if !armedAndDangerous
            currentState = playerStates.fallNoGun;
            else
            currentState = playerStates.fallGun;
        }
            
    
    }
else if (place_meeting(x,y+12,obj_block) && key_down)
    {
        if !armedAndDangerous
        currentState = playerStates.idleNoGun;
        else
        currentState = playerStates.idleGun;
    }
    

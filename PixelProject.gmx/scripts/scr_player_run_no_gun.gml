//Animation
sprite_index = spr_player_run;
image_speed = speedAnimation;
hidden = false;
//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();

//Exits
if (move = 0) 
{
    currentState = playerStates.idleNoGun;

}
if (!place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.fallNoGun;
}

if (armedAndDangerous)
{
    currentState = playerStates.walkGun;

}
if (place_meeting(x,y, obj_ladder) )
{

    if (!place_meeting(x,y+1,obj_block) && (obj_player.key_up|| obj_player.key_down))
    {
    currentState = playerStates.ladder;
    } else if (place_meeting(x,y+1,obj_block) && (obj_player.key_up))
    {
    currentState = playerStates.ladder;
    }
}

//Hidden
if (place_meeting(x,y, obj_hideout) && obj_player.key_up)
{
    currentState = playerStates.hidden;

}

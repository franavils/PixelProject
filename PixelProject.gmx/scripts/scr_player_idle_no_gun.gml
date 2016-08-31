//Animation
sprite_index = spr_player_idle;
image_speed= fatigue;
hidden = false;

if (image_speed <= 0)
{
    image_index = 0;
}
//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();

if (fatigue > 0)
    {
        fatigue -= 0.0002;
    
    }

//Exists

//Move
if (move != 0) 
{
    currentState = playerStates.walkNoGun;

}

//Fall or Jump
if (!place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.fallNoGun;
}

//Pick a gun
if (armedAndDangerous)
{
    currentState = playerStates.idleGun;

}

//Ladder
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

//Animation
sprite_index = spr_player_walk_gun;
image_speed = speedAnimation;
hidden = false;
//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();

//Shooting
scr_player_shooting();

//Exists
if (move = 0) 
{
    currentState = playerStates.idleGun;

}
if (!place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.fallGun;
}

if (!armedAndDangerous)
{
    currentState = playerStates.walkNoGun;

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

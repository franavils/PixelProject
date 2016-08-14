//Animation
sprite_index = spr_player_idle;
//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();



//Exists
if (move != 0) 
{
    currentState = playerStates.walkNoGun;

}
if (!place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.fallNoGun;
}

if (armedAndDangerous)
{
    currentState = playerStates.idleGun;

}

//Animation
sprite_index = spr_player_walk_gun;

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

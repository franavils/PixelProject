//Animation
sprite_index = spr_player_fall;
//Get the player's input
scr_get_input();

//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();



//Exists

if (place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.idleNoGun;
}

if (armedAndDangerous)
{
    currentState = playerStates.fallGun;

}

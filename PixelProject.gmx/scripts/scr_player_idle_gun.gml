//Animation
sprite_index = spr_player_idle_gun;
image_speed = fatigue;

if (image_speed <= 0)
{
    image_index = 0;
}
//Get the player's input
scr_get_input();
//Shooting
scr_player_shooting();
//React to inputs
scr_player_movement();

//Collisions
scr_player_collisions();

if (fatigue > 0)
    {
        fatigue -= 0.0002;
    
    }



//Exists
if (move != 0) 
{
    currentState = playerStates.walkGun;

}
if (!place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.fallGun;
}

if (!armedAndDangerous)
{
    currentState = playerStates.idleNoGun;

}

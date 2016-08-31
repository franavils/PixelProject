//Animation
sprite_index = spr_player_fall_gun;
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

if (place_meeting(x,y+1,obj_block)) 
{
    currentState = playerStates.idleGun;
}

if (!armedAndDangerous)
{
    currentState = playerStates.fallNoGun;

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


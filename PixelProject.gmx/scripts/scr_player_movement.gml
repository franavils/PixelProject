
//Jump
grav = 0.4;
if (place_meeting(x,y+1,obj_block))
{
    if (key_jump) vsp = -jumpspeed;
}

if (move != 0) 
{
        
        image_xscale = move;
        if (fatigue < 0.1)
        {
            fatigue += 0.0005;
        
        }

}

//Falling
if (vsp < 10) vsp += grav;

//Ammo check
if (ammo > 0)
    {
    armedAndDangerous = true;    
    }
    else 
    {
    armedAndDangerous = false;
    }
    

//Pick-up
if (place_meeting (x, y , obj_gun))
{
    ammo += 4;
    with (obj_gun) instance_destroy();
    

}


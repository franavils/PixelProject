//dir = sign(obj_player.x -x);
hsp = dir * (movespeed + 1);
vsp += grav;

if (hsp < 0)
    {
    image_xscale = 1;
    } else if (hsp > 0)
    {
    image_xscale = -1;
    }

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_block))
{
    while(!place_meeting(x+sign(hsp),y,obj_block))
    {
        x += sign(hsp);
    }
    hsp = 0;
    
    dir *= -1;
    
    
    
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_block))
{
    while(!place_meeting(x,y+sign(vsp),obj_block))
    {
        y += sign(vsp);
    }
    vsp = 0;
    if (fearofheights) && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2), obj_block)
    {
        dir*= -1;
    }
    
}
y += vsp;

//Player escapes
 if (distance_to_object(obj_player) > areaDetection + 20 || obj_player.hidden = true) 
 {
    currentState = enemyStates.idle;
 }



//Enemy killing
if (place_meeting (x, y, obj_player) && obj_player.hidden = false)
{
    if (obj_player.y < y-12)
    {
        with (obj_player) vsp = -jumpspeed;
        instance_destroy();
    }
    else 
    {
        scr_death();
    }

}

//Flip and animations

//Life and death
if (hp <= 0) 
{
    instance_destroy();

}

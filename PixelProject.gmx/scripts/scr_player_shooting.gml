
if (key_shoot)
{
    bullet = instance_create(x + sprite_width/2 ,y+6, obj_bullet);
    ammo -= 1;
    
    if (image_xscale = 1)
    {
    hsp -= back;
    bullet.direction = 0;
    } else 
    {
    hsp += back;
    bullet.direction = 180;
    }
    
} 




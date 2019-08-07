if getstomp and stomped != false
    {
    instance_destroy()
    with instance_create(x,y,stomped)
        {
        if vsp == 0 vsp = other.vsp
        if hsp == 0
            {
            hsp = other.hsp
            facing = other.facing
            }
        }
    }

if getstomp and stomped != false
    {
    instance_destroy()
    with instance_create(x,y,stomped)
        {
        vsp = other.vsp
        hsp = other.hsp
        facing = other.facing
        }
    }

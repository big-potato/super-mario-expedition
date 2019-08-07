if getstomp and bounce != false
    {
    mario.vsp = -bounce
    with mario
        {
        while place_meeting(x,y,other) and !place_meeting(x,y-0.1,block)
            {
            y -= 0.1
            }
        }
    }

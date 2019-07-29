hsp = 0
vsp = 0
if pipedir == "down"
    {
    vsp = 1
    y += 2
    if place_meeting(x,y,pipev) pip = instance_place(x,y,pipev)
    x += sign((pip.bbox_left+pip.bbox_right)-(bbox_left+bbox_right))
    }
if pipedir == "up"
    {
    vsp = -1
    y += -2
    if place_meeting(x,y,pipev) pip = instance_place(x,y,pipev)
    x += sign((pip.bbox_left+pip.bbox_right)-(bbox_left+bbox_right))
    }
if pipedir == "right"
    {
    hsp = 1
    facing = 1
    x += 2
    if place_meeting(x,y,pipeh) pip = instance_place(x,y,pipeh)
    y += sign((pip.bbox_top+pip.bbox_bottom)-(2*y+sprite_height-2*sprite_get_yoffset(sprite_index))) 
    }
if pipedir == "left"
    {
    hsp = 1
    facing = -1
    x += -2
    if place_meeting(x,y,pipeh) pip = instance_place(x,y,pipeh)
    y += sign((pip.bbox_top+pip.bbox_bottom)-(2*y+sprite_height-2*sprite_get_yoffset(sprite_index)))
    }
            
if place_meeting(x,y,pipec)
    {
    pip = instance_place(x,y,pipec)
    x += (pip.bbox_left+pip.bbox_right)/2-(bbox_left+bbox_right)/2
    y += (pip.bbox_top+pip.bbox_bottom)/2-(2*y+sprite_height-2*sprite_get_yoffset(sprite_index))/2
    if pip.sides == 2
        {
        if pipedir == "down" or pipedir == "up"
            {
            if pip.left
                {
                pipedir = "left"
                while place_meeting(x,y,pip) x--
                }
            else if pip.right
                {
                pipedir = "right"
                while place_meeting(x,y,pip) x++
                }
            }
        else
            {
            if pip.up
                {
                pipedir = "up"
                while place_meeting(x,y,pip) y--
                }
            else if pip.down
                {
                pipedir = "down"
                while place_meeting(x,y,pip) y++
                }
            }
        }
    else
        {
        if left and pip.left
            {
            pipedir = "left"
            while place_meeting(x,y,pip) x--
            }
        else if right and pip.right
            {
            pipedir = "right"
            while place_meeting(x,y,pip) x++
            }
        else if down and pip.down
            {
            pipedir = "down"
            while place_meeting(x,y,pip) y++
            }
        else if up and pip.up
            {
            pipedir = "up"
            while place_meeting(x,y,pip) y--
            }
        }
    }

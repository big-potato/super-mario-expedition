if !place_meeting(x+argument0*facing,y,block) and !collision_rectangle(bbox_left,bbox_top,bbox_left+argument0*facing,bbox_bottom,block,false,false)
    {
    x += argument0*facing
    }
else
    {
    moved = 0
    while moved + 1/10 < abs(argument0) and !place_meeting(x+sign(argument0)*facing/10,y,block)
        {
        x += sign(argument0)*facing/10
        moved += 1/10
        }
    }
if place_meeting(x+sign(argument0)*facing/10,y,block) hsp = 0

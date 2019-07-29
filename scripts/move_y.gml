if !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top+argument0,block,false,false) and !place_meeting(x,y+argument0,block,) and (argument0<=0 or !collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1+argument0,through,false,false))
    {
    y += argument0
    }
else
    {
    moved = 0
    while moved+1/10 < abs(argument0) and !place_meeting(x,y+sign(argument0)/10,block) and (argument0<=0 or !collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1+sign(argument0)/10,through,false,false))
        {
        y += sign(argument0)/10
        moved += 1/10
        }
    }
if place_meeting(x,y+sign(argument0)/10,block) or (argument0>0 and collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1+sign(argument0)/10,through,false,false)) vsp = 0

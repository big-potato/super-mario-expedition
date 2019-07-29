if !place_meeting(x,y,pipe)
        {
        if left and position_meeting(bbox_left-1,bbox_top,pipeh) and position_meeting(bbox_left-1,bbox_bottom-1,pipeh)
            {
            state = "piping"
            pipedir = "left"
            }
        
        if right and position_meeting(bbox_right+1,bbox_top,pipeh) and position_meeting(bbox_right+1,bbox_bottom-1,pipeh)
            {
            state = "piping"
            pipedir = "right"
            }
        
        if up and position_meeting(bbox_left,bbox_top-1,pipev) and position_meeting(bbox_right,bbox_top-1,pipev)
            {
            state = "piping"
            pipedir = "up"
            }
        
        if down and position_meeting(bbox_left,bbox_bottom+1,pipev) and position_meeting(bbox_right,bbox_bottom+1,pipev)
            {
            state = "piping"
            pipedir = "down"
            }
        }

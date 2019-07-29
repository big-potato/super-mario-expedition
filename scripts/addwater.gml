xx = argument0
yy = argument1
amount = argument2
if !place_meeting(xx,yy,block)
    {
    if !place_meeting(xx,yy,water) instance_create(xx,yy,water)
    depositing = instance_place(xx,yy,water)
    depositing.value += amount
    value -= amount
    if value < 16
        {
        solid = 0
        if place_meeting(x+16,y,water)
            {
            w = instance_place(x+16,y,water)
            w.inert = 0
            }
        if place_meeting(x-16,y,water)
            {
            w = instance_place(x-16,y,water)
            w.inert = 0
            }
        if place_meeting(x,y-16,water)
            {
            w = instance_place(x,y-16,water)
            w.inert = 0
            }
        }
    else solid = 1
    if depositing.value >= 16
        {
        depositing.solid = true
        with depositing addwater(x,y-16,value-16)
        }
    else
        {
        }
    inert = 0
    depositing.inert = 0
    }

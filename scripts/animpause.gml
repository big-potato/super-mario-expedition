if !variable_instance_exists(id,"frames") frames = image_speed
if global.menu
    {
    if image_speed != 0 frames = image_speed
    image_speed = 0
    }
else if image_speed == 0 image_speed = frames

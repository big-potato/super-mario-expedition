if mario.alarm[0] <= 0
    {
    audio_play_sound(sfx_hurt,0,false)
    mario.hp --
    mario.alarm[0] = 60
    }

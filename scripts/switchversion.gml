track = argument0
trackposition = audio_sound_get_track_position(music)
audio_stop_sound(music)
if global.menu audio_pause_all()
else audio_resume_all()
music = audio_play_sound(track,0,true)
audio_sound_set_track_position(music,trackposition)

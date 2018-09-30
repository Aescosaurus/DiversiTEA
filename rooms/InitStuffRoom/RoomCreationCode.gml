// "E" for Easy, "M" for Medium, "H" for hard
global.GAME_DIFFICULTY = "M"

// Achievements
global.ACHIEVED_KILL_ENEMY = false
global.ACHIEVED_GET_COIN = false
global.ACHIEVED_KILL_BOSS = false

// Player sprite
global.PLAYER_SPRITE = PlayerSpr

// Game speed and volume (settings)
global.GAME_SPEED = 1.0
global.MUSIC_VOL = 1.0
global.SOUND_VOL = 1.0

audio_play_sound( bgMusic,100,true )

// room_goto( TitleScreen )
room_goto_next()
extends Node

@onready var menu: AudioStreamPlayer = $Menu
@onready var background: AudioStreamPlayer = $background
@onready var audio_player: AudioStreamPlayer = $AudioStreamPlayer

func stop_music():
	if audio_player and audio_player.playing:
		audio_player.stop()

func play_music():
	menu.play()

func play_bg():
	background.play()

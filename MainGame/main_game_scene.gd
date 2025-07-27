extends Node



func _ready() -> void:
	$Stage/AnimationPlayer.play("Open")

func next_minigame() -> void:
	$Stage/AnimationPlayer.play("Fade")
	await $Stage/AnimationPlayer.animation_finished
	# change minigame here
	$Stage/AnimationPlayer.play_backwards("Fade")

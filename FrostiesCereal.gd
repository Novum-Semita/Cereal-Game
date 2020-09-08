extends Area2D

signal cereal_collected

func _on_FrostiesCereal_body_entered(body):
	$SoundCereal.play()
	$AnimationPlayer.play("Still")
	emit_signal("cereal_collected")
	set_collision_mask_bit(0,false)


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()

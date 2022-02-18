extends Node2D
var c = 0
var sound = null
func ready():
	$Tween.interpolate_property(self, "scale", Vector2(0,0), Vector2(1,1),0.25, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	if sound == null:
		sound = get_node_or_null("/root/Game/3")
	if sound != null:
		sound.play()
	$Tween.interpolate_property(self, "global_position", global_position, Vector2(20,15),0.75, Tween.TRANS_EXPO, Tween.EASE_IN,0.25)
	$Tween.start()
	$Tween.interpolate_property(self, "scale", Vector2(1,1), Vector2(0.2,0.25),0.5, Tween.TRANS_EXPO, Tween.EASE_IN,0.25)
	$Tween.start()
	$Tween.interpolate_property(self, "modulate:a", 1.0,0.0,2, Tween.TRANS_EXPO, Tween.EASE_IN,0.25)
	$Tween.start()
	
	
func _physics_process(delta):
	$Highlight.modulate.a = (sin(c)/2)+0.5
	c+=0.5
	

func _on_Timer_timeout():
	queue_free()

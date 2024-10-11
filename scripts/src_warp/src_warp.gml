function warp(target_room) {
	var transition = instance_create_layer(0, 0, "Utilities", o_transition)
	transition.target_room = target_room
}
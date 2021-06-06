global.Level = clamp(global.Level + keyboard_check_pressed(vk_up)
								+keyboard_check_pressed(vk_right)
								-keyboard_check_pressed(vk_down)
								-keyboard_check_pressed(vk_left),1,7);
								
if(keyboard_check_pressed(vk_enter))
	room_goto(asset_get_index("rm_"+string(global.Level)));
x += keyboard_check_pressed(vk_right)*24*place_meeting(x+24,y,objObstacle) 
	- keyboard_check_pressed(vk_left)*24*place_meeting(x-24,y,objObstacle);
/*+ mouse_check_button_pressed(mb_left)*(sign(mouse_x-x)*24)*sign(max(abs(mouse_x-x)-64,0))*sign(max(abs(mouse_x-x)-abs(mouse_y-y),0))*place_meeting(x+sign(mouse_x-x)*24,y,obj_building)*/

y += keyboard_check_pressed(vk_down)*24*place_meeting(x,y+24,objObstacle) 
	- keyboard_check_pressed(vk_up)*24*place_meeting(x,y-24,objObstacle);
/*+ mouse_check_button_pressed(mb_left)*(sign(mouse_y-y)*24)*sign(max(abs(mouse_y-y)-64,0))*sign(max(abs(mouse_y-y)-abs(mouse_x-xprevious),0))*place_meeting(x,y+sign(mouse_y-y)*24,obj_building)*/

sprite_index = (keyboard_check_pressed(vk_right))*sprPlayerRight 
			+ (keyboard_check_pressed(vk_left))*sprPlayerLeft 
			+ (keyboard_check_pressed(vk_down))*sprPlayerDown 
			+ (keyboard_check_pressed(vk_up))*sprPlayerUp + sprite_index-sprite_index*(keyboard_check_pressed(vk_right) 
																						+ keyboard_check_pressed(vk_left) 
																						+ keyboard_check_pressed(vk_down) 
																						+ keyboard_check_pressed(vk_up));
instance_destroy(instance_place(x,y,objObstacle)); 

if(!instance_exists(objObstacle) && alarm[0] < 0)
	alarm[0] = room_speed;
if(keyboard_check_pressed(vk_escape))
	room_goto(rm_start);
if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("R")))
	room_restart();


/// @description Insert description here
// You can write your code in this editor
if (save = 1 and obj_game_controller.save1 !="") or (save = 2 and obj_game_controller.save2 !="") or (save = 3 and obj_game_controller.save3 !=""){
	obj_game_controller.save = save
	room_goto(Room1)
}
else{
	obj_game_controller.save = save
	room_goto(Room_world_settings)	
}
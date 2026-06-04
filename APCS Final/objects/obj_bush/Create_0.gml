/// @description Insert description here
// You can write your code in this editor
check = 0
function check_spr() {
	if stage = 1 {
		sprite_index = spr_bush_l1
	}
	else if stage = 2 {
		sprite_index = spr_bush_l2
	}
	else if stage = 3 {
		sprite_index = spr_bush_l3
	}
	else if stage = 4 {
		sprite_index = spr_bush_l4
	}
	else if stage = 5 {
		sprite_index = spr_bush_l5
	}
}




stage = irandom(5)
check_spr() 


grow_timer = irandom(71)

name="i am a bush"
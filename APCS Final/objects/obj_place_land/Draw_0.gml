/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(1)
if action = 0 {
	draw_set_colour(c_green)
}
if action = 1 {
	draw_set_colour($006611)
}
if action = 2 {
	draw_set_colour(c_olive)
}
if action = 3 {
	draw_set_colour(c_gray)
}
if action = 4 {
	draw_set_colour(c_white)
}
if action = 5 {
	draw_set_colour($33AAFF)
}
if action = 6 {
	draw_set_colour(c_yellow)
}
if action = 7 {
	draw_set_colour(c_blue)
}
if action = 8 {
	draw_set_colour($FFAA33)
}


size = 25*image_xscale
draw_rectangle(x-(size/2),y-(size/2),x+(size/2),y+(size/2),c_black)
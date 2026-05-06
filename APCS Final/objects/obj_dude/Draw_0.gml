if smart = 1 {
	draw_set_colour(c_fuchsia)
}
if smart = 2 {
	draw_set_colour(c_black)
}
draw_circle(x, y, 50, false)
draw_rectangle(targetX-50, targetY-50, targetX+50, targetY+50, true)
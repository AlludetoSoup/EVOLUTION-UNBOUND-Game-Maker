if sex = 1{draw_set_colour(c_blue)}
else{draw_set_color(c_red)}
draw_path(path, pathx, pathy, true)
draw_circle(x, y, sight*100,true)
draw_circle_colour(x, y, smell*100, c_red, c_orange, true)
draw_circle_colour(x, y, intuition*100, c_red, c_yellow, true)
draw_self()

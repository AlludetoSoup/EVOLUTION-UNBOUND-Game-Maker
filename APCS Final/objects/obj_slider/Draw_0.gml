draw_self()
draw_set_colour(c_black)
mult=(obj_camera.size/2000)
center=obj_camera.y
mult=obj_camera.size/2000
if yfinal=5{y__=center-450*mult}
if yfinal=4{y__=center-300*mult}
if yfinal=3{y__=center-100*mult}
if yfinal=2{y__=center+100*mult}
if yfinal=1{y__=center+300*mult}
if yfinal=0{y__=center+450*mult}
draw_rectangle(x-40*mult,y__+10*mult,x+40*mult,y__-10*mult,false)
show_debug_message(obj_camera.size)
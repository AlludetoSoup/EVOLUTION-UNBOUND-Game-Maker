targetX = x;
targetY = y;
wait_timer = 0;
waiting = false;
smart = irandom_range(1,2)
show_debug_message(smart)
if smart = 1 {global.smartnum++;}
if smart = 2 {global.dumbnum++;}
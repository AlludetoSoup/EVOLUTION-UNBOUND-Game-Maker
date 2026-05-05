if (waiting) {
    wait_timer++;
    if (wait_timer >= 180) {
        wait_timer = 0;
        waiting = false;
		movex = irandom_range(-3, 3);
		movey = irandom_range(-3, 3);
        targetX = x + movex
        targetY = y + movey
		targetX = clamp(targetX, 100, 9900)
        targetY = clamp(targetY, 100, 9900)
		show_debug_message(string(movex)+","+string(movey))
    }
} else {
    var dist = point_distance(x, y, targetX, targetY);
    if (dist < 2) {
        x = targetX;
        y = targetY;
        var tile = worldgen.terrainGrid[# floor(x / 100), floor(y / 100)];
		show_debug_message(string(tile + " " + string(x) + "," + string(y)))
        if (tile == "forest" or tile == "tundra") {
            var cellX = floor(x / 100);
			var cellY = floor(y / 100);
			show_debug_message("attempted swap from "+tile+" to sand at "+string(cellX)+","+string(cellY)+".") 
			with (worldgen) {
			    terrainGrid[# cellX, cellY] = "sand";
				biomeGrid[# cellX, cellY] = "desert";
			}
			show_debug_message("tile is now "+worldgen.terrainGrid[# floor(x / 100), floor(y / 100)]+".")
        }
        waiting = true;
    } else {
		move_towards_point(targetX, targetY, 10)
    }
}
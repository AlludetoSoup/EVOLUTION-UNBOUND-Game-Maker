if (waiting) {
    wait_timer++;
    if (wait_timer >= 180) {
        wait_timer = 0;
        waiting = false;
        
        var attempts = 0;
		if smart = 1 {
	        do {
	            targetX = x + irandom_range(-300, 300);
	            targetY = y + irandom_range(-300, 300);
	            targetX = clamp(targetX, 100, 9900);
	            targetY = clamp(targetY, 100, 9900);
	            attempts++;
			
	        } until ((point_distance(x, y, targetX, targetY) > 20 and (worldgen.terrainGrid[# floor(targetX/100), floor(targetY/100)] = "tundra" or worldgen.terrainGrid[# floor(targetX/100), floor(targetY/100)] = "forest")) or attempts > 50);
		}
		else {
			do {
	            targetX = x + irandom_range(-300, 300);
	            targetY = y + irandom_range(-300, 300);
	            targetX = clamp(targetX, 100, 9900);
	            targetY = clamp(targetY, 100, 9900);
	            attempts++;
			
	        } until (point_distance(x, y, targetX, targetY) > 20 or attempts > 10);
		}
	}
} else {
    var dist = point_distance(x, y, targetX, targetY);
    if (dist < 10) {
        x = targetX;
        y = targetY;
        var cellX = floor(x / 100);
        var cellY = floor(y / 100);
        var tile = worldgen.terrainGrid[# cellX, cellY];
        if (tile == "forest" or tile == "tundra") {
			if smart = 1 {
	            with (worldgen) {
	                terrainGrid[# cellX, cellY] = "sand";
					biomeGrid[# cellX, cellY] = "smartdesert";
	            }
			} else {
				with (worldgen) {
	                terrainGrid[# cellX, cellY] = "sand";
					biomeGrid[# cellX, cellY] = "dumbdesert";
	            }
			}
        }
        waiting = true;
        wait_timer = 0;
    } else {
        move_towards_point(targetX, targetY, 10);
    }
}
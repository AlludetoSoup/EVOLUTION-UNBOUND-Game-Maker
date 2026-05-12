/// @description Insert description here
// You can write your code in this editor
var tileSize = 100;

//custom colors
var c_dark_green = $006611
var c_puke_green = $447711
var c_light_blue = $FFAA33
var c_sand = $33AAFF
draw_set_alpha(1)
for (var cellX = 0; cellX < gridWidth; cellX++) {
    for (var cellY = 0; cellY < gridHeight; cellY++) {

        var tileType = biomeGrid[# cellX, cellY];

        var drawX = cellX * tileSize;
        var drawY = cellY * tileSize;

        switch (tileType) {
            case "cold ocean":
                draw_set_color(c_blue);
                break;
			case "warm ocean":
                draw_set_color(c_light_blue);
                break;
            case "tundra":
                draw_set_color(c_dark_green);
                break;
			case "forest":
                draw_set_color(c_green);
                break;
            case "savanna":
                draw_set_color(c_olive);
                break;
            case "mountain":
                draw_set_color(c_gray);
                break;
			case "snow":
                draw_set_color(c_white);
                break;
			case "desert":
                draw_set_color(c_sand);
                break;
			case "beach":
                draw_set_color(c_yellow);
                break;
        }

        draw_rectangle(drawX, drawY, drawX + tileSize, drawY + tileSize, false);
    }
}






for (var cellX = 0; cellX < gridWidth/5; cellX++) {
    for (var cellY = 0; cellY < gridHeight/5; cellY++) {

        var tileType = cloudGrid[# cellX, cellY];

        var drawX = cellX * tileSize*5;
        var drawY = cellY * tileSize*5;
		show_debug_message(cloudGrid[# cellX, cellY])
		draw_set_alpha(cloudGrid[# cellX, cellY])
		draw_set_colour(c_white)

        draw_rectangle(drawX, drawY, drawX + tileSize*5, drawY + tileSize*5, false);
    }
}



for (var cellX = 0; cellX < gridWidth/5; cellX++) {
    for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		var drawX = cellX * tileSize*5;
        var drawY = cellY * tileSize*5;
		draw_set_colour(c_blue)
        if rainingGrid[# cellX, cellY] = true { 

			draw_rectangle(drawX, drawY, drawX + tileSize*5, drawY + tileSize*5, false);
		}
    }
}
/// @description Insert description here
// You can write your code in this editor
world_size = 10000
room_set_width(Room1,world_size)
room_set_height(Room1,world_size)
randomise()
//x=0
//y=0
//for (var i = 0; i < (world_size/100)*(world_size/100); i+=1) {
//x+=100
//if i%(world_size/100) = 0 and i !=0{
//	y+=100
//	x=0
//}
//if irandom_range(1, 2) = 1{
//instance_create_layer(x,y,"Ground",obj_water)	
//}
//else{
//	instance_create_layer(x,y,"Ground",obj_grass)
//}}

function fade(t) {
    return t * t * t * (t * (t * 6 - 15) + 10);
}
function lerp(a, b, t) {
    return a + t * (b - a);
}

function grad(hash, x, y) {
    var h = hash & 3;
    var u = (h < 2) ? x : y;
    var v = (h < 2) ? y : x;
    return ((h & 1) ? -u : u) + ((h & 2) ? -v : v);
}
global.perm = array_create(512);

var p = [];
for (var i = 0; i < 256; i++) {
    p[i] = i;
}


for (var i = 255; i > 0; i--) {
    var j = irandom(i);
    var temp = p[i];
    p[i] = p[j];
    p[j] = temp;
}


for (var i = 0; i < 256; i++) {
    global.perm[i] = p[i];
    global.perm[i + 256] = p[i];
}
function perlin(x, y) {
    var xi = floor(x) & 255;
    var yi = floor(y) & 255;

    var xf = x - floor(x);
    var yf = y - floor(y);

    var u = fade(xf);
    var v = fade(yf);

    var aa = global.perm[global.perm[xi] + yi];
    var ab = global.perm[global.perm[xi] + yi + 1];
    var ba = global.perm[global.perm[xi + 1] + yi];
    var bb = global.perm[global.perm[xi + 1] + yi + 1];

    var x1 = lerp(grad(aa, xf, yf), grad(ba, xf - 1, yf), u);
    var x2 = lerp(grad(ab, xf, yf - 1), grad(bb, xf - 1, yf - 1), u);

    return lerp(x1, x2, v);
}
var scale = 0.05;

for (var X = 0; X < 256; X++) {
    for (var Y = 0; Y < 256; Y++) {
        var n = perlin(X * scale, Y * scale);

        n = (n + 1) * 0.5;

        var col = make_color_rgb(n * 255, n * 255, n * 255);
        draw_point_color(x, y, col);
    }
}

function perlin_octaves(x, y, octaves, persistence, frequency) {
    var total = 0;
    var amplitude = 1;
    var maxValue = 0;

    for (var i = 0; i < octaves; i++) {
        total += perlin(x * frequency, y * frequency) * amplitude;
        maxValue += amplitude;

        amplitude *= persistence;
        frequency *= 2;
    }

    return total / maxValue;
}


gridWidth = world_size/100;
gridHeight = world_size/100;

terrainGrid = ds_grid_create(gridWidth, gridHeight)
tempGrid = ds_grid_create(gridWidth, gridHeight)
biomeGrid = ds_grid_create(gridWidth, gridHeight)

var noiseScale = 0.08;

for (var cellX = 0; cellX < gridWidth; cellX++) {
    for (var cellY = 0; cellY < gridHeight; cellY++) {

        var noiseValue = perlin_octaves(cellX * noiseScale, cellY * noiseScale,8, 0.5,0.5);

        noiseValue = (noiseValue + 1) * 0.5;

        terrainGrid[# cellX, cellY] = noiseValue;
    }
}

for (var cellX = 0; cellX < gridWidth; cellX++) {
    for (var cellY = 0; cellY < gridHeight; cellY++) {

        var value = terrainGrid[# cellX, cellY];

        if (value < 0.4) {
            terrainGrid[# cellX, cellY] = "water";
        }
        else if (value < 0.43) {
            terrainGrid[# cellX, cellY] = "sand";
        }
        else if (value < 0.62) {
            terrainGrid[# cellX, cellY] = "grass";
        }
        else if (value < 0.75){
            terrainGrid[# cellX, cellY] = "mountain";
        }
		else {
            terrainGrid[# cellX, cellY] = "snow";
        }
    }
}


function check_square(X,Y){
	var tile=  terrainGrid[# X,Y]
	
	switch (tile) {
		case "water":
			return 0
		case "sand":
                return 1
         case "grass":
                return 2
		case "mountain":
                return 3
		case "snow":
                return 4
}
}

fixed = 0

//fix world gen

//order is water, sand, grass, mountain, snow
show_debug_message("starting double check")
for (var l = 0; l < 10; l++){

		for (var cellX = 0; cellX < gridWidth; cellX++) {
		    for (var cellY = 0; cellY < gridHeight; cellY++) {
				order = [0,0,0,0,0]
				if cellX > 0 {
					order[check_square(cellX-1,cellY)] +=1
				}
				if cellX < (world_size/100)-1 {
					order[check_square(cellX+1,cellY)] +=1
				}
				if cellY > 0 {		
					order[check_square(cellX,cellY-1)] +=1
				}
				if cellY < (world_size/100)-1 {
					order[check_square(cellX,cellY+1)] +=1
				}
		
				if cellX > 0 and cellY > 0 {
					order[check_square(cellX-1,cellY-1)] +=1
				}
				if cellX < (world_size/100)-1 and cellY < (world_size/100)-1 {
					order[check_square(cellX+1,cellY+1)] +=1	
				}
				if cellX > 0 and cellY < (world_size/100)-1 {
					order[check_square(cellX-1,cellY+1)] +=1	
				}
				if cellX < (world_size/100)-1 and cellY > 0 {
					order[check_square(cellX+1,cellY-1)] +=1	
				}
				if cellY = 2  and cellX = 2{
				}
		
				most = 0
				loc = 0
				for (var i =0; i <5;i++) {
					if order[i] > most {
						most = order[i]
						loc = i
					}
				}
				if cellY = 2  and cellX = 2{
				}

				if most >= 5 {
					if 	loc = 0{
						if terrainGrid[# cellX, cellY]!= "water" {
						terrainGrid[# cellX, cellY] = "water"	
						fixed += 1
						}
					}
					if 	loc = 1{
						if terrainGrid[# cellX, cellY]!= "sand" {
						terrainGrid[# cellX, cellY] = "sand"
						fixed += 1
						}
					}
					if 	loc = 2{
						if terrainGrid[# cellX, cellY]!= "grass" {
						terrainGrid[# cellX, cellY] = "grass"
						fixed += 1
						}
					}
					if 	loc = 3{
						if terrainGrid[# cellX, cellY]!= "mountain" {
						terrainGrid[# cellX, cellY] = "mountain"
						fixed += 1
						}
					}
					if 	loc = 4{
						if terrainGrid[# cellX, cellY]!= "snow" {
						terrainGrid[# cellX, cellY] = "snow"
						fixed += 1
						}
					}
				}
				order = [0,0,0,0,0]
		
			}
		}
}





scale = 0.05;

for (var X = 0; X < 256; X++) {
    for (var Y = 0; Y < 256; Y++) {
        var n = perlin(X * scale, Y * scale);

        n = (n + 1) * 0.5;

        var col = make_color_rgb(n * 255, n * 255, n * 255);
        draw_point_color(x, y, col);
    }
}

global.perm = array_create(512);

var p = [];
for (var i = 0; i < 256; i++) {
    p[i] = i;
}


for (var i = 255; i > 0; i--) {
    var j = irandom(i);
    var temp = p[i];
    p[i] = p[j];
    p[j] = temp;
}


for (var i = 0; i < 256; i++) {
    global.perm[i] = p[i];
    global.perm[i + 256] = p[i];
}

for (var cellX = 0; cellX < gridWidth; cellX++) {
    for (var cellY = 0; cellY < gridHeight; cellY++) {

        var noiseValue = perlin_octaves(cellX * noiseScale, cellY * noiseScale,8, 0.5,0.2);

        noiseValue = (noiseValue + 1) * 0.5;

        tempGrid[# cellX, cellY] = noiseValue;
    }
}


for (var cellX = 0; cellX < gridWidth; cellX++) {
    for (var cellY = 0; cellY < gridHeight; cellY++) {

        var temp = tempGrid[# cellX, cellY];
		if terrainGrid[# cellX, cellY] = "water" {
			if (temp < 0.65){
				biomeGrid[# cellX, cellY] = "cold ocean"
	        }
			else {
	            biomeGrid[# cellX, cellY] = "warm ocean"
	        }
		}
		else if terrainGrid[# cellX, cellY] = "grass" {
			if (temp < 0.4){
				biomeGrid[# cellX, cellY] = "tundra"
	        }
			else if (temp < 0.58){
				biomeGrid[# cellX, cellY] = "forest"
	        }
			else if (temp < 0.65){
				biomeGrid[# cellX, cellY] = "savanna"
	        }
			else {
	            biomeGrid[# cellX, cellY] = "desert"
	        }
		}
		else if terrainGrid[# cellX, cellY] = "sand" {
			biomeGrid[# cellX, cellY] = "beach"
		}
		else if terrainGrid[# cellX, cellY] = "mountain" {
			biomeGrid[# cellX, cellY] = "mountain"
		}
		else if terrainGrid[# cellX, cellY] = "snow" {
			biomeGrid[# cellX, cellY] = "snow"
		}
    }
}


function check_square_B(X,Y){
	var tile=  biomeGrid[# X,Y]
	switch (tile) {
		case "cold ocean":
			return 0
         case "warm ocean":
                return 1
		case "tundra":
                return 2
		case "forest":
                return 3
		case "savanna":
				return 4
		case "mountain":
				return 5
		case "snow":
				return 6
		case "desert":
				return 7
		case "beach":
				return 8
			
}
}


show_debug_message("starting double check for biomes")
for (var l = 0; l < 1; l++){

		for (var cellX = 0; cellX < gridWidth; cellX++) {
		    for (var cellY = 0; cellY < gridHeight; cellY++) {
				order = [0,0,0,0,0,0,0,0,0]
				if cellX > 0 {
					order[check_square_B(cellX-1,cellY)] +=1
				}
				if cellX < (world_size/100)-1 {
					order[check_square_B(cellX+1,cellY)] +=1
				}
				if cellY > 0 {		
					order[check_square_B(cellX,cellY-1)] +=1
				}
				if cellY < (world_size/100)-1 {
					order[check_square_B(cellX,cellY+1)] +=1
				}
		
				if cellX > 0 and cellY > 0 {
					order[check_square_B(cellX-1,cellY-1)] +=1
				}
				if cellX < (world_size/100)-1 and cellY < (world_size/100)-1 {
					order[check_square_B(cellX+1,cellY+1)] +=1	
				}
				if cellX > 0 and cellY < (world_size/100)-1 {
					order[check_square_B(cellX-1,cellY+1)] +=1	
				}
				if cellX < (world_size/100)-1 and cellY > 0 {
					order[check_square_B(cellX+1,cellY-1)] +=1	
				}
				if cellY = 2  and cellX = 2{
				}
		
				most = 0
				loc = 0
				for (var i =0; i <7;i++) {
					if order[i] > most {
						most = order[i]
						loc = i
					}
				}
				if cellY = 2  and cellX = 2{
				}

				if most >= 6 {
					if 	loc = 0{
						if terrainGrid[# cellX, cellY]!= "cold_ocean" {
						terrainGrid[# cellX, cellY] = "cold_ocean"
						fixed += 1
						}
					}
					if 	loc = 1{
						if terrainGrid[# cellX, cellY]!= "warm_ocean"{
						terrainGrid[# cellX, cellY] = "warm_ocean"
						fixed += 1
						}
					}
					if 	loc = 2{
						if terrainGrid[# cellX, cellY]!= "tundra"{
						terrainGrid[# cellX, cellY] = "tundra"	
						fixed += 1
						}
					}
					if 	loc = 3{
						if terrainGrid[# cellX, cellY]!= "forest"{
						terrainGrid[# cellX, cellY] = "forest"
						fixed += 1
						}
					}
					if 	loc = 4{
						if terrainGrid[# cellX, cellY]!= "savanna"{
						terrainGrid[# cellX, cellY] = "savanna"
						fixed += 1
						}
					}
					if 	loc = 5{
						if terrainGrid[# cellX, cellY]!= "mountain"{
						terrainGrid[# cellX, cellY] = "mountain"
						fixed += 1
						}
					}
					if 	loc = 6{
						if terrainGrid[# cellX, cellY]!= "snow"{
						terrainGrid[# cellX, cellY] = "snow"
						fixed += 1
						}
					}
					if 	loc = 7{
						if terrainGrid[# cellX, cellY]!= "desert"{
						terrainGrid[# cellX, cellY] = "desert"
						fixed += 1
						}
					}
					if 	loc = 8{
						if terrainGrid[# cellX, cellY]!= "beach"{
						terrainGrid[# cellX, cellY] = "beach"
						fixed += 1
						}
					}
				}
				order = [0,0,0,0,0,0,0,0,0]
		
			}
		}
}	
show_debug_message("Fixed ")
show_debug_message(fixed)
show_debug_message(" Mistakes")	
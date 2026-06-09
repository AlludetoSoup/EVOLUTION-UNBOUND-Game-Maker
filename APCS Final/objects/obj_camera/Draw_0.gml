/// @description Insert description here
// You can write your code in this editor

if spect {

draw_set_font(font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_colour(x+600,y-900,string_concat(string(obj_camera.spect_inst.name)),c_black,c_black,c_black,c_black,1)
draw_set_font(font)
draw_text_colour(x+600,y-800,string_concat("Health: ",string(obj_camera.spect_inst.Health)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-725,string_concat("Age: ",string(obj_camera.spect_inst.age)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-650,string_concat("Hunger: ",string(obj_camera.spect_inst.hungry)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-575,string_concat("IQ: ",string(obj_camera.spect_inst.intelligence)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-500,string_concat("Sex: ",string(obj_camera.spect_inst.sex)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-425,string_concat("Current Mate: ",string(obj_camera.spect_inst.bred),", Unable to Breed: ",string(obj_camera.spect_inst.breed_mate)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-350,string_concat("Curiosity: ",string(obj_camera.spect_inst.curiosity)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-275,string_concat("Number of Children: ",string(obj_camera.spect_inst.children_num)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-200,string_concat("Accuracy: ",string(obj_camera.spect_inst.accuracy)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-125,string_concat("Agility: ",string(obj_camera.spect_inst.agility)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y-50,string_concat("Breathing Type: ",string(obj_camera.spect_inst.breath)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+25,string_concat("Fertile Age: ",string(obj_camera.spect_inst.fertile_age)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+100,string_concat("Hunger Speed: ",string(obj_camera.spect_inst.hungerspeed)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+175,string_concat("Intuition: ",string(obj_camera.spect_inst.intuition)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+250,string_concat("Lifespan: ",string(obj_camera.spect_inst.lifespan)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+325,string_concat("Muscle Mass: ",string(obj_camera.spect_inst.muscle_mass_limb)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+400,string_concat("Speed: ",string(obj_camera.spect_inst.pathspeed)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+475,string_concat("Sight: ",string(obj_camera.spect_inst.sight)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+550,string_concat("Skin: ",string(obj_camera.spect_inst.skin)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+625,string_concat("Skin Extrusions: ",string(obj_camera.spect_inst.skin_extrusion)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+700,string_concat("Smell: ",string(obj_camera.spect_inst.smell)),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+600,y+775,string_concat("Strength: ",string(obj_camera.spect_inst.strength)),c_black,c_black,c_black,c_black,1)

}


draw_set_font(font3)
draw_text_colour(x-(950*(obj_camera.size/2000)),y+(925*(obj_camera.size/2000)),string_concat("Population: ",string(instance_number(obj_animal))),c_black,c_black,c_black,c_black,1)
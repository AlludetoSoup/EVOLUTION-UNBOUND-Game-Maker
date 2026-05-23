// 1. Setup your prompt text (No punctuation symbols)
var animal_description = "penguin";
var base_prompt = animal_description + " 16-bit pixel art sprite 2d video game asset side profile view flat colors clean edges isolated on a solid black background";
var encoded_prompt = string_replace_all(base_prompt, " ", "%20");

// REPLACE THIS WITH YOUR WORKING API KEY (The one with the 5 image budget)
var my_api_key = "sk_iUkFIUkdKGYEO8OFmYb9zfy6bcm9ryy6"; 

// 2. THE VALIDATED OFFICIAL ENDPOINT STRUCTURE
// Changed model parameter to "flux" to match their system registry
var url = "https://gen.pollinations.ai/image/" + encoded_prompt + "?width=512&height=512&nologo=true&enhance=false&model=flux&key=" + my_api_key;

// 3. Force target file destination into GameMaker sandbox workspace
target_file_path = working_directory + "temp_sprite.png";

// 4. Download natively using http_get_file
request_id = http_get_file(url, target_file_path);

sprite_ready = false;
new_creature_sprite = -1;

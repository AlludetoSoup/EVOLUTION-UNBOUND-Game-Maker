// 1. Setup your prompt text (Keep it simple: letters and spaces only, no symbols)
var animal_description = "three eyed lizard with wings";
var base_prompt = animal_description + " 16-bit pixel art sprite 2d video game asset side profile view flat colors clean edges isolated on a solid black background";

// 2. Safely format spaces for the web URL
var encoded_prompt = string_replace_all(base_prompt, " ", "%20");

// 3. THE CORRECT ENDPOINT (Verified: No keys, no headers required)
var url = "https://gen.pollinations.ai/image/" + encoded_prompt + "?width=512&height=512&nologo=true&enhance=false";

// 4. Force the target destination directly into GameMaker's virtual sandbox
target_file_path = working_directory + "temp_sprite.png";

// 5. Download the file ANONYMOUSLY using http_get_file
request_id = http_get_file(url, target_file_path);

sprite_ready = false;
new_creature_sprite = -1;

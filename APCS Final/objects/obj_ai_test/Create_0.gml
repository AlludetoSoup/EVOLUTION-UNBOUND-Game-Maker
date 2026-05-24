// 1. Setup your prompt text (Keep it clean, no punctuation symbols)
var animal_description = "best lawn chair";
var base_prompt = animal_description + " 32-bit pixel art full front profile view isolated on solid black background";
var encoded_prompt = string_replace_all(base_prompt, " ", "%20");

// 2. Generate a random seed to ensure live compute cycles
var random_seed = string(irandom_range(1, 999999));
var my_api_key = "sk_iUkFIUkdKGYEO8OFmYb9zfy6bcm9ryy6"; 

// 3. THE STRICT RESTORED ROUTE (The prompt MUST follow /image/)
var url = "https://gen.pollinations.ai/image/" + encoded_prompt 
          + "?width=256"
          + "&height=256"
          + "&seed=" + random_seed
          + "&model=zimage"
          + "&nologo=true"
          + "&enhance=false"
          + "&key=" + my_api_key;

// 4. Sandbox workspace path
target_file_path = working_directory + "temp_sprite.png";

if (file_exists(target_file_path)) { 
    file_delete(target_file_path); 
}

// 5. Download the binary stream directly
request_id = http_get_file(url, target_file_path);
sprite_ready = false;
new_creature_sprite = -1;

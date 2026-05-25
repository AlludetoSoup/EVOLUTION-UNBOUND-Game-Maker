description = "flamingo" //prompt here
prompt = description + " 32-bit pixel art full side profile view clean lines exact black outline isolated on solid fushia background"
encoded_prompt = string_replace_all(prompt, " ", "%20")

seed = string(irandom_range(1, 999999))
key = "sk_iUkFIUkdKGYEO8OFmYb9zfy6bcm9ryy6" 

url = "https://gen.pollinations.ai/image/" + encoded_prompt + "?width=256"+ "&height=256"+ "&seed=" + seed + "&model=zimage"+ "&nologo=true" + "&enhance=false" + "&key=" + key

file_path = working_directory + "temp_sprite.png"

if (file_exists(file_path)) { 
    file_delete(file_path) 
}

request_id = http_get_file(url, file_path)
sprite_ready = false
new_creature_sprite = -1

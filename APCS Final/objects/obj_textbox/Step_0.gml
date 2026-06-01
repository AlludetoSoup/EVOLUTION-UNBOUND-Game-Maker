/// @description Insert description here
// You can write your code in this editor

if (keyboard_lastchar != "" and(keyboard_lastchar != string_char_at(text_input, string_length(text_input)) or timer > 5)) {
new_text = text_input + keyboard_lastchar
if (string_width(new_text) <= max_width) {
text_input = string_digits(new_text)
timer = 0
keyboard_lastchar = ""
}
}
else if keyboard_lastchar != "" {
	timer += 1
}


if (keyboard_check_pressed(vk_backspace) and string_length(text_input) > 0) {
text_input = string_delete(text_input, string_length(text_input), 1)
}
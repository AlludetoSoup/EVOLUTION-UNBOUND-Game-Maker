//shaders are weird
//do u need semicolons
//i looked it up and AI said yes
varying vec2 texcoord;
varying vec4 color;

uniform vec3 u_color_to_remove;

void main() {
    vec4 texcolor = texture2D(gm_BaseTexture, texcoord);
    
    vec3 targetcolor = vec3(0.909, 0.149, 0.388);
    
    if (distance(texcolor.rgb, targetcolor) < 0.05) {
        discard;
    } else {
        gl_FragColor = color * texcolor;
    }
}


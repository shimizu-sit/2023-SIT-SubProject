#version 150
precision highp float;
out vec4 fragColor;
uniform float time;
uniform vec2 resolution;

float randSin21(vec2 xy){// 2in, 1 out
    return fract(sin(dot(xy,vec2(12.9898,78.233)))*43758.54312);
}

void main(){
    vec2 pos=gl_FragCoord.xy;
    pos+=floor(60.*time);
    fragColor=vec4(randSin21(pos.xy/resolution.xy));
    fragColor.a=1.;
}
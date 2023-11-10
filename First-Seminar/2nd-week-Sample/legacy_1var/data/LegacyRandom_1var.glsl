#version 150
precision highp float;
out vec4 fragColor;
uniform float time;
uniform vec2 resolution;

float randSin11(float x){// 1 in, 1 out
    return fract(1000.*sin(x));
}

void main(){
    vec2 pos=gl_FragCoord.xy;
    pos+=floor(60.*time);
    fragColor=vec4(randSin11(pos.x));
    fragColor.a=1.;
}
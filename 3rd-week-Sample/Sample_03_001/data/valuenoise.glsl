#version 150
precision highp float;
precision highp int;
out vec4 fragColor;
uniform float time;
uniform vec2 resolution;

float randSin21(vec2 xy){// 2in, 1 out
    return fract(sin(dot(xy,vec2(12.9898,78.233)))*43758.54312);
}

float noise(vec2 p){
    vec2 n=floor(p);
    float e00=randSin21(n+vec2(0,0));
    float e10=randSin21(n+vec2(1,0));
    float e01=randSin21(n+vec2(0,1));
    float e11=randSin21(n+vec2(1,1));
    
    vec2 f=fract(p);
    return mix(mix(e00,e01,f[0]),mix(e10,e11,f[0]),f[1]);
}

void main(){
    vec2 pos=gl_FragCoord.xy/resolution.xy;
    pos=10.*pos+time;
    fragColor=vec4(noise(pos));
    fragColor.a=1.;
}
#version 150
precision highp float;
out vec4 fragColor;
uniform float time;
uniform vec2 resolution;
int channel;

float fractSin11(float x){// 1 in, 1 out
    return fract(1000.*sin(x));
}

float fractSin21(vec2 xy){// 2in, 1 out
    return fract(sin(dot(xy,vec2(12.9898,78.233)))*43758.54312);
}

void main(){
    vec2 pos=gl_FragCoord.xy;
    pos+=floor(60.*time);
    channel=int(2.*gl_FragCoord.x/resolution.x);
    if(channel==0){
        fragColor=vec4(fractSin11(pos.x));
    }else{
        fragColor=vec4(fractSin21(pos.xy/resolution.xy));
    }
    fragColor.a=1.;
}
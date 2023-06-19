// GLSLのバージョンを指定
#version 150
// 浮動小数点数の精度指定
precision highp float;
// 出力用のvec4型変数
out vec4 fragColor;
// 解像度情報（ビューポート解像度）を受け取るユニフォーム変数
uniform vec2 resolution;

void main(){
    // ピクセルの位置を正規化して取得
    vec2 pos=gl_FragCoord.xy/resolution.xy;
    vec3 RED=vec3(1.,0.,0.);
    vec3 BLUE=vec3(0.,0.,1.);
    vec3 GREEN=vec3(0.,1.,0.);
    vec3 YELLOW=vec3(1.,1.,0.);
    vec3 col=mix(mix(RED,BLUE,pos.x),mix(GREEN,YELLOW,pos.x),pos.y);
    // 出力色の設定
    fragColor=vec4(col,1.);
}
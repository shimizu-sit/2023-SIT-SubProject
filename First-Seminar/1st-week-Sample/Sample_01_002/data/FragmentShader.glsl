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
    // 出力色の設定
    fragColor=vec4(pos,1.,1.);
}
// Pshaderオブジェクトの宣言
PShader fs;

void setup() {
  // ウィンドウサイズの設定
  size(800, 800, P2D);
  // Fragment.Shader.glslファイルからシェーダを読み込む
  fs = loadShader("FragmentShader.glsl");
}

void draw() {
  // シェーダに解像度情報を渡す
  fs.set("resolution", (float)width, (float)height);
  // 読み込んだシェーダを適用する
  shader(fs);
  // 矩形(四角形)を描画する
  rect(0, 0, width, height);
  save("Sample_01_004.png");
}

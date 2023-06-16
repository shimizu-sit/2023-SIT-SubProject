PShader fs;

void setup() {
  size(800, 800, P2D);
  fs = loadShader("FragmentShader.glsl");
}

void draw() {
  shader(fs);
  rect(0, 0, width, height);
}

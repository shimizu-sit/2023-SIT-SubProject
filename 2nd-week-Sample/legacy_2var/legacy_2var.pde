PShader fs;

void setup() {
  size(800, 800, P2D);
  fs = loadShader("LegacyRandom_2var.glsl");
}

void draw() {
  fs.set("time", millis() / 1000.0);
  fs.set("resolution", (float)width, (float)height);
  shader(fs);
  rect(0, 0, width, height);
  save("legacy_2var.png");
}

int ns = 10;
float dx = 25;

float t;

void setup() {
  size(500, 500);
}

void draw() {
  t++;

  background(0);
  stroke(255);
  for (int i = 0; i < ns; i++) {
    fill(127 + 127 * sin(t * 0.02 + i * PI/ns));
    rect(dx * i, dx * i, width - 2 * dx * i, height - 2 * dx * i);
  }
}
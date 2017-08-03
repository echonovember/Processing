float t;

void setup() {
  background(0);
  size(500, 500);
}

void draw() {
  t++;
  
  background(0);
  float l = 100;
  float r = l / sqrt(2);
  
  PVector c = new PVector(width/2 + 100 * cos(t/20), height/2 + 100 *  sin(t/20));

  for (int i = 0; i < 4; i++) {
    float arg = t/25 + i * PI/2;
    PVector p1 = new PVector(c.x + r * cos(arg), c.y + r * sin(arg));
    PVector p2 = new PVector(c.x + r * cos(arg + PI/2), c.y + r * sin(arg + PI/2));

    stroke(255);
    line(p1.x, p1.y, p2.x, p2.y);
    line(width/2, height/2, p1.x, p1.y);
  }
}
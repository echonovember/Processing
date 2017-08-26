float t;

void setup() {
  size(500, 500);
  clear();
}

void clear() {
  background(255);
}

void draw() {
  t++;
  clear();
  
  int nc = 20;
  float r = 150;
  float rc = 2 * PI * r / nc - 5;
  float arg = t/50;
  
  stroke(0);
  noFill();
  for (int i = 0; i < nc; i++) {
    float phi = PI / nc * i;
    float _r = rc * sin(arg + phi);
    PVector p = new PVector(width/2 + r * cos(2*PI * i / nc), height/2 + r * sin(2*PI * i / nc));
    ellipse(p.x, p.y, _r, _r);
  }
}
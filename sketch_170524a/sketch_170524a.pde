float t = 0;

int rayNum = 2;
float r = 200;
float dr = 50;

void setup() {
  size(500, 500);
  stroke(255); 
}

void draw() {
  background(0);
  t++;
  for (int i = 0; i < rayNum; i++) {
   float phi = (2 * PI * i)/ rayNum;
   float _r = r + dr * cos(phi + t/60);
   float x = _r * cos(phi + t/15);
   float y = _r * sin(phi + t/15);
   ellipse(width/2 + x/2, height/2 + y/2, _r, _r);
  }
}
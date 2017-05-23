float t = 0;

int rayNum = 12;
float r = 150;
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
   float _r = r + dr * cos(phi * 6 - t/15);
   float x = _r * cos(phi);
   float y = _r * sin(phi);
   ellipse(width/2 + x, height/2 + y, _r/2, _r/2);
   //line(width/2, height/2, width/2 + x, height/2 + y);
  }
}
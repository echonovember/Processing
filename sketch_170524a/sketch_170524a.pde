float t = 0;

int rayNum = 8;
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
    setColorForIndex(i);
    float phi = (2 * PI * i)/ rayNum;
    float _r = r + dr * cos(phi + t/30);
    float x = _r * cos(phi + t/15);
    float y = _r * sin(phi + t/15);
    ellipse(width/2 + x/2, height/2 + y/2, _r, _r);
  }
}

void setColorForIndex(int i) {
  switch (i) {
    case 0: fill(148,0,211,1); break;
    case 1: fill(75,0,130,0.75); break;
    case 2: fill(0,0,255,0.75); break;
    case 3: fill(0,255,0,0.75); break;
    case 4: fill(255,255,0,0.75); break;
    case 5: fill(255,0,127,0.75); break;
    case 6: fill(255,0,0,0.75); break;
    case 7: fill(148,0,211,0.75); break;
    default: break;
  }
}
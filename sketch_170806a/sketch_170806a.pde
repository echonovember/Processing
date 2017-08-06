float r1=75;
float r2=75;

float t;

void clear() {
  background(0);
}

void setup() {
  size(500, 500);
  clear();
}

void draw() {
  clear();
  t++;
  int nc = 6;
  noFill();
  stroke(255);
  //ellipse(width/2, height/2, 2*r1, 2*r1);

int sc = 8;
  for (int j = 0; j < sc; j++) {

    float arg = t/45 + j * 2 * PI / sc;
    float x=width/2+(r1 + r2)*cos(arg);
    float y=height/2+(r1 + r2)*sin(arg);
    fill(255);
    float r = 10;

    //ellipse(x, y, r/2, r/2); 
    noFill();
    //ellipse(x, y, 2* r2, 2* r2);  
    fill(255);

    for (int i = 0; i < nc; i++) {

      //float arg2 = arg+PI*2*(i + 1)/nc;
      float arg2 = -arg + PI*2*(i + 1)/nc;
      float x2=x+r2*cos(-arg2);
      float y2=y+r2*sin(arg2);
      ellipse(x2, y2, r, r);
    }
  }
}
float t;
float l = 25;
int rc = 8, cc = 6;
float dir [][] = new float [][] {
  { 1, 0, 1 }, { 0, 1, 2 }, { 1, 0, 2 }, { 0, 1, 1 }, 
  { 0, 1, 1 }, { -1, 0, 2 }, { 0, 1, 2 }, { -1, 0, 1 }, 
  { -1, 0, 1 }, { 0, -1, 2 }, { -1, 0, 2 }, { 0, -1, 1 }, 
  { 0, -1, 1 }, { 1, 0, 2 }, { 0, -1, 2 }, { 1, 0, 1 }
};

void setup() {
  size(600, 600);
  clear();
}

void clear() {
  background(19, 39, 58);
}

void draw() {
  t++;
  clear();

  for (int i = 0; i < cc; i++) {
    for (int j = 0; j < rc; j++) {
      pushMatrix();
      translate((i + 0.5) * width/cc, (j + 0.5) * height/rc);
      rotate(t/25 * 0.05 * PI);
      new Cross().display(new PVector(0, -l), t/25 - PI/cc * i);
      popMatrix();
    }
  }
}

class Cross {
  void display(PVector p, float arg) {
    Line line = new Line(p);
    PVector end = line.display(dir[0][0], dir[0][1], dir[0][2], arg);

    for (int i = 1; i < dir.length; i++) {
      line = new Line(new PVector(end.x, end.y));
      end = line.display(dir[i][0], dir[i][1], dir[i][2], arg);
    }
  }
}

class Line {  
  PVector p;

  Line(PVector p) {
    this.p = p;
  }

  PVector display(float dx, float dy, float type, float arg) {
    float length = len(type, arg);
    PVector end = new PVector(p.x + length * dx, p.y + length * dy);
    stroke(211);
    strokeWeight(5);
    strokeCap(PROJECT);
    line(p.x, p.y, end.x, end.y);
    return end;
  }

  float len(float type, float arg) {
    switch (int(type)) {
    case 1: 
      return l * abs(sin(arg));
    case 2: 
      return l - l * abs(sin(arg));
    default: 
      return 0;
    }
  }
}
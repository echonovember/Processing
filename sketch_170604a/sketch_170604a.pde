float maxR = 100;
float dr = 20;

float t;

Circle c = new Circle(20, 0, 125);
Circle c1 = new Circle(40, dr, 200);
Circle c2 = new Circle(60, 3 * dr, 255);

Circle[] circles = {c, c1};

void setup() {
  size(500, 500);
}

void draw() {
  t++;
  background(0);
  swapIfNeeded();

  for (int i = circles.length - 1; i >= 0; i--) {
    circles[i].update();
    circles[i].display(width/2, height/2);
  }
}

void swapIfNeeded() {
  for (int i = 0; i < circles.length; i++) {
    if (circles[i].r == 0) {
      _swap();
    }
  }
}

void _swap() {
  Circle[] newCircles = new Circle[circles.length];
  for (int i=0; i<circles.length-1; i++) {
    newCircles[i]=circles[i+1];
  }
  newCircles[circles.length-1]=circles[0];
  circles = newCircles;
}

class Circle {
  float r, dr;
  float white;

  Circle(float r, float dr, float white) {
    this.r = r;
    this.dr = dr;
    this.white = white;
  }

  void update() {
    r = (t + dr) % maxR;
  }

  void display(float x, float y) {
    fill(this.white);
    stroke(0);
    ellipse(x, y, r, r);
  }
}
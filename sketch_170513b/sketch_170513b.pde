float t;
float spacing = 15;
float gravityX, gravityY;

void setup() {
  background(0);
  stroke(255);
  size(525, 300);
  
  gravityX = width/2;
  gravityY = height/2;
  
  //for (int i = 0; i < int(width/spacing) + 1; i++) {
  //  drawColumnAt(i * spacing);
  //}
}

void draw() {
  print(frameCount);
  print('\n');
  
  int s = second();
  if (s % 2 == 0 && t < int(width/spacing) + 1) {
    drawColumnAt(t * spacing);
    t++;    
  }
}

void drawColumnAt(float x) {
  for (int j = 0; j < int(height/spacing) + 1; j++) {
      float y = j * spacing;
      ellipse(x, y, 2, 2);
      line(gravityX, gravityY, x, y);
    }
}
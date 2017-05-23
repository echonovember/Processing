float spacing = 10;
int squareNum = 5;

void setup() {
  size(500, 500);
  
  noStroke();
  drawPattern();
}

void drawPattern() {
    background(0);
  float minDimension = min(height, width);
  float squareSize = (minDimension - spacing * (squareNum + 1)) / squareNum;
  int colorSwitchIndex = int(random(4) + 2);

  for (int i = 0; i < squareNum; i++) {
    for (int j = 0; j < squareNum; j++) {
      fill(255);
      if ((i + j) % colorSwitchIndex == 0) { fill(125); }
      float x = (i + 1) * spacing + i * squareSize;
      float y = (j + 1) * spacing + j * squareSize;
      rect(variate(x), variate(y), squareSize, squareSize);
    }
  }
}

void draw() {
  if (keyPressed == true) {
    drawPattern();
  }
}

void keyPressed() {
  print("key pressed");
  drawPattern();
}

float variate(float coord) {
  return coord + (random(20) - 10);
}
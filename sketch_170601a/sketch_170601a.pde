// 2D Array of objects
Cell[] grid;

int cols = 5;
int rows = 5;

void setup() {
  size(200, 200);
  grid = new Cell[cols];
  for (int i = 0; i < cols; i++) {
    grid[i] = new Cell(i*40, width/2 - 20, 60, 40, i);
  }
}

void mouseClicked() { 
  background(0);
  swap();
  grid[0].angle = 0;
  grid[0].display();
  for (int i = 1; i < cols; i++) {
    grid[i].angle = 127;
    grid[i].display();
  }
}

void swap() {
  Cell[] newGrid = new Cell[grid.length];
  for (int i=0; i<grid.length-1; i++) {
    newGrid[i]=grid[i+1];
  }
  newGrid[grid.length-1]=grid[0];
  grid = newGrid;
}

void draw() {
}

// A Cell object
class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  float x, y;   // x,y location
  float w, h;   // width and height
  float angle; // angle for oscillating brightness

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  } 

  // Oscillation means increase angle
  void oscillate() {
    angle += 1;
  }

  void display() {
    stroke(255);
    // Color calculated using sine wave
    fill(127+127*sin(angle));
    rect(x, y, w, h);
  }
}
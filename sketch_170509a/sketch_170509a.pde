void setup() {
  size(500, 500);
  background(0);
  
  stroke(170);  
  fill(120, 60);
       
    float c = PI/180;
    
    int lineCount = 30;
    for (int i = 0; i < lineCount; i++) {
     
            float angle = PI/lineCount * i;
      float radius = 30 * abs( sin(angle) );

       float counterClockwiseBranchX = mouseX + radius * cos( angle);
     float counterClockwiseBranchY = mouseY + radius * sin( angle);
    
      float clockwiseBranchX = mouseX + radius * cos( -angle);
      float clockwiseBranchY = mouseY + radius * sin( -angle);
      
      line(width/2, height/2, width/2 + counterClockwiseBranchX, height/2 + counterClockwiseBranchY);
      line(width/2, height/2, width/2 + clockwiseBranchX, height/2 + clockwiseBranchY);
    }
}
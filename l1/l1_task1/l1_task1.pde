import Turtle.*;
Turtle t;


void setup() {
  size(700, 700);
  background(255);
  stroke(0);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  // Letters
  drawI(t, 5, 20, width/2, height/2, 0);
  drawT(t, 5, 20, (width/2) + 25 , (height/2) + 25, 0);
  
  // Regular pentagon
  drawRegPoly(t, (width/2) - 150, (height/2) - 150, 125, 5, -17.5);
  
  // Equilateral triangle
  drawRegPoly(t, (width/2) + 50, (height/2) + 50, 70, 3, 0);
  
  // Right triangle
  drawRightTriangle(t, (width/4), (height/4) * 3, 40, 0);
  
  // Circle with a radius of 200
  drawCircle(t, (width/3), (height/3), 200);
}

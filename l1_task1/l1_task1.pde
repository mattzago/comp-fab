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
  drawI(t, 5, 20, width/2, height/2);
  drawT(t, 5, 20, (width/2) + 25 , (height/2) + 25);
  drawEquilTriangle(t, (width/2) + 50, (height/2) + 50, 75);
  drawRegPoly(t, (width/2) - 150, (height/2) - 150, 70, 5);
  drawCircle(t, (width/3), (height/3), 200);
}

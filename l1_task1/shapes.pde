import Turtle.*;

void drawCircle(Turtle t, float x, float y, float r) {
  setXY(x, y);
  
  // Use circumference to allow us to draw any radius
  float c = 2 * PI * r;
  float step = c / 360;
  
  for (int i = 0; i < 360; i++) {
    t.forward(step);
    t.right(1);
  }
}

void drawEquilTriangle(Turtle t, float x, float y, float s) {
  setXY(x, y);
  t.right(60);
  t.forward(s);
  t.right(120);
  t.forward(s);
  t.right(120);
  t.forward(s);
}

void drawRegPoly(Turtle t, float x, float y, float l, int s) {
   setXY(x,y);
   float angle = 180 - ((((float)s - 2) / s) * 180);
   println(angle);
   
   for (int i = 0; i < s; i++) {
     t.forward(l);
     t.right(angle);  
   }
}

void drawRightTriangle(Turtle t, float x, float y, float s) {
  float h = sqrt(pow(s,2) + pow(s,2));
  
  setXY(x, y);
  t.right(45);
  t.forward(h);
  t.right(135);
  t.forward(s);
  t.right(90);
  t.forward(s);
}

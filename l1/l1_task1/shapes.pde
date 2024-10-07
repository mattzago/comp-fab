import Turtle.*;

// Draw a circle at a given x,y with a given radius
void drawCircle(Turtle t, float x, float y, float r) {
  setXY(x, y, 0);
  
  // Use circumference to allow us to draw any radius
  float c = 2 * PI * r;
  float step = c / 360;
  
  for (int i = 0; i < 360; i++) {
    t.forward(step);
    t.right(1);
  }
}

// Draw a regular polygon (all sides are same length and all internal angles are the same
// at a given x,y with length s for the sides and n for the number of sides, and a rotation
void drawRegPoly(Turtle t, float x, float y, float s, int n, float rotation) {
   setXY(x,y, rotation);
   float angle = 180 - ((((float)n - 2) / n) * 180);
   
   for (int i = 0; i < n; i++) {
     t.forward(s);
     t.right(angle);  
   }
}

void drawRightTriangle(Turtle t, float x, float y, float s, float rotation) {
  float h = sqrt(pow(s,2) + pow(s,2));
  
  setXY(x, y, rotation);
  t.right(45);
  t.forward(h);
  t.right(135);
  t.forward(s);
  t.right(90);
  t.forward(s);
}

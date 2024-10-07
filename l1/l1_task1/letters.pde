import Turtle.*;

// Draw a basic capital I
void drawI(Turtle t, int s1, int s2, float x, float y, float rotation) {
  setXY(x, y, rotation);
  t.setHeading(90);
  t.forward(s1);
  t.push();
  t.setHeading(0);
  t.forward(s2);
  t.push();
  t.setHeading(-90);
  t.forward(s1);
  t.pop();
  t.setHeading(90);
  t.forward(s1);
  t.pop();
  t.forward(s1);
}

// Draw a basic capital T
void drawT(Turtle t, int s1, int s2, float x, float y, float rotation) {
  setXY(x, y, rotation);
  t.forward(s2);
  t.push();
  t.setHeading(-90);
  t.forward(s1);
  t.pop();
  t.setHeading(90);
  t.forward(s1);
}

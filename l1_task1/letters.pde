import Turtle.*;

void drawI(Turtle t, int s1, int s2, float x, float y) {
  setXY(x, y);
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

void drawT(Turtle t, int s1, int s2, float x, float y) {
  setXY(x, y);
  t.forward(s2);
  t.push();
  t.setHeading(-90);
  t.forward(s1);
  t.pop();
  t.setHeading(90);
  t.forward(s1);
}

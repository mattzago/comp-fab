import processing.svg.*;
import Turtle.*;

// Basic utility function for quickly setting the x/y and the rotation
void setXY(float x, float y, float rotation) {
  t.setX(x);
  t.setY(y);
  t.setHeading(rotation);
}

// Handles key press events
// Code taken from Michael Riveria's csci 7000 computational fabrication class code
void keyPressed() { 
  // press 's' to save a svg of your drawing
  if (key == 's') {
    // Make file name with the currrent date/time
    String folder = "output";
    String fileName = "drawing-" + getDateString() + ".svg";
    beginRecord(SVG, folder + "/" + fileName);
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
} 

// Generates a date string of the format year_month_day-hour_min_second
// Code taken from Michael Riveria's csci 7000 computational fabrication class code
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}

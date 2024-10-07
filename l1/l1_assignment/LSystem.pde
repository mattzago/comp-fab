// This is an implementation of an L-System that extends the class 
// "BaseLSystem", which makes it easy to make new types of LSystems (e.g., probabalistic)
// without repeating lots of code.
// It assumes all input vocabulary not given a rule are constants. 
// Though you could give an explicit rule for a constant using "F" --> "F"
// It contains a StringBuffer (currentIterationBuffer) that should be used
// to handle production rules when computing the currentIteration string as part of iterate
// in order avoid wasteful creation of strings and memory problems.
// The StringBuffer is used in the iterate method of the LSystem.
// @author: @mriveralee
import java.util.HashMap;

class LSystem extends BaseLSystem {
  
 // Production rules
  private HashMap<Character, String> rules;

  // Constructor for making an Lsystem object
  public LSystem(String axiom, HashMap<Character, String> rules, 
    float moveDistance, float rotateAngle, float scaleFactor) {            
    
    // Call Super Class constructor to initialize variables
    // You must always call this.
    super(axiom, moveDistance, rotateAngle, scaleFactor);
    
    // Set the Rules
    this.rules = rules;
    
    // Reset the state
    this.reset();
  }
  
  // runs 1 iteration, performing the rules for each character
  // on the current string. The result of the replacement is added to the currentIterationBuffer.
  public void iterate() {
    // get a copy of the current iteration string
    String current = this.getIterationString();
    
    // Now clear the current interation string
    this.clearCurrentStringBuffer();
    
    // Implement the procedure for using the rules to replace characters in the current string, 
    // and append them them to the currentIterationBuffer
    for (int i = 0; i < current.length(); i++) {
      // This approach assumes single character swaps
      Character c = current.charAt(i);
      
      if (this.rules.containsKey(c)) {
        this.currentIterationBuffer.append(rules.get(c)); 
      } else {
        this.currentIterationBuffer.append(c);
      }
    }
 
     // Increment our iteration after we are done
     iterationNum += 1;
     
  }
  
  // This function uses the turtle to draw based on each character in the LSystem's 
  // iteration string. It also handles scaling the moveDistance (to keep the image in frame), if desired
  public void drawLSystem(Turtle t) {
    // Our turtle's move distance
    float dist = this.moveDistance;
    
    // Scale the movement, if necessary, to help keep the image in frame 
    // when it gets too big
    if (scaleFactor != 0) {
      // Get the current iteration number for scaling 
      int iterationNum = this.getIterationNum();
      dist = dist / (scaleFactor * (iterationNum + 1));
    }
    
    // Get the current iteration string
    String currentIteration = this.getIterationString(); 
    
    // Loop through each character in the iteration string,
    // and do turtle operations based on the character
    for (int i = 0; i < currentIteration.length(); i++) {
      Character c = currentIteration.charAt(i);
      // Implement different l-system vocabulary
      switch (c) {
        case 'A':
          t.penDown();
          t.forward(dist * 5);
          break;
        case 'B':
          for (int b = 0; b < 360; b++) {
            t.forward(.05);
            t.right(1);
          }
          break;
        case 'C':
          t.forward(dist/2);
          t.right(90);
          t.forward(dist/2);
          t.right(90);
          t.forward(dist/2);
          t.right(90);
          t.forward(dist/2);
          break;
        case '[':
          t.push();
          break;
        case ']':
          t.pop();
          break;
        case 'F':
          t.penDown();
          t.forward(dist);
          break;
        case 'f':
          // Move forward without drawing the line
          t.penUp();
          t.forward(dist);
          break;
        case '+':
          t.right(this.rotateAngle);
          break;
        case '-':
          t.left(this.rotateAngle);
          break;
        default:
           // Throw an error if we don't have a draw operation implemented 
           throw new IllegalArgumentException("Missing a drawing operation case for character: " + c.toString());  
      }
    }
  }
}

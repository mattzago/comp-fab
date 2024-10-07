// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;
// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 2;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initA() {
  float moveDist = 30;
  float rotateAngle = 45;
  float scaleFactor = 1;
  
  // The initial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
    rules.put('F', "AFFFFF++FFF++F++FF--F--FF++F++FF--F--FF++F++FFFA");
    rules.put('A', "FFFFFFFF");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initB() {
  float moveDist = 20;
  float rotateAngle = 29.7;
  float scaleFactor = 0.5;
  
  // The initial axiom / input string
  String axiom = "F[F][++F]--F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
    rules.put('F', "F[+FB]F[-F----B]F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initC() {
  float moveDist = 20;
  float rotateAngle = 29.7;
  float scaleFactor = 0.5;
  
  // The initial axiom / input string
  String axiom = "F[F][++F]--F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
    rules.put('F', "F[+FC]F[-F----C]F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

ProbabilisticLSystem initD() {
  float moveDist = 20;
  float rotateAngle = 29.7;
  float scaleFactor = 0.5;
  
  // The initial axiom / input string
  String axiom = "F[F][++F]--F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
    rules.put('F', "F[+FC]F[-F----C]F");
    
  // Create and return the Lsystem
  return new ProbabilisticLSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

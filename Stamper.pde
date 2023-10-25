//
// Author: Max Blowers
// url: https://maxblowers.dev/
// desc:
//  A program that draws shapes while clicking
//

// Init project

void setup() {
  size(600, 600);
  background(#525252);
}

// Declare vars, ints, strings
String shape = "f";
int clr = #CB2B2B;

// The face drawer
void faceDraw(int mx, int my) {
  // DEBUG: println("face Draw - " + " mX " + mx + " mY " + my);
  // The face shapes
  fill(clr);
  strokeWeight(2);
  ellipse(mx + 20, my - 5, 15, 15);
  ellipse(mx - 20, my - 5, 15, 15);
  triangle(mx+15, my+20, mx, my, mx-15, my+20);
  rect(mx - 19, my + 25, 40, 10);
}

// Draw the target
void targetDraw(int mx, int my) {
  // DEBUG: println("target Draw - " + " mX " + mx + " mY " + my);
  // The target shapes
  fill(clr);
  strokeWeight(5);
  stroke(#000000);
  ellipse(mx, my, 55, 55);
  ellipse(mx, my, 35, 35);
  ellipse(mx, my, 15, 15);
}

// Draw the arrows
void arrowDraw(int mx, int my) {
  // DEBUG: println("arrow Draw - " + " mX " + mx + " mY " + my);
  // The arrow shapes
  fill(clr);
  strokeWeight(2);
  stroke(#ffffff);
  triangle(mx-20, my+5, mx, my-15, mx, my+25);
  rect(mx, my+1, 15, 8);
  triangle(mx+35, my+5, mx+15, my-15, mx+15, my+25);
}

// The drawy part of the project
void draw() {
  // Determine key pressed and which and set accordingly
  if (keyPressed == true) {
    // Shapes
    if (key == 'f') {
      shape = "f";
    } else if (key == 't') {
      shape = "t";
    } else if (key == 'a') {
      shape = "a";
    } else if (key == 'c') {
      background(#525252);
    }
    // set the colors
    else if (key == 'r') {
      clr = #CB2B2B;
    } else if (key == 'g') {
      clr = #03AD1E;
    } else if (key == 'b') {
      clr = #1F9AEA;
    } else if (key == 'p') {
      clr = #AF1CD8;
    } else {
      return;
    }
  }

  // draw the stuffs
  if (mousePressed == true) {
    if (shape == "f") {
      faceDraw(mouseX, mouseY);
    } else if (shape == "t") {
      targetDraw(mouseX, mouseY);
    } else if (shape == "a") {
      arrowDraw(mouseX, mouseY);
    } else {
      return;
    }
  }
}

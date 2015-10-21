import processing.pdf.*;
boolean saveOneFrame = true;


void setup() {
  size(600, 600);
  background(244);
}

void draw() {
  
  if(saveOneFrame == true) {
    beginRecord(PDF, "Spiral.pdf"); 
  }
  background(44);

  float size = -4;
  float x = width/2;
  float y = height/2;
  float j=0;
  noStroke();
  //stroke(150,25);
  //strokeWeight(1);
  fill(#E5D534, 71); // 34C5E5  E5D534
  //noFill();
  smooth();
  for (float i=0; i<99; i+=1.560) {

    ellipse(x+j*sin(137.5*j), y+j*cos(137.5*j), size+i, size+i);

    j+=1.792*2.518465;
  }
  
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
}

import processing.pdf.*;
boolean saveOneFrame = true;



void setup() {
  size(600, 600);
  background(244);
  smooth();
}

void draw() {
  
  if(saveOneFrame == true) {
    beginRecord(PDF, "Spiral.pdf"); 
  }
  background(44);
  
  float j=-1;
  float size=22.0;
  pushMatrix();
  translate(width/2, height/2);
  noStroke();
  fill(0, 0);
  strokeWeight(1.3);
  int limit = 812;
  for (float x=50.70; x<limit; x+=1.653612) {
    if (j%2==0){
      //stroke(#A1B6FF, 289);
      fill(#B2A170, 352);
    }
    else{
      //stroke(#B2A170, 360);
      fill(#A1B6FF, 331);
    }
    ellipse(j*sin(x), j*cos(x), map(x, 0, limit, 0, size), map(x, 0, limit, 0, size));
    j++;
  }

  popMatrix();
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
}


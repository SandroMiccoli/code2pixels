
import processing.pdf.*;

boolean saveOneFrame = false;

color[] c = {
  #00A0B0, #6A4A3C, #CC333F, #EB6841, #EDC951
};

void setup() {
  size(851, 315);
  noLoop();
}

void draw() {
  background(45);
  
  if(saveOneFrame == true) {
    beginRecord(PDF, "Line01.pdf"); 
  }

  noiseSeed(int(random(10)));
  
  for (int j=0; j<width; j+=1) {
    pushMatrix();
    float ran = noise(j)*height/2+10;
    float x1 = j;
    float y1 = 0;
    float x2 = x1;
    float y2 = y1+ran;
    int r = int(random(5));
    strokeWeight(2.1);
    stroke(c[int(r)]);
    line(x1, y1, x2, y2);
    line(x1,height,x2,height-ran);
    popMatrix();
  }
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
}

void mousePressed(){
  redraw(); 
}
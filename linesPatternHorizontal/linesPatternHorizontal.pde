
import processing.pdf.*;

boolean saveOneFrame = false;

color[] c = {
  #00A0B0, #6A4A3C, #CC333F, #EB6841, #EDC951
};

void setup() {
  size(800, 800);
  noLoop();
}

void draw() {
  background(45);
  
  if(saveOneFrame == true) {
    beginRecord(PDF, "Line01.pdf"); 
  }

  noiseSeed(int(random(10)));
  
  for (int j=0; j<height; j+=1) {
    pushMatrix();
    float ran = noise(j)*width/2+50;
    float x1 = 0;
    float y1 = j;
    float x2 = x1+ran;
    float y2 = y1;
    int r = int(random(5));
    strokeWeight(2.1);
    stroke(c[int(r)]);
    line(x1, y1, x2, y2);
    line(width,y1,width-ran,y2);
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
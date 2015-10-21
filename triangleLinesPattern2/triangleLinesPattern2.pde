

import processing.pdf.*;
boolean saveOneFrame = true;


void setup() {
  size(600, 600);
  background(44);
  frameRate(3);
  //noLoop();
}

void draw() {
  
  if(saveOneFrame == true) {
    beginRecord(PDF, "Line01.pdf"); 
  }
  background(244);
  int padding = 23;

  PVector a = new PVector(padding, padding);
  PVector b = new PVector(width-padding,padding);  
  PVector c = new PVector(padding,height-padding);
  PVector d = new PVector(width-padding,height-padding);

  strokeWeight(2.4);
  //stroke(allColors[3][int(random(0, 1))], 221);
  stroke(#B24E40,222);
  drawTriangleLines(a, b, c);
  drawTriangleLines(d, b, c);
  stroke(#3079CC,222);
  drawTriangleLines(c, a, d);
  drawTriangleLines(b, a, d);
  
  
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
  
  
}

void drawTriangleLines(PVector a, PVector b, PVector c) { 

  float slope = (b.y-c.y)/(b.x-c.x);
  float b_inter = b.y-(slope*b.x);
  if (b.x<c.x) {
    
    for (float x=b.x; x<c.x; x+=5) {
      //stroke(allColors[0][int(random(0, 4))]);
      line(a.x, a.y, x, x*slope+b_inter);
    }
  } else { 
    for (float x=c.x; x<b.x; x+=5) {
      //stroke(allColors[3][int(random(0, 1))], 200);
      line(a.x, a.y, x, x*slope+b_inter);
    }
  }
}

String getTime() {
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  int s = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  return d+"-"+m+"-"+y+"--"+h+"-"+min+"-"+s;
}


void keyPressed() {
  switch(key) {
  case 'p':
    println("Frame saved: "+getTime()+".tiff");
    saveFrame(getTime()+".tiff");
    break;
  }
}

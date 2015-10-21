


void setup() {
  size(600, 600);
  background(44);
  frameRate(2);
  //noLoop();
}

void draw() {
  background(44);

  /*PVector a = new PVector(width/2, 0);
   PVector b = new PVector(0, height/2);  
   PVector c = new PVector(width, height/2);
   drawTriangleLines(a, b, c);
   
   a = new PVector(width/2, height);
   b = new PVector(0, height/2);  
   c = new PVector(width, height/2);
   drawTriangleLines(a, b, c);
   */
   
  int x_step = 4;
  int y_step = 5;
   
  for (int x=width/x_step; x<width; x+=width/x_step) {
    for (int y=0; y<width; y+=height/y_step) {

      PVector a = new PVector(x, y);
      PVector b = new PVector(x-width/x_step, y+height/y_step);  
      PVector c = new PVector(x+width/x_step, y+height/y_step);

      strokeWeight(0.4);
      //stroke(allColors[0][int(random(0, 4))]);
      //stroke(allColors[1][int(random(0, 4)*noise(x,y))]);
      //stroke(150*noise(x, y));
      //stroke(205,100);
      drawTriangleLines(a, b, c);
      //drawTriangleLines(b, a, c);
      //drawTriangleLines(c, b, a);
    }
  }
}
void drawTriangleLines(PVector a, PVector b, PVector c) { 

  float slope = (b.y-c.y)/(b.x-c.x);
  float b_inter = b.y-(slope*b.x);

  if (b.x<c.x) {
    for (float x=b.x; x<c.x; x+=5) {
      stroke(allColors[0][int(random(0, 4))],200);
      line(a.x, a.y, x, x*slope+b_inter);
    }
  } else { 
    for (float x=c.x; x<b.x; x+=5) {
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

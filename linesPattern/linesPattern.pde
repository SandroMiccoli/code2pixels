
color[] c = {#59B390,#F0DDAA,#E47C5D,#E32D40,#152B3C};

void setup(){
  size(600,400);
  background(243);
  frameRate(260);
}

void draw(){
  
  float x1 = random(0,width);
  float y1 = 0;
  float x2 = x1;
  float y2 = y1+random(0,height);
  int r = int(random(5));
  strokeWeight(0.1);
  stroke(c[int(r)]);
  line(x1,y1,x2,y2);
  
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
    println("Frame saved: "+getTime()+".png");
    saveFrame(getTime()+".png");
    break;
  }
}

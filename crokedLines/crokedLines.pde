
int horiLines = 12;

void setup(){
 size(600,600);
 background(244);
 noLoop();
}

void draw(){
  background(244);
  for (int i=1; i<horiLines; i++){
    int r = 15;
    float randLeft = height/horiLines*i+random(-r,r);
    float randRight = height/horiLines*i+random(-r,r);
    line(0, randLeft, width, randRight);
    
  }
}

void mousePressed(){
  redraw();
}
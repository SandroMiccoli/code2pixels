color[] pantone2016 = 
  {
    #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
  };

void setup() {
  size(800, 800);
  //noLoop();
}

void draw() {
  background(pantone2016[3]);
  noStroke();
  int w = width-width/10;
  int h = height-height/10;
  int m = 21;
  int s = 50;
  rectMode(CENTER);
  for (int i=0; i<15; i++) {
    fill(pantone2016[2+i%2]);
    ellipse(width/2, height/2+i*m, w-i*s, h-i*s);
  }
}
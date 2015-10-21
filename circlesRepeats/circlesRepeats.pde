

void setup() {
  size(600, 600);
  background(244);
  frameRate(1);
  noLoop();


  float size = 0;
  float x = width/2;
  float y = height/2;
  int j=0;
  noStroke();
  fill(#3AB29E, 5);
  smooth();
  ellipse(x, y, size, size);
  for (float i=0; i<width/2-90; i+=1.681*2) {
    noStroke();
    ellipse(x+i, y, size-i, size-i);
    ellipse(x-i, y, size-i, size-i);
    ellipse(x, y+i, size-i, size-i);
    ellipse(x, y-i, size-i, size-i);
    
    j++;
  }

  noStroke();

  //ellipse(x+size*sin(radians(137.5)), y-size*cos(radians(137.5)), size/2, size/2);
}

void setup() {
  size(800, 800);
  background(244);
  smooth();
  noLoop();
}

void draw() {
  int size = width/3*2;
  noStroke();
  fill(44);
  ellipse(width/2, height/2, size, size);
  stroke(244);
  strokeWeight(2);
  for (int i=0; i<size*2; i+=size*2/6) {
    line(width/2, height/2-size/2, width/2-size+i, height/2+size/2);
    //line(width/2,height/2+size/2,width/2-size+i,height/2-size/2);
  }

  saveFrame("frame.png");
}
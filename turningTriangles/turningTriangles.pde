void setup() {
  size(800,800);
  //size(600, 600);
  background(244);
  smooth();
  //noLoop();
}

void draw() {
  
  
  background(244);
  fill(45,0);
  stroke(44);
  strokeWeight(4);
  int stepX = 38;
  int stepY = -23;
  int size=146;
  
  for (int j=1; j<10; j++) {
    for (int i=0; i<10; i++) {
      pushMatrix();
      translate(49*i, 49*j);
      rotate(radians(0.1*i));
      triangle(stepX-size, (stepY-size), 
      stepX, stepY, 
      stepX+size, (stepY-size));
      popMatrix();
    }
  }
  /*for (int x = stepX; x<width-stepX; x+=stepX) {
   for (int y = stepY; x<width-stepY; y+=stepY) {
   triangle(x-size,y-size,
   x,y,
   x+size,y-size);
   }
   }*/
}

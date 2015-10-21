void setup() {
  size(800, 800);
}

void draw() {

  background(244);
  stroke(66);
  strokeWeight(0.1);
  noFill();
  ellipseMode(CORNERS);
  pushMatrix();
  translate(width/2+10,height/2+10);
  rotate(radians(0));
  for (float i=0; i<481; i+=1) { 
    //ellipse(-width/2+1.618*i, -height/2+1.618*i, -width/2, -height/2);
    ellipse(-width/2, -height/2, -width/2+1.618*i, -height/2+1.618*i);
    //ellipse(-width/2+1.618*i, -height/2+1.618*i, -width/2, -height/2);
    //ellipse(width/2, height/2,width-10*i, height-10*i);

  }
  popMatrix();
}

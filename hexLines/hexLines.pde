void setup() {
  size(800, 800);
  background(244);
}

void draw() {
  stroke(44);
  background(244);
  strokeWeight(1);
  strokeCap(ROUND);
  int radius = 300;
  float angle = TWO_PI / 6;
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(0));
  PVector center = new PVector(0, 0);
  for (float a = 0; a < TWO_PI; a += angle) {
    PVector p1 = new PVector(center.x+cos(a)*radius, center.y+sin(a)*radius);
    PVector p2 = new PVector(center.x+cos(a+angle)*radius, center.y+sin(a+angle)*radius);    
    drawTriangleLines(center, p2, p1);
  }
  popMatrix();
}


void drawTriangleLines(PVector a, PVector b, PVector c) { 

  float slope = (b.y-c.y)/(b.x-c.x);
  //println(slope);
  float b_inter = b.y-(slope*b.x);
  if (b.x<c.x) {
    for (float x=b.x; x<c.x; x+=5) {
      //stroke(allColors[0][int(random(0, 4))]);
      line(a.x, a.y, x, x*slope+b_inter);
    }
  } else { 
    for (float x=c.x; x<b.x; x+=5) {
      //stroke(allColors[0][int(random(0, 4))]);
      line(a.x, a.y, x, x*slope+b_inter);
    }
  }
}

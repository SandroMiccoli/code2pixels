void setup() {
  size(800, 800);
  background(44);
  //noLoop();
}

void draw() {
  background(244);
  stroke(44);
  //ellipse(width/2,height/2,20,20);
  noFill();
  for (int i=0; i<7; i++) {
    pushMatrix();
    translate(65+67*i, 65+51*i);
    //rotate(radians(-90));
    strokeWeight(8-i);
    for (int j=0; j<6-i; j++) {
      pushMatrix();
      if(i==0)
        translate(0,27);
      translate(134*j, 16*i);
      rotate(radians(-90));
      polygon(0, 0, 55-8*i, i+1);
      popMatrix();
    }
    popMatrix();
  }
  for (int i=0; i<7; i++) {
    pushMatrix();
    translate(65+67*i, -60+-47*i);
    //rotate(radians(-90));
    strokeWeight(8-i);
    for (int j=0; j<6-i; j++) {

      pushMatrix();
      if(i==0){
        translate(0,87);
      }
      translate(134*j, height-21*i);
      rotate(radians(-90));
      polygon(0, 0, 55-8*i, i+1);
      popMatrix();
    }
    popMatrix();
  }
  
  for (int i=0; i<7; i++) {
    pushMatrix();
    translate(-65+51*i, 65+67*i);
    //rotate(radians(-90));
    strokeWeight(6-i);
    for (int j=0; j<6-i; j++) {
      
      if(i==0)
        translate(0,12);
      pushMatrix();
      
      translate(width-118*i, 135*j);
      rotate(radians(-90));
      polygon(0, 0, 40-8*i, i+1);
      popMatrix();
    }
    popMatrix();
  }
  
  
  for (int i=0; i<7; i++) {
    pushMatrix();
    translate(65+51*i, 65+67*i);
    //rotate(radians(-90));
    strokeWeight(6-i);
    for (int j=0; j<6-i; j++) {
      
      if(i==0)
        translate(0,12);
      pushMatrix();
      translate(16*i, 135*j);
      rotate(radians(-90));
      polygon(0, 0, 40-8*i, i+1);
      popMatrix();
    }
    popMatrix();
  }
  
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

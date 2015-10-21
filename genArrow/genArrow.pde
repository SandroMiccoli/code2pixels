import processing.pdf.*;
float minH;
float maxH;
float middleW;
int amountShapes = 6;
void setup() {
  size(600, 600);
  background(244);
  smooth();
  minH=height/6;
  maxH=height/6*5;
  middleW = width/2;
  noLoop();
}

void draw() {
  beginRecord(PDF,"file.pdf");
  background(244);
  stroke(44);
  strokeWeight(1.1);
  line(middleW, minH, middleW, maxH);
  drawTail();
  drawShapes(amountShapes);
  endRecord();
  
}

void drawShapes(int amount) {
  for (int i=0; i<amount; i++) {
    pushStyle();
    strokeCap(SQUARE);
    setRandomStyle();
    drawRandomShape(i);
    popStyle();
  }
}

void setRandomStyle() {
  if (int(random(100))%2==0) {
    if (int(random(10))%2==0)
      noFill();
    else
      fill(244);
    strokeWeight(random(0.5, 4));
    stroke(44);
  } else
    fill(44);
}

void drawRandomShape(int v) {
  float size=20+random(50);
  float randH = minH+(maxH-minH)/amountShapes*v;
  int shape=int(random(50))%4;
  //circles
  if (shape==0) {
    if (int(random(10))%2==0)
      ellipse(middleW, randH, size, size);
    else {
      ellipse(middleW, randH, size, size);
      setRandomStyle();
      ellipse(middleW, randH, size/3, size/3);
    }
  }
  //triangles
  else if (shape==1) {
    int r = int(random(10));
    int amount = 2;
    if (r%amount==0) {
      triangle(middleW, randH, 
        middleW+size/3, randH-size/2, 
        middleW-size/3, randH-size/2);
    } else if (r%amount==1){
      triangle(middleW, randH, 
        middleW+size/3, randH+size/2, 
        middleW-size/3, randH+size/2);
    }
  } 
  // line
  else if (shape==2) {
    int r = int(random(10));
    int amount = 4;
    if (r%amount==0) 
      line(middleW-size/2, randH, middleW+size/2, randH);
    else if (r%amount==1) {
      ellipse(middleW-5-size/2, randH, 3, 3);
      ellipse(middleW+5+size/2, randH, 3, 3);
      line(middleW-size/2, randH, middleW+size/2, randH);
    } else if (r%amount==2) {
      line(middleW, randH, middleW+10, randH+10+10);
      line(middleW, randH, middleW-10, randH+10+10);
    } else if (r%amount==3) {
      for (int i=0; i<3; i++)
        line(middleW-size/4, randH+i*5, middleW+size/4, randH+i*5);
    }
  }
  // square
  else if (shape==3) {
    pushMatrix();
    rectMode(CENTER);
    translate(middleW, randH);
    rotate(radians(45));
    if (int(random(10))%2==0)
      rect(0, 0, size, size);
    else {
      rect(0, 0, size, size);
      setRandomStyle();
      rect(0, 0, size/2, size/2);
    }
    popMatrix();
  }
}

void drawTail() {
  int r = int(random(10));
  strokeWeight(1.1);
  int amount=4;
  if (r%amount==0) {
    for (int i=0; i<3; i++) {
      line(middleW, maxH-20+10*i, middleW+20, maxH+10+10*i);
      line(middleW, maxH-20+10*i, middleW-20, maxH+10+10*i);
    }
  } else if (r%amount==1) {
    for (int i=0; i<3; i++) {
      line(middleW, maxH-20+10*i, middleW+20-i*4, maxH+10+5*i);
      line(middleW, maxH-20+10*i, middleW-20+i*4, maxH+10+5*i);
    }
  } else if (r%amount==2) {
    for (int i=0; i<5; i++) {
      line(middleW, maxH-40+10*i, middleW+20-i*4, maxH-20+5*i);
      line(middleW, maxH-40+10*i, middleW-20+i*4, maxH-20+5*i);
    }
  }
  else if (r%amount==3) {
    fill(244);
    stroke(44);
    beginShape();
    
    vertex(middleW, maxH-50);
    vertex(middleW+20, maxH-30);
    vertex(middleW+20, maxH+30);
    vertex(middleW, maxH+10);
    vertex(middleW-20, maxH+30);
    vertex(middleW-20, maxH-30);
    vertex(middleW, maxH-50);
    endShape(CLOSE);
    line(middleW, maxH-40, middleW+15, maxH-25);
    line(middleW, maxH-30, middleW+15, maxH-15);
    line(middleW, maxH-20, middleW+15, maxH-5);
    line(middleW, maxH-40, middleW-15, maxH-25);
    line(middleW, maxH-30, middleW-15, maxH-15);
    line(middleW, maxH-20, middleW-15, maxH-5);
  }
}

void mouseClicked() {
  redraw();
}
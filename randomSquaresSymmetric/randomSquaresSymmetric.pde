float minH;
float maxH;
float dist;
int amount = 6;
PVector pos;
void setup() {
  size(800, 800);
  background(244);
  dist = width/2/amount+10;
  noLoop();
}

void draw() {
  background(244);
  stroke(44);
  strokeWeight(1);
  //line(width/2, minH, width/2, maxH);

  for (int j=1; j<amount; j++) {

    for (int i=1; i<amount; i++) {

      pushMatrix();
      translate(dist*j, dist*i);
      pos = new PVector(dist*j, dist*i);
      setRandomStyle();
      drawSquare();
      popMatrix();
    }
  }
}

void drawSquare() {
  int size= int(random(10, 75));
  //for (float r=0; r<2; r+=1) {
    pushMatrix();
    //rotate(radians(44));
    rectMode(CENTER);
    rect(0, 0, size, size); //<>//
    //rotate(radians(-44));
    rect(width-pos.x*2, 0, size, size);
    rect(width-pos.x*2, height-pos.y*2, size, size);
    rect(0, height-pos.y*2, size, size);
    
    popMatrix();
  //}
}


void setRandomStyle() {
  int fill=int(random(100)); 
  if (fill%3==0 || fill%3==1) {
    //if (int(random(10))%2==0)
      noFill();
    //else
    //  fill(244);
    strokeWeight(random(2, 10));
    stroke(44);
  } else {
    fill(44);
  }
}


void mousePressed() {
  redraw();
}
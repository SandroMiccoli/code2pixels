int i=0;

void setup(){
  size(800,800);
  background(244);
  smooth();
}

void draw(){
  int size = width;
  
  stroke(44,29);
  strokeWeight(1);
  noFill();
  rotate(1.618*i);
  drawCircle(new PVector (10,10),size,12);
  i++;
  
}

void drawCircle(PVector pos, float d, int gen){
  ellipseMode(CORNER);
  ellipse(pos.x,pos.y,d,d);
  if (gen>0)
    drawCircle(pos,d/1.618,gen-1);
}

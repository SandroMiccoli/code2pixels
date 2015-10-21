PGraphics c;
PGraphics d;
int p = 50;
PVector padding = new PVector(p,p*1.618);

void setup() {
  size(600, 600, P2D);
  background(244);
  c = createGraphics(width, height, P2D);
  d = createGraphics(width, height, JAVA2D);
  c.beginDraw();
  c.smooth();
  c.endDraw();
  d.beginDraw();
  //d.background(255);
  d.smooth();
  d.endDraw();
  noLoop();
  
  println(c.stroke);
  
}

void draw() {  
  background(244);
  
  drawTriangle(padding.x, 0, width-padding.x, height/2, width-padding.x, height);
  drawTriangle(width-padding.x, 0, padding.x, height/2, padding.x, height);
  drawTriangle(padding.x, height, width-padding.x, height/2, width-padding.x, 0);
  drawTriangle(width-padding.x, height, padding.x, height/2, padding.x, 0);
  
  drawTriangle(0, padding.y, width/2, height-padding.y, width, height-padding.y);
  drawTriangle(width, padding.y, width/2, height-padding.y, 0, height-padding.y);
  drawTriangle(0, height-padding.y, width/2, padding.y, width, padding.y);
  drawTriangle(width, height-padding.y, width/2, padding.y, 0, padding.y);
 
  saveFrame("opa.png");
}

void drawTriangle(float x1, float y1, float x2, float y2, float x3, float y3){
  c.beginDraw();
  c.background(0, 0);
  c.fill(244);
  c.noStroke();
  //c.stroke(244,0);
  c.triangle(x1,y1,x2,y2,x3,y3);
  c.endDraw();

  d.blend(c, 0, 0, width, height, 0, 0, width, height, DIFFERENCE);
  
  image(d,0,0);
}
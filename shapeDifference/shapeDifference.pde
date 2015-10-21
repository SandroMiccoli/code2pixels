PGraphics c;
PGraphics d;
void setup() {
  size(300, 300);
  background(255);
  c = createGraphics(width, height, JAVA2D);
  d = createGraphics(width, height, JAVA2D);
  c.beginDraw();
  c.smooth();
  c.endDraw();
  d.beginDraw();
  d.smooth();
  d.endDraw();
}

void draw() {  
  background(255);
  c.beginDraw();
  c.background(0, 0);
  c.fill(244);
  c.noStroke();
  c.ellipse(mouseX, mouseY, 30, 30);
  c.endDraw();

  d.beginDraw();
  d.background(0, 0);
  d.fill(244);
  d.noStroke();
  d.ellipse(width/2, height/2, 30, 30);
  d.endDraw();
  d.blend(c, 0, 0, width, height, 0, 0, width, height, DIFFERENCE);
  image(d, 0, 0);
}
color c[] = {#ECD078, #D95B43, #C02942, #542437};

void setup() {
  size(800, 800);
  background(44);
  noLoop();
}

void draw() { 
  background(244);
  float angle = TWO_PI / 360;
  int radius = width/6;
  noiseSeed(int(random(5)));
  for (float a = angle; a <= TWO_PI; a += angle) {
    strokeWeight(1.1);
    //stroke(c[int(map(a,0,TWO_PI,0,255))%4]);
    float b = map(a,0,TWO_PI,-10,10);
    stroke(44);
    float x = width/2;
    float y = height/2;
    float sx = x + cos(a) * (radius+noise(a)*150);
    float sy = y + sin(a) * (radius+noise(a)*150);
    line(x,y,sx,sy);
  }
}

void mousePressed(){
 redraw(); 
}
color[] c = {
  #00A0B0, #6A4A3C, #CC333F, #EB6841, #EDC951
};
ArrayList<Line> lines;
Line l;

float _w,_h;

void setup() {
  _w = window.innerWidth;
  _h = window.innerHeight;
  
  size(_w, _h); // for processing.js fullscreen
  //noLoop();
  
  // creates all lines
  lines = new ArrayList<Line>();
  for (int h=0; h<_h; h+=2){
    l = new Line(new PVector(0,h),c[int(random(c.length))],random(0.2,0.4));
    lines.add(l);
  }
  
}

void draw() {
  background(0);
  for (Line line : lines){
    line.display();
  }
  
}


class Line {

  PVector pos;
  float noise;
  color c;
  float speed;

  Line(PVector _pos, color _c, float _s) {
    pos = new PVector(_pos.x, _pos.y);
    c = _c;
    speed = _s;
    noise=10;
  }

  void display() {
    style();
    line(0, pos.y, noise, pos.y);
    line(_w, pos.y, _w-noise, pos.y);
    
    update();
  }

  void update() {
    noise += speed;
    randomSeed(1);
    //if (noise > noise(pos.y)*_w/2+_w/20) // noise didn' work with processing.js
    if (noise > _w/2)
      speed*=-1;
    else if (noise < 9)
      speed*=-1;
  }

  void style() {
    strokeWeight(2.1);
    stroke(c,90);
  }
}
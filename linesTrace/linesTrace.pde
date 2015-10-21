Particle p, p2, p3;

void setup() {
  size(800, 800);
  background(244);
  frameRate(60);

  float randomX = random(-5, 5);
  float randomY = random(-5, 5);
  p = new Particle(new PVector(width/2, height/2), 
  new PVector(randomX, randomY)
    );
  p3 = new Particle(new PVector(width/2, height/2), 
  new PVector(random(-5,5), random(-5,5))
    );
  p2 = new Particle(new PVector(width/2, height/2), 
       new PVector(0, 1)
    );
}

void draw() {
  
  
  //println(p2.pos);
  p2.run();
  p.run();
  p3.run();
  
  float x = width/2+250*sin(radians(frameCount));
  float y = height/2+250*cos(radians(frameCount));

  //point(x,y);

  stroke(44, 20);
  strokeWeight(1);
  //line(p.pos.x, p.pos.y, p3.pos.x, p3.pos.y);
  line(p2.pos.x,p2.pos.y, p3.pos.x, p3.pos.y);
  line(p2.pos.x,p2.pos.y, p.pos.x, p.pos.y);
  //line(x,y, p3.pos.x, p3.pos.y);
  //line(x,y, p.pos.x, p.pos.y);
}

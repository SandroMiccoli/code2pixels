
ArrayList<Node> nodes;

void setup() {
  size(1000, 1000);
  background(244);
  smooth();
  nodes = new ArrayList<Node>();
  //blendMode(DIFFERENCE);
  noLoop();
  //frameRate(1);
}

void draw() {
  background(244);
  loadNodes();
  drawLinesNearNodes();
  //drawNodes();
  nodes.clear();
}

void loadNodes() {
  int concentric = int(random(8))+3;
  //println("NEW:" + concentric);
  for (int i=0; i<concentric; i++) {
  int density = int(random(15))+1;
  //println(density);
    for (int j=0; j<density; j++) {
      //println(width/(concentric*2.5));
      float angle=TWO_PI/density;
      float r=60+(width/(concentric*2.5))*i;
      nodes.add(new Node(width/2+r*sin(angle*j), height/2+r*cos(angle*j), 5*concentric-4*i));
    }
  }
  
}
void drawLinesNearNodes() {

  stroke(44);
  strokeWeight(1);

  for (Node n : nodes) {
    for (Node other : nodes) {
      if(dist(n.pos.x, n.pos.y, other.pos.x, other.pos.y)<150)
        line(n.pos.x, n.pos.y, other.pos.x, other.pos.y);
    }
  }
}

void drawNodes() {
  for (Node n : nodes)
    n.display();
}

void mousePressed(){
  redraw();
}
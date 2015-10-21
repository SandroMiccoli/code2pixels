import geomerative.*;

RShape   text;
RPath spiralPath;
RShape spiral;

void setup(){
  size(600,600);
  background(244);
  smooth();
  // VERY IMPORTANT: Allways initialize the library before using it
  RG.init(this);
  String t = "tudo dito nada feito fito e deito. ";
  t += t + t + t + t + t + "...";
  text = RG.getText(t, "Lato-Hai.ttf", 25, RG.CENTER);
  
  // ?
  RG.setPolygonizer(RG.ADAPTATIVE);
  RG.setPolygonizerAngle(1.615);
  text = RG.polygonize(text);
  
  createSpiral();
  spiral = new RShape(spiralPath);
  spiral = RG.centerIn(spiral,g,50);
  
}

void draw(){
  translate(width/2, height/2);
  background(#22822D);

  fill(0);
  stroke(0);
  
  //float t = map(mouseX, 0, width, 0.01, 0.99);
  RShape circleSeg = RG.split(spiral, 0.99)[0];
  
  RG.setAdaptor(RG.BYELEMENTPOSITION);
  RShape adaptedGrp = RG.adapt(text, circleSeg);
  
  RG.shape( adaptedGrp );
  
  noFill();
  stroke(255, 200);
    
  RG.shape( circleSeg );
}

void createSpiral(){

  float j=9.03;
  int size=10;
  PVector pos = new PVector(0,0);
  noStroke();
  fill(0,50);
  spiralPath = new RPath(width/2, height/2);
  
  for (float x=0; x<5000; x+=6.33*2){
    
    pos.x=width/2-j*sin(x);
    pos.y=height/2-j*cos(+x);
    ellipse(pos.x,pos.y,size,size);
    spiralPath.addLineTo(pos.x,pos.y);
    j++;
    
  }
  
}

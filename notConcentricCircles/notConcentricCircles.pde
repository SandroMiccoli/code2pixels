color[] pantone2016 = 
  {
  #f7cac9, #f7786b, #91a8d0, #004d8c, #fbe337, 
  #98ddde, #9896a4, #dc443a, #b18f6a, #71cc51
  };
float a =0;
void setup() {
  size(800, 800);
  //noLoop();
}

void draw() {
  background(pantone2016[0]);
  noStroke();
  int w = width-width/10;
  int h = height-height/10;
  int m = 17;
  int s = 40;
  rectMode(CENTER);
  for (int i=0; i<19; i++) {
    fill(pantone2016[4+i%2]);
    
    ellipse(width/2+i*m, height/2, w-i*s, h-i*s);
    ellipse(width/2-i*m, height/2, w-i*s, h-i*s);
    ellipse(width/2, height/2+i*m, w-i*s, h-i*s);
    ellipse(width/2, height/2-i*m, w-i*s, h-i*s);
    
    //if(i%2==0)
    //  ellipse(width/2+cos(a)*(i*m), height/2+sin(a)*(i*m), w-i*s, h-i*s);
   //e//lse
    //  ellipse(width/2+cos(-a)*(i*m), height/2+sin(a)*(i*m), w-i*s, h-i*s);
    //ellipse(width/2-i*m, height/2, w-i*s, h-i*s);
    //ellipse(width/2, height/2+i*m, w-i*s, h-i*s);
    //ellipse(width/2, height/2-i*m, w-i*s, h-i*s);
    
    //ellipse(width/2+i*m+cos(a)*13*i, height/2+sin(a)*15*i, w-i*s, h-i*s);
    //ellipse(width/2-i*m-cos(a)*15*i, height/2+sin(a)*15*i, w-i*s, h-i*s);
  }
  
  //saveFrame("peitin.jpg");
  a+=HALF_PI/40;
}
float a = 0.01;

void setup(){
 size(775*2, 401*2);
 background(242);
 frameRate(10);
}

void draw(){
 background(242);
 noiseSeed((long)random(10));
  for(int x=0; x<width; x++){
    for(int y=0; y<height; y++){
      strokeWeight(0.51);
      //stroke(random(255),random(255),random(255));
      point(noise(x)*width+sin(x)*100,noise(y)*height+tan(y)*100);
    }
  }
  println("gen"+frameCount);
  saveFrame("gen###.tiff");
  saveFrame("gen###.png");
  
  if (frameCount==5){
    exit();
  }
}


String getTime() {
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  int s = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  return d+"-"+m+"-"+y+"--"+h+"-"+min+"-"+s;
}


void keyPressed() {
  switch(key) {
  case 'p':
    println("Frame saved: "+getTime()+".tiff");
    saveFrame(getTime()+".tiff");
    break;
  }
}

import processing.pdf.*;
void setup() {
  size(842, 1191);
  background(222);
  beginRecord(PDF, "Line01.pdf");
  int inc=0;
  int strokeP = 100;
  int stropeL = 170;
  float leftX=width/2;
  float rightX=width/2;

  for (float y=0; y<height; y+=0.0005) {
    stroke(strokeP);
    if (y<height/2)
      point(width/2, y);

    else {
      if (inc%2==0) { // right side
        float currentX = width/2+(y-width/2)*noise(y)*2;
        stroke(strokeP);
        point(currentX, y);
        //line(currentX,y-0.05,rightX,y);
        if (currentX>rightX && currentX-rightX>10) {
          stroke(stropeL);
          line(currentX, y, currentX, 0);
          rightX=currentX;
        }
      } else { // left side
        float currentX = width/2-(y-width/2)*noise(y)*2;
        stroke(strokeP);
        point(currentX, y);
        if (currentX<leftX && leftX-currentX>10) {
          stroke(stropeL);
          line(currentX, y, currentX, 0);
          leftX=currentX;
        }
      }
    }
    inc++;
  }
  endRecord();
  saveFrame("yeah.png");
  saveFrame("yeah.tiff");
  saveFrame("yeah.tga");
}

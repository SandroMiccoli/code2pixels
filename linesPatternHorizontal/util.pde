
color allColors [][] = {  {#00A0B0, #6A4A3C, #CC333F, #EB6841, #EDC951},
                          {#69D2E7, #A7DBD8, #E0E4CC, #F38630, #FA6900},
                          {#ECD078, #D95B43, #C02942, #542437, #53777A},
                          {#490A3D, #BD1550, #E97F02, #F8CA00, #8A9B0F},
                          {#CFF09E, #A8DBA8, #79BD9A, #3B8686, #0B486B},
                          {#EBEBAB, #78BD91, #3B9184, #9B4B54, #F22B56},
                          {#B9340B, #CEA45C, #C5BE8B, #498379, #3F261C},
                          {#F4F4F4, #9BA657, #F0E5C9, #A68C69, #594433},
                          {#F2F2F4, #76C2D9, #3D4039, #C19512, #D7A920},
                          {#4F675A, #D9D389, #F2DA92, #D96248, #BF2633},
                          {#D31900, #FF6600, #FFF2AF, #7CB490, #000000},
                          {#655643, #80BCA3, #F6F7BD, #E6AC27, #BF4D28},
                          {#560E02, #A35815, #6F7F59, #7EB3B3, #E5C65C},
                          {#280904, #680E34, #9A151A, #C21B12, #FC4B2A},
                          {#8C2318, #5E8C6A, #88A65E, #BFB35A, #F2C45A}
                       };
                       
                       
float oscilator(float amplitude, float period, float threashold) {
  return amplitude * sin(TWO_PI * (frameCount+threashold) / period);
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
    println("Frame saved: "+getTime()+".png");
    saveFrame(getTime()+".png");
    break;
  }
}
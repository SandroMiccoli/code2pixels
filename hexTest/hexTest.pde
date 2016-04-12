binToHex convert;

String data = "/Users/sandromiccoli/Dropbox/Hacklab/Processing/Sketches3/mySketches/code2pixels/hexTest/data/";
String file = "cunha.png";
int count=0;

void setup() {
  size(800, 600);

  //display output to console
  try {
    convert = new binToHex(System.out, new File(data+file));

    //write the output into a file
    //convertToHex(new PrintStream("c:/file.hex"), new File("c:/file.txt"));
  } 
  catch (IOException e) {
    println("Erro abrindo arquivo: "+e);
  }

  //println("\n"+convert.sbResult);

  String[] lines = convert.sbResult.toString().split("\\n");
  /*for (int s=0; s<lines.length; s++) {
   System.out.println("Content = " + lines[s]);
   }*/

  //colorMode(HSB, 100);
  println("LENGTH "+lines.length);
  int xStep = 1;
  for (int x=0; x<width; x+=xStep) {
    for (int y=0; y<height; y+=1) {
      count++;
      if (count < lines.length) {
        // adds FF for no trasparency
        //println(lines[count]+" color: "+"FF"+lines[count]);
        color c = unhex("FF"+lines[count]); 
        stroke(c);
        //strokeWeight(2);
        for (int newX=0; newX<xStep; newX++) {
          point(x+newX, y);
        }
      }
    }
  }
  saveFrame("hex_"+file);
  exit();
}
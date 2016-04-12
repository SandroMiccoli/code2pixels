
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;

class binToHex {

  StringBuilder sbHex = new StringBuilder();
  StringBuilder sbText = new StringBuilder();
  StringBuilder sbResult = new StringBuilder();
  
  binToHex(PrintStream out, File file) throws IOException {

    InputStream is = new FileInputStream(file);

    int bytesCounter =0;    
    int hexCounter = 1;
    int value = 0;

    while ((value = is.read()) != -1) {    
      //convert to hex value with "X" formatter
      sbHex.append(String.format("%02X", value));

      //If the chracater is not convertable, just print a dot symbol "." 
      if (!Character.isISOControl(value)) {
        sbText.append((char)value);
      } else {
        sbText.append(".");
      }


      //if 16 bytes are read, reset the counter, 
      //clear the StringBuilder for formatting purpose only.
      /*
      if (bytesCounter==23) {
       //sbResult.append(sbHex).append("      ").append(sbText).append("\n");
       sbResult.append(sbHex).append("\t "+hexCounter).append("\n");
       sbHex.setLength(0);
       sbText.setLength(0);
       bytesCounter=0;
       } else {
       bytesCounter++;
       }
       */
      if (hexCounter%3==0) {
        sbHex.append("\n");
      }
      hexCounter++;

      sbResult.append(sbHex);
      sbHex.setLength(0);
    }

    //if still got content
    /*
    if (bytesCounter!=0) {      
      //add spaces more formatting purpose only
      for (; bytesCounter<16; bytesCounter++) {
        //1 character 3 spaces
        sbHex.append("   ");
      }
      //sbResult.append(sbHex).append("      ").append(sbText).append("\n");
      sbResult.append(sbHex).append("\n");
    }
    */

    //out.print(sbResult);
    println("\nTotal hex: "+hexCounter);
    println("Total pixels (hex/3): "+hexCounter/3);
    is.close();
  }
}
import java.util.*;

public class DuplicateCharacters {

    static final int NO_OF_CHARS = 256;

    public static void main(String[] args) {

       Scanner s = new Scanner(System.in);
       System.out.println("Enter String: ");
       String str = s.nextLine();
       int count[] = new int[NO_OF_CHARS];

       for(int i=0;i<str.length();i++)
       {
          count[str.charAt(i)]++;
       }
       for (int i = 0; i < NO_OF_CHARS; i++) 
          if(count[i] > 1) 
             System.out.printf("%c", i);
      }
   }
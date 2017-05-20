package net.atos.Strings;
 
import java.util.StringTokenizer;

public class Tokenizers {
    
    public static void main(String[] args) {
	
	String holder="http://10.123.43.67:80/";
	StringTokenizer st=new StringTokenizer(holder,"//");
	
	while(st.hasMoreTokens()){
	    System.out.println(st.nextToken());
	}
	
    }

}

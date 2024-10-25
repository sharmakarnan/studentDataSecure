package resources;

import java.util.*;
import java.util.Map.Entry;
import java.io.*;   
  
public class indexingTest
{
  public static List<String> datam()
  {

     TreeMap<String, Integer> frequencyData = new TreeMap<String, Integer>( );
  
     readWordFile(frequencyData);
     printAllCounts(frequencyData);
     return maximun(frequencyData);
     
     
  }
  
 
  public static int getCount
  (String word, TreeMap<String, Integer> frequencyData)
  {
     if (frequencyData.containsKey(word))
     {  
  return frequencyData.get(word); 
     }
     else
     { 
        return 0;
     }
  }
  
 
  public static void printAllCounts(TreeMap<String, Integer> frequencyData)
  {
     System.out.println("-----------------------------------------------");
     System.out.println("ID    Frequency    Term\n-----------------------------------------------");
     
     for(String word : frequencyData.keySet( ))
     {
        System.out.printf("%15d    %s\n", frequencyData.get(word), word);
     }
  
     System.out.println("-----------------------------------------------");
     
     
  }
  
   //My own
  public static List<String> maximun(TreeMap<String, Integer> frequencyData)
  {
	  List<String> l = new ArrayList<String>();
	  Map<String,Integer> m = new HashMap<String,Integer>();
	  for(String word : frequencyData.keySet( ))
	     {
		  	if(word.length()>5) {
		  	m.put(word, frequencyData.get(word));
		  	}
		 }
	  int max=(Collections.max(m.values()));  // This will return max value in the Hashmap  
	  int max2=(Collections.max(m.values())-1);
	  int max3=(Collections.max(m.values())-2);
	  int max4=(Collections.max(m.values())-3);
	  int max5=(Collections.max(m.values())-4);
	//  System.out.println(max2);
	 // System.out.println(max3);
	  int i = 0; 
	  	 for (Entry<String, Integer> entry : m.entrySet()) {  // Itrate through hashmap
	           
	  		 if (entry.getValue()==max && i<1) {
	            	/*System.out.println(entry.getKey()); */    // Print the key with max value
	            	l.add(entry.getKey());
	            	i++;   	
	            	System.out.println(i);
	            }
	         
	        }

	  	 int j = 0;
	  	 for (Entry<String, Integer> entry : m.entrySet()) {  // Itrate through hashmap
	           
	  		 if (entry.getValue()==max2 && j<1) {
	            	/*System.out.println(entry.getKey()); */    // Print the key with max value
	            	l.add(entry.getKey());
	            	j++;   	
	            	System.out.println(j);
	            }
	         
	        }
	  	 
	  	 int k = 0;
	  	 for (Entry<String, Integer> entry : m.entrySet()) {  // Itrate through hashmap
	           
	  		 if (entry.getValue()==max3 && k<1) {
	            	/*System.out.println(entry.getKey()); */    // Print the key with max value
	            	l.add(entry.getKey());
	            	k++;   	
	            	System.out.println(k);
	            }
	         
	        }
	  	 
	  	 
	  	 
	  	// System.out.println(l);
		return l;

  }
 
   
  public static void readWordFile(TreeMap<String, Integer> frequencyData)
  {
     Scanner wordFile;
     String word;     
     Integer count;   
  

for (int x=0; x<Docs1.length; x++)
{ 
  
     try
     {
        wordFile = new Scanner(new FileReader(Docs1[x]));
     }
     catch (FileNotFoundException e)
     {
System.err.println(e);
return;
     }
  
     while (wordFile.hasNext( ))
     {

 word = wordFile.next( );
 word = word.toLowerCase();
       count = getCount(word, frequencyData) + 1;
       frequencyData.put(word, count);
     }
  
    } 
  }

   static String Docs1 [] = {"D:\\Fristproj-upd\\Fristprojupd\\WebContent\\Test\\supply.txt"};


}
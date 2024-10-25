package resources;

import java.io.File;  
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;  
import org.apache.poi.ss.usermodel.Cell;  
import org.apache.poi.ss.usermodel.Row;  
import org.apache.poi.xssf.usermodel.XSSFSheet;  
import org.apache.poi.xssf.usermodel.XSSFWorkbook;  
public class xlsxRead  
{  
public static ArrayList buff(String argu)   
{  

	ArrayList ali = new ArrayList();
	try  
{  

File file = new File(argu);   //creating a new file instance  
FileInputStream fis = new FileInputStream(file);   //obtaining bytes from the file  
//creating Workbook instance that refers to .xlsx file  
XSSFWorkbook wb = new XSSFWorkbook(fis);   
XSSFSheet sheet = wb.getSheetAt(0);     //creating a Sheet object to retrieve object  
Iterator<Row> itr = sheet.iterator();    //iterating over excel file  
while (itr.hasNext())                 
{  
Row row = itr.next();  
Iterator<Cell> cellIterator = row.cellIterator();   //iterating over each column  
while (cellIterator.hasNext())   
{  
Cell cell = cellIterator.next();  
switch (cell.getCellType())               
{  
case Cell.CELL_TYPE_STRING:    //field that represents string cell type  
//System.out.print(cell.getStringCellValue() + "\t\t\t");  
ali.add(cell.getStringCellValue());
break;  
case Cell.CELL_TYPE_NUMERIC:    //field that represents number cell type  
//System.out.print(cell.getNumericCellValue() + "\t\t\t");  
ali.add(cell.getNumericCellValue());
break;  
default:  
}  
}  
System.out.println("");  
}  
}  
catch(Exception e)  
{  
e.printStackTrace();  
}  
	return ali;
}  
}  
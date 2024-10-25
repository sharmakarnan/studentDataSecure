package resources;


import java.io.File;
import java.io.FileInputStream;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.oreilly.servlet.MultipartRequest;

import utility.DBase;


import java.security.*;


import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;



/**
 * Servlet implementation class fileupload
 */
@WebServlet("/fileupload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class fileupload extends HttpServlet {
	private static final String ALGORITHM = "AES";
    private static final String TRANSFORMATION = "AES";
    
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


	
	public static void setKey(String myKey) throws Exception
    {
    	KeyPairGenerator keyGen = KeyPairGenerator.getInstance("RSA");
        keyGen.initialize(513);
        KeyPair keypair = keyGen.genKeyPair();
        PrivateKey privateKey = keypair.getPrivate();
       PublicKey publicKey = keypair.getPublic();
       System.out.println(privateKey);
       System.out.println(publicKey);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//Integer uid=(Integer)session.getAttribute("uid");
		Integer uid = 1;
		
				String a=null,c=null,d=null,f1=null,image=null,size33=null,ss=null,fPath=null,fid=null,myimagename=null,fname=null,pkey=null,aname=null;
				/* Statement st = null; */
				String uname=null,uemail=null;
				String sss=null,mmm=null;
				ResultSet rs1=null;
				int iid=0,score=0;
				int ch,id1=0;
				String status="pending";

				FileInputStream fs=null;
				FileInputStream fileInputStream = null;
				XWPFDocument document=null;
				int m=0,x=0;
				
					
					/* session.setAttribute("fid",m); */
					
				ArrayList list = new ArrayList();
				ServletContext context = getServletContext();

				String dirName =context.getRealPath("\\Test");
				/* String dirName = "D:\\YUVA\\2020 - PROJECT\\SECOND_ENC\\Enc_Second\\WebContent\\Data"; */
				String paramname=null;
				String file=null;

				java.util.Date now = new java.util.Date();
				 String date=now.toString();
				 String DATE_FORMAT = "dd-MM-yyyy";
				 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
			     String strDateNew = sdf.format(now) ;
			     StringBuffer strContent = new StringBuffer("");
				File file1 = null;
				File fileToBeRead=null;	
				
				try {
					
					MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

					Enumeration params = multi.getParameterNames();
					while (params.hasMoreElements()) 
					{
						
						paramname = (String) params.nextElement();
						
						if(paramname.equalsIgnoreCase("fileid"))
						{
							fid=multi.getParameter(paramname);
							
						}
						if(paramname.equalsIgnoreCase("fname"))
						{
							c=multi.getParameter(paramname);
							
						}
						if(paramname.equalsIgnoreCase("fkey"))
						{
							d=multi.getParameter(paramname);
							
						}
						if(paramname.equalsIgnoreCase("file"))
						{
							image=multi.getParameter(paramname);
							
						}
						
						
					}
					    
					   
					    	
					int f = 0;
			Enumeration files = multi.getFileNames();	
			while (files.hasMoreElements()) 
			{
				paramname = (String) files.nextElement();
				if(paramname.equals("d1"))
				{
					paramname = null;
				}
				
				if(paramname != null)
				{
					f = 1;
					image = multi.getFilesystemName(paramname);
					 fPath = context.getRealPath("\\Test\\"+image);
					System.out.println("fpath=========="+fPath);
					file1 = new File(fPath);
					double size11=file1.length();
					double  size12=size11/1024;
					double size22=Math.round(size12*100.0)/100.0;
					size33=Double.toString(size22);
					myimagename=file1.getName();
					/* fname = FilenameUtils.removeExtension(myimagename); */
					fs = new FileInputStream(file1);
					list.add(fs);
					/* while ((ch = fs.read()) != -1)
					    strContent.append((char) ch); */
					
					   
				}		
			}
			        /* FileInputStream fs1 = null; */
		            //name=dirName+"\\Gallery\\"+image;
					
					/* SEPERATE DOWNLOAD FOR EXCELL AND WORD FILE */
					
					
					
					
					Connection con1=DBase.getconnection();
					PreparedStatement ps= null;
					if(myimagename.endsWith(".docx"))
					{
							fileToBeRead = new File(fPath);
							fileInputStream = new FileInputStream(fileToBeRead);
							document = new XWPFDocument(fileInputStream);
							XWPFWordExtractor extractor = new XWPFWordExtractor(document);
				  		    ss=extractor.getText();
					
				  			
				 /* 			String path = Paths.get("D:\\YUVA\\2020_PROJECT\\SECOND_ENC\\Enc_Second\\WebContent\\Test\\supply.txt").toAbsolutePath().toString(); 
							FileWriter fw=new FileWriter(path); 
				  			fw.write(ss.toString());*/
				  		    
				  			try{    
				  	           FileWriter fw=new FileWriter("G:\\Eclipse\\Fristproj\\WebContent\\Test\\supply.txt");    
				  	         fw.write("DETAILS");
							 fw.write("\n");
				  	         fw.write(ss);    
				  	         fw.write("\n");
				  	         fw.close();    
				  	          }catch(Exception e){System.out.println(e);}    
				  	          System.out.println("Successfully Written in Text File..."); 
				  		    
				  		List<String> li = indexingTest.datam();
				  		  //List<String> list = Arrays.asList("A", "B", "C");
				  		String delim = " ";

				  		StringBuilder sb = new StringBuilder();

				  		int i = 0;
				  		while (i < li.size() - 1) {
				  			sb.append(li.get(i));
				  			sb.append(delim);
				  			i++;
				  		}
				  		sb.append(li.get(i));

				  		String semantics = sb.toString();
				  	    System.out.println("SEMANTIC DATA : " + semantics.toString());
				  		    
				  		   /* String encrypt = AES.encrypt(ss, d);
				  		    
				  		    System.out.print("ENCRYPTED STRING :" +  encrypt);*/
				  		    
				  		    String trap = SHA256.getcode(semantics.toString());
				  		    
				  		    System.out.println("TRAPDOOR : " + trap);
				  		   int cou =1;
				  		    ps=con1.prepareStatement("INSERT INTO udata(id,uid,index1,Note,Fname,data1,data2,path,status,date,enc,deckey,trapdoor,count) "
				  		    						+"VALUES(?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'"+ d +"'),?,?,'"+cou+"')");
				  		
				  		 /*   ps=con1.prepareStatement("INSERT INTO udata(id,uid,index1,Note,Fname,data1,data2,path,status,date,enc,deckey,trapdoor) "
		    						+"VALUES('"+fid+"','"+uid+"','semantic','"+c+"','"+myimagename+"','"+ss+"',?,'"+fPath+"','"+status+"','"+date+"','encrypt','"+d+"','trap')");
							*/
				  		    
				  		    ps.setString(1,fid);
							ps.setInt(2,uid);
							ps.setString(3,semantics);	
							ps.setString(4,c);
							ps.setString(5,myimagename);
							ps.setString(6,ss);
						    ps.setString(8,fPath);
							ps.setString(9,status);
							ps.setString(10,date);
							ps.setString(11,ss);
							ps.setString(12,d);
							ps.setString(13,trap);
				  		    
				  		 
				  		  
				  		if(f == 0)
							ps.setObject(7,null);
						else if(f == 1)
						{
							fs = (FileInputStream)list.get(0);
							ps.setBinaryStream(7,fs,fs.available()); 
						}	
						int x1 =   ps.executeUpdate();
		
						//System.out.println("After execution");

						if(x1>0){
							response.sendRedirect("fileupload.jsp");
						}else{
							response.sendRedirect("fileupload.jsp");
						}
				  		  
				  		  
				  		  
				  		    
		/* 		  		    ps=con1.prepareStatement("insert into upload(FID,FSEARCHNAME,FILEKEY,FILE,FILES,FSIZE,DATE,FPATH,FNAME,STATUS,ONAME,OEMAIL,OID,ENC) values(?,?,?,?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'"+ d +"'))");
		 */		  		/*  ps.setString(4,ss);
				  		  	ps.setString(14,ss);  */
					}
					/* else if(myimagename.endsWith(".xlsx"))
					{
						String excel = xlsxRead.buff(fPath).toString();
						ps=con1.prepareStatement("insert into upload(FID,FSEARCHNAME,FILEKEY,FILE,FILES,FSIZE,DATE,FPATH,FNAME,STATUS,ONAME,OEMAIL,OID,ENC) values(?,?,?,?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'"+ d +"'))");
						ps.setString(4,image);
						ps.setString(14, excel);  
						
					}
					
		 	            ps.setString(1,fid);
						ps.setString(2,c);
						ps.setString(3,d);	
						ps.setString(5,image);
						ps.setString(6,size33);
						ps.setString(7,strDateNew);
						ps.setString(8,fPath);
						ps.setString(9,myimagename);
						ps.setString(10,status);
						ps.setString(11,uname);
						ps.setString(12,uemail);
					 */			
			        	
						
						} 
				catch (Exception e) {e.printStackTrace();}	
		
	}
}

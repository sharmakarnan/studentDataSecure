package resources;

import java.io.*;
import java.security.Key;
import java.util.*;
import java.sql.*;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.KeyGenerator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import utility.DBase;

/**
 * Servlet implementation class Edudata
 */
@WebServlet("/Edudata")
public class Edudata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		
		
    	try
    	{
    		Cipher cipher=Cipher.getInstance("AES");
			KeyGenerator keyGen=KeyGenerator.getInstance("AES");
			Key key=keyGen.generateKey();
			cipher.init(Cipher.ENCRYPT_MODE, key);
			//cipherIn=new CipherInputStream(new FileInputStream(new File("./image.jpg")), cipher);
			
    		String Fn = rs.getString("fn");
        	String Ln = rs.getString("ln");
        	String Adrs = rs.getString("adr");
        	String Email = rs.getString("mail");
        	String Quali = rs.getString("quali");
        	String Univ = rs.getString("uni");
        	String Grad = rs.getString("gr");
        	String Cotry = rs.getString("country");
        	String Ph = rs.getString("ph");
        	String Dbirth = rs.getString(12);
        	
    		String qry = "insert into regdetails values(Fname,Lname,Adr,mail,Quali,Uni,Grad,Contry,Mob)";
    		PreparedStatement ps = DBase.getconnection().prepareStatement(qry);
    		ps.setString(1, Fn);
    		ps.setString(2, Ln);
    		ps.setString(3, Adrs);
    		ps.setString(4, Email);
    		ps.setString(5, Quali);
    		ps.setString(6, Univ);
    		ps.setString(7, Grad);
    		ps.setString(8, Cotry);
    		ps.setString(9, Ph);
    		ps.setString(10, Dbirth);
    		int i = ps.executeUpdate();
    		if(i>0)
    		{
    			response.sendRedirect("Edudata.jsp");
    		}
    		
	    	
    	}catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	
	}
	}

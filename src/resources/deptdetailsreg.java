package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class deptdetailsreg
 */
@WebServlet("/deptdetailsreg")
public class deptdetailsreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String fname = request.getParameter("FirstName");
		String pwd =request.getParameter("Password");
		String conpass =request.getParameter("ConfirmPassword");
		String uni =request.getParameter("university");
		String clgname = request.getParameter("clgname");
		String tot = request.getParameter("tot");
		String subname = request.getParameter("subname");
		String fn =request.getParameter("FirstName");
		String ln =request.getParameter("LastName");
		String em =request.getParameter("mail");
		String ph =request.getParameter("PhoneNumber");
		String Dob =request.getParameter("dob");
		String id = null;
		try
		{
			
	
			String qry = "insert into deptdetails  values ('"+id+"','"+fname+"','"+pwd+"','"+conpass+"','"+uni+"','"+clgname+"','"+tot+"','"+subname+"','"+fn+"','"+ln+"','"+em+"','"+ph+"')";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qry);
/*			ps.setString(1,id);
			ps.setString(2,fname);
			ps.setString(3,pwd);
			ps.setString(4,conpass);
			ps.setString(5,uni);
			ps.setString(6,clgname);
			ps.setString(7,tot);
			ps.setString(8,subname);
			ps.setString(9,fn);
			ps.setString(10,ln);
			ps.setString(11,em);
			ps.setString(12,ph);*/
			
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				
				out.print("<html><body><script>alert('Register Successfull..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("depthomepg.html");
				rs.include(request, response);
				response.sendRedirect("depthomepg.html");
			}
			else
			{
				response.sendRedirect(".jsp");
				
			}                         
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

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
 * Servlet implementation class Studdetailsreg
 */
@WebServlet("/Studdetailsreg")
public class Studdetailsreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String mail = request.getParameter("mail");
		System.out.println(mail);
		String pwd =request.getParameter("Password");
		String conpass =request.getParameter("ConfirmPassword");
		String adr =request.getParameter("Message");
		String uni =request.getParameter("university");
		String quali =request.getParameter("quali");
		String gr =request.getParameter("grade");
		String fn =request.getParameter("FirstName");
		String ln =request.getParameter("LastName");
		String country =request.getParameter("Country");
		String ph =request.getParameter("PhoneNumber");
		String Dob =request.getParameter("dob");
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj1","root","root");
			
			PreparedStatement ps=con1.prepareStatement("insert into regdetails(mail,pwd,conpass,adr,uni,quali,gr,fn,ln,country,ph,Dob) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1,mail);
			ps.setString(2,pwd);
			ps.setString(3,conpass);
			ps.setString(4,adr);
			ps.setString(5,uni);
			ps.setString(6,quali);
			ps.setString(7,gr);
			ps.setString(8,fn);
			ps.setString(9,ln);
			ps.setString(10,country);
			ps.setString(11,ph);
			ps.setString(12,Dob);
			
			int i = ps.executeUpdate();
			
			if(i>0)
			{
				out.print("<html><body><script>alert('Register Successfull..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Studhomepg.html");
				rs.include(request, response);
			
				
			}
			else
			{
				out.print("<html><body><script>alert('Register Unsuccessfull..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Studhomepg.html");
				rs.include(request, response);
				response.sendRedirect("Studupload.jsp");
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

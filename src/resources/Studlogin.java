package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;


/**
 * Servlet implementation class Studlogin
 */
@WebServlet("/Studlogin")
public class Studlogin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String n=request.getParameter("Username");
		String p=request.getParameter("Password");
		
		try
		{
			String qer = "Select * from studlogreg where Emailid=? and Pass=?";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qer);
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if(rs.next())

			{
				out.print("<html><body><script>alert('Login Successfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Studhomepg.html");
				rs1.include(request, response);
				
			}
			else
			{
				out.print("<html><body><script>alert('Login Unsuccessfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Studentlogin.jsp");
				rs1.include(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}

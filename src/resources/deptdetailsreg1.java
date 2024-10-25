package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class deptdetailsreg1
 */
@WebServlet("/deptdetailsreg1")
public class deptdetailsreg1 extends HttpServlet {
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
		
		
		try {
			String qry = "insert into deptdetails  values ('"+id+"','"+fname+"','"+pwd+"','"+conpass+"','"+uni+"','"+clgname+"','"+tot+"','"+subname+"','"+fn+"','"+ln+"','"+em+"','"+ph+"')";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qry);

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
				out.print("<html><body><script>alert('Register Unsuccessfull..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("depthomepg.html");
				rs.include(request, response);
				response.sendRedirect("depthomepg.html");
				
			}      
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

package resources;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class Studreg
 */
@WebServlet("/Studreg")
public class Studreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name = request.getParameter("Firstname");
		String email = request.getParameter("Email");
		String pwd = request.getParameter("Phone");
		String ps = request.getParameter("password");
		
		
		try{
			String quer="insert into studlogreg (Name,Emailid,Ph,Pass) values(?,?,?,?)";
			PreparedStatement ps1 = DBase.getconnection().prepareStatement(quer);
			ps1.setString(1, name);
			ps1.setString(2, email);
			ps1.setString(3, pwd);
			ps1.setString(4, ps);
			
			int i = ps1.executeUpdate();
			if(i>0)
			{
				System.out.println("register check");
				out.print("<html><body><script>alert('Registered Successfully');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Studentlogin.jsp");
				rs.include(request, response);
				
			}
			else
			{
				out.print("<html><body><script>alert('Please Fill all the fields');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Stud_Login_Reg.html");
				rs.include(request, response);
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}

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
 * Servlet implementation class deptreg
 */
@WebServlet("/deptreg")
public class deptreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name = request.getParameter("Username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String cp = request.getParameter("Conpwd");
		try
		{
			String qry = "insert into deptreg (User,Emailid,Pass,Conpass) values(?,?,?,?)";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qry);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pwd);
			ps.setString(4, cp);
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				
				int i1=1;
				if(i1>0)
				{
				out.print("<html><body><script>alert('Register Successfull..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("index.html");
				rs.include(request, response);
				response.sendRedirect("Dept_Login.html");
			}
			else
			{
				response.sendRedirect("index.html");
				System.out.println("Insertion Unsuccessfull");
			}
		}
		}catch(Exception exp)
		
		{
			System.out.println(exp);
		}
	}

}

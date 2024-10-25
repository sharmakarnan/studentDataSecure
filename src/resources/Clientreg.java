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
 * Servlet implementation class Clientreg
 */
@WebServlet("/Clientreg")
public class Clientreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String n=request.getParameter("name");
		String em=request.getParameter("email");
		String ph=request.getParameter("phone");
		String pa = request.getParameter("pass");
		String conpa = request.getParameter("conpass");
		
		try{
			String qur = "insert into clientreg values(?,?,?,?,?)";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qur);
			ps.setString(1, n);
			ps.setString(2, em);
			ps.setString(3, ph);
			ps.setString(4, pa);
			ps.setString(5, conpa);
			int i = ps.executeUpdate();
			
			if(i>0)
			{
			
				out.print("<html><body><script>alert('Register Successfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Cli_Login.html");
				rs1.include(request, response);
				
			}
			
			else
				
			{
				
				out.print("<html><body><script>alert('Oops! Something went wrong..');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Cli_Login.html");
				rs1.include(request, response);
				
			}
			
		}catch(Exception exp)
		{
			System.out.println(exp);
		}
	}

}

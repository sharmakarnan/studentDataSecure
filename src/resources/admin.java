package resources;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = "admin@gmail.com";
		String pass = "admin";
		try
		{
			String em = request.getParameter("mail");
			String pa = request.getParameter("Password");
			
			if(name.equals(em) && pass.equals(pa))
			{
				out.print("<html><body><script>alert('Login Successfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Adminpage.html");
				rs1.include(request, response);
		
			}
			else
			{
				out.print("<html><body><script>alert('Oops!Something wrong...');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("index.html");
				rs1.include(request, response);
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}

	}

}

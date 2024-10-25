package resources;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;


/**
 * Servlet implementation class adminpasup
 */
@WebServlet("/adminpasup")
public class adminpasup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String str =request.getParameter("pass");
		String str2 = "Your Password is "+ str;
		
		String em = request.getParameter("mail");
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
		try
		{
			
			String qur = "update depttbl set sts='"+str2+"' where em='"+em+"'";
			int r = DBase.getconnection().prepareStatement(qur).executeUpdate();
			if(r>0)
			{
				out.print("<html><body><script>alert('Password Sended');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Adminpage.html");
				rs.include(request, response);
			}else
			{
				out.print("<html><body><script>alert('Password not Sended');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Adminpage.html");
				rs.include(request, response);
			}
		}catch(Exception e){
		
			
			e.printStackTrace();
		}
	}

}

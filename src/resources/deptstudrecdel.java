package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class deptstudrecdel
 */
@WebServlet("/deptstudrecdel")
public class deptstudrecdel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String m=request.getParameter("mail");
		
		try
		{
			String qry = "Delete from regdetails where mail='"+m+"'";
			int rs = DBase.getconnection().createStatement().executeUpdate(qry);
			if(rs<0) {
				out.print("<html><body><script>alert('Data Deleted successfully');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("deptdetailsviewtbl.jsp");
				rs1.include(request, response);
				response.sendRedirect("deptdetailsviewtbl.jsp");
			}else
				
			{
				out.print("<html><body><script>alert('Oops! Something went wrong');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("deptdetailsviewtbl.jsp");
				rs1.include(request, response);
				response.sendRedirect("depthomepg.html");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

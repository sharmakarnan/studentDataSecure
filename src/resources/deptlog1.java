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
 * Servlet implementation class deptlog1
 */
@WebServlet("/deptlog1")
public class deptlog1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String m=request.getParameter("mail");
		String p=request.getParameter("password1");
		
		try{
			String qer = "Select * from depttbl where em='"+m+"' and sts='"+p+"'";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qer);
			ps.setString(1, m);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				out.print("<html><body><script>alert('Login Successfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("depthomepg1.html");
				rs1.include(request, response);
				response.sendRedirect("DeptData.jsp");
			}
			else
			{
				out.print("<html><body><script>alert('Login Unsuccessfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Dept_Login1.html");
				rs1.include(request, response);
				response.sendRedirect("Dept_Login.html");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}

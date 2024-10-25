package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class Clijob
 */
@WebServlet("/Clijob")
public class Clijob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String ph = request.getParameter("phone");
		String cty = request.getParameter("ctry");
		String job = request.getParameter("job1");
		String ctc = request.getParameter("sel");
		
		ResultSet rs = null;
		try{
		
			
			String quer="insert into clijobdetail values(?,?,?,?,?,?)";
			PreparedStatement ps1 = DBase.getconnection().prepareStatement(quer);
			ps1.setString(1, name);
			ps1.setString(2, email);
			ps1.setString(3, ph);
			ps1.setString(4, cty);
			ps1.setString(5, job);
			ps1.setString(6, ctc);
			
			int i = ps1.executeUpdate();
			if(i>0)
			{
				System.out.println("value insert in client job details - testing");
				response.sendRedirect("clienthomepg.html");
			}
			else
			{
				response.sendRedirect("clienthomepg.html");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}
}

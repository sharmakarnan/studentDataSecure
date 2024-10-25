package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class Edureg
 */
@WebServlet("/Edureg")
public class Edureg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String nm = request.getParameter("name");
		String em = request.getParameter("email");
		String pass = request.getParameter("password");
		String conpass = request.getParameter("conpass");
		try
		{
			String qur = "insert into edureg(Name,mailid,pass,conpass) values(?,?,?,?)";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qur);
			ps.setString(1, nm);
			ps.setString(2, em);
			ps.setString(3, pass);
			ps.setString(4, conpass);
			int i = ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("index.html");
			}else
			{
				System.out.println("Insert value Correctly");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}

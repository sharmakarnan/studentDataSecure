package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DBase;

/**
 * Servlet implementation class studdatacheck
 */
@WebServlet("/studdatacheck")
public class studdatacheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String fid = request.getParameter("fileid");
		
		HttpSession ses = request.getSession();
		ses.setAttribute("fildid", fid);
		
		String qur = "Select * from udata";
		String sts1 = "accepted";
		ResultSet r;
		try {
			r = DBase.getconnection().createStatement().executeQuery(qur);
		 
		while(r.next())
		{
			String sts = r.getString(9);
			String fid1 = r.getString(1);
			
			System.out.println(sts+""+fid1);
			
			if(sts.equalsIgnoreCase(sts1) && fid1.equals(fid))
				{
					System.out.println("status check working");
					out.print("<html><body><script>alert('Your data is accepted');</script></body></html>");
					RequestDispatcher rs = request.getRequestDispatcher(".jsp");
					rs.include(request, response);
				}
			else
			{
				out.print("<html><body><script>alert('Your data is not accpeted');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("Studhomepg.html");
				rs.include(request, response);
			}}}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}



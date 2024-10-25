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
 * Servlet implementation class studreq
 */
@WebServlet("/studreq")
public class studreq extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fid =request.getParameter("fileid");
		String fname =request.getParameter("fname");
		String sts = "Requested";
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
		try
		{
			
			String qur = "update udata set status='"+sts+"' where id='"+fid+"'";
			int r = DBase.getconnection().prepareStatement(qur).executeUpdate();
			if(r>0)
			{
				out.print("<html><body><script>alert('Requested Successfully..');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("adminhomepg.html");
				rs.include(request, response);
			}else
			{
				out.print("<html><body><script>alert('Oops! Request not Sended');</script></body></html>");
				RequestDispatcher rs = request.getRequestDispatcher("adminhomepg.html");
				rs.include(request, response);
			}
		}catch(Exception e){
		
			
			e.printStackTrace();
		}
	}

}

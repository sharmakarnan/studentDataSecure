package resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DBase;

/**
 * Servlet implementation class clidatareq
 */
@WebServlet("/clidatareq")
public class clidatareq extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
		 try {
		 String qry  = "Select * from regdetails";
		 
		 java.util.Date now = new java.util.Date();
		 String date=now.toString();
		 String DATE_FORMAT = "dd-MM-yyyy";
		 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
		 String strDateNew = sdf.format(now) ;
		 ResultSet rs = null;
		 rs = DBase.getconnection().createStatement().executeQuery(qry);

			 	String fn = rs.getString(8);
			 	String ln = rs.getString(9);
			 	String mail = rs.getString(1);
			 	String ph = rs.getString(11);
			 	String qry1 = "insert into clireq values('"+fn+"','"+ln+"','"+mail+"','"+ph+"','"+strDateNew+"')";
			 	
		 PreparedStatement ps = DBase.getconnection().prepareStatement(qry1);
		 int s = ps.executeUpdate();
		 if(s>0)
		 {
			 out.print("<html><body><script>alert('Requested send to admin');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("index.html");
				rs1.include(request, response);
		 }else
		 {
			 out.print("<html><body><script>alert('Oops!Something went wrong..');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("index.html");
				rs1.include(request, response);
		 }
	}catch(Exception e)
		 {
			e.printStackTrace();
		 }

}
}
package resources;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Studfileup
 */
@WebServlet("/Studfileup")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
public class Studfileup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* Receive file uploaded to the Servlet from the HTML5 form */
	    Part filePart = request.getPart("image");
	    PrintWriter out=response.getWriter();
	    String fileName = filePart.getSubmittedFileName();
	    for (Part part : request.getParts()) {
	      part.write("D:\\Fristproj-upd\\Fristprojupd\\WebContent\\Test"+ fileName);
	    }
	    out.print("<html><body><script>alert('Data Uploded Successfully..');</script></body></html>");
	    RequestDispatcher rs = request.getRequestDispatcher("Studhomepg.html");
	    rs.include(request, response);
	}
	

}

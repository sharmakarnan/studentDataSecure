package dao;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resources.AES;
import utility.DBase;

/**
 * Servlet implementation class Donor
 */
@WebServlet("/DonorServ")
public class DonorServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doPost(HttpServletRequest r, HttpServletResponse re) throws ServletException, IOException {
   		
   		String email = r.getParameter("email");
   		String name =AES.encrypt(r.getParameter("name"), email) ; 
   		String blood = r.getParameter("blood");
   		String address = AES.encrypt(r.getParameter("address") +", " + r.getParameter("city") +", " + r.getParameter("state") +", " + r.getParameter("pincode") +", ", email) ;
   		String gender = r.getParameter("gender");
   		String age = AES.encrypt( r.getParameter("age"), email);
   		String issues = AES.encrypt( r.getParameter("issues"), email);;
   		
   		String sql = "UPDATE providers SET name='"+name+"',blood=?,address='"+address+"',gender='"+gender+"',age='"+age+"',health='"+issues+"'"
   				+ " WHERE email='"+email+"'";
		
   		try {
   			PreparedStatement ps = DBase.getconnection().prepareStatement(sql);
   					ps.setString(1,blood);
   					int i = ps.executeUpdate();
   			if(i>0) {
   				re.sendRedirect("ProviderHome.jsp?st=do");
   			}else {
   				re.sendRedirect("Donor.jsp?st=do2");
   			}
   			
   		} catch (SQLException e) {
   		
   			e.printStackTrace();
   		}

   		
   		
	}

}
